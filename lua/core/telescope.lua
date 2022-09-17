require('telescope').setup{
    defaults = {
        file_ignore_patterns = {'node_modules', '.git', 'vendor', 'obj', 'bin'}
    }
}
require('telescope').load_extension('file_browser')
