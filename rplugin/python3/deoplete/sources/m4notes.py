import deoplete
import glob
import os
from m4notes import M4Notes

class Source(deoplete.base.source.Base):
    def __init__(self, vim):
        super().__init__(vim)
        self.name = 'M4Notes'
        self.mark = '[note]'
        self.min_pattern_length = 0
        self.rank = 450
        self.filetypes = ['rst']

    # def get_complete_position(self, context):
    #     trigger_prefix = ":doc:`"
    #     pos = context['input'].rfind(trigger_prefix)
    #     return pos if pos < 0 else pos + len(trigger_prefix)

    def gather_candidates(self, context):
        contents = []
        path = '/home/weinshec/notes/source/'
        cur_file_dir = os.path.dirname(self.vim.buffers[context['bufnr']].name)
        for fname in glob.iglob(path + '**/*.rst', recursive=True):
            contents.append(os.path.relpath(fname, cur_file_dir)[:-4])
        return contents
