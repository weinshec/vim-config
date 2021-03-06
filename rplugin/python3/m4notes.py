import glob
import os
import pynvim

@pynvim.plugin
class M4Notes(object):
    def __init__(self, vim):
        self.vim = vim
        self._path = self.vim.vars.get('m4notes_dir')
        self._extension = self.vim.vars.get('m4notes_ext', '.rst')
        self._index = "index" + self._extension

    @property
    def ext(self):
        return self._extension

    @property
    def path(self):
        return os.path.expandvars(self._path)

    @pynvim.command('M4NotesDiagnostics')
    def diagnostics(self, *args, **kwargs):
        lines = [
            "M4Notes Diagnostics Overview",
            "",
            "    path:      {}".format(self.path),
            "    extension: {}".format(self.ext),
        ]
        self.vim.command("vsplit M4Notes_Diagnostics")
        self.vim.current.buffer.append(lines)
        self.vim.current.buffer.options['buftype'] = 'nofile'
        self.vim.current.buffer.options['readonly'] = True

    @pynvim.command("M4NotesIndex")
    def index(self, *args, **kvargs):
        if self.vim.current.buffer.name == "" and self.vim.current.buffer[:] == [""]:
            self.vim.command('edit {}'.format(os.path.join(self.path, self._index)))
        else:
            self.vim.command('vsplit {}'.format(os.path.join(self.path, self._index)))
        self._buffer_local_bindings()

    @pynvim.command("M4NotesFollow")
    def follow_link(self, *args, **kwargs):
        stem = self.vim.eval("expand('<cWORD>')")

        if " " in stem or stem == "":
            self.vim.out_write("No valid link or filename under cursor\n")
            return

        buf_dir  = os.path.dirname(self.vim.current.buffer.name)
        new_path = os.path.normpath(os.path.join(buf_dir, stem + self.ext))
        rel_path = os.path.relpath(new_path, start=self.path)

        if not os.path.isfile(new_path):
            answer = self._prompt_user("[{}] not found! Create it [y/N]?".format(rel_path))
            if answer is None or answer.lower() != 'y':
                self.vim.out_write("\n")
                return
            else:
                # TODO: Handle this in an autocmd
                if not os.path.isdir(os.path.dirname(new_path)):
                    os.mkdir(os.path.dirname(new_path))
                self.vim.command("edit {}".format(new_path))
                self.vim.command("write")

        self.vim.command("edit {}".format(new_path))
        self._buffer_local_bindings()

    @pynvim.command("M4NotesMake")
    def make(self, *args, **kwargs):
        self.vim.command("lcd {}".format(os.path.join(self.path, "../")))
        self.vim.command("!make html")
        self.vim.command("lcd -")

    @pynvim.command("M4NotesShowHtml")
    def show_html(self, *args, **kwargs):
        self.vim.command("silent !$BROWSER {} &".format(
            os.path.join(self.path, "../build/html/index.html")))

    @pynvim.command("M4NotesTree", nargs="?")
    def show(self, args):
        try:
            depth = int(args[0])
        except IndexError:
            depth = 999
        except ValueError:
            depth = 999
        finally:
            if depth < 0:
                depth = (-1) * depth

        buf_dir = os.path.dirname(self.vim.current.buffer.name)
        num_sep = buf_dir.count(os.path.sep)
        self.vim.current.buffer.append("")
        for file in glob.iglob(buf_dir + '/**/*' + self.ext, recursive=True):
            num_sep_this = file.count(os.path.sep)
            if num_sep_this - num_sep - 1 <= depth:
                self.vim.current.buffer.append(
                    os.path.relpath(file, start=self.path).rstrip(self.ext))

    def _prompt_user(self, message, default=None):
        self.vim.command("call inputsave()")
        self.vim.command("let user_input = input('{} ')".format(message))
        self.vim.command("call inputrestore()")
        return self.vim.eval("user_input")

    def _buffer_local_bindings(self):
        # TODO: Handle this in an autocmd
        self.vim.command('nmap <buffer><silent> <CR> :M4NotesFollow<CR>')
