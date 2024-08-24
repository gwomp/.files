local git_ref = 'v0.0.2'
local modrev = '0.0.2'
local specrev = '1'

local repo_url = 'https://github.com/ej-shafran/delog.nvim'

rockspec_format = '3.0'
package = 'delog.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'A plugin for handling debug logs for any language.',
  detailed = '',
  labels = { },
  homepage = 'https://github.com/ej-shafran/delog.nvim',
  license = 'Unlicense'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'delog.nvim-' .. '0.0.2',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { },
}
