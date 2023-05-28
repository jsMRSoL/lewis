local M = {}

M.setup = function()
  local cmd = vim.api.nvim_create_user_command

  cmd('CreateLayoutLatin', function()
    require('lewis.latin-dictionary').create_layout()
  end, {})

  cmd('CreateLayoutGreek', function()
    require('lewis.greek-lexicon').create_layout()
  end, {})

  cmd('GetLineLatinGCSE', function()
    require('lewis.latin-dictionary').get_line_entries({ level = 'gcse' })
  end, {})

  cmd('GetLineGreekGCSE', function()
    require('lewis.greek-lexicon').get_line_entries({ level = 'gcse' })
  end, {})

  cmd('GetLineLatinALevel', function()
    require('lewis.latin-dictionary').get_line_entries({ level = 'asvocab' })
  end, {})

  cmd('GetLineGreekALevel', function()
    require('lewis.greek-lexicon').get_line_entries({ level = 'asvocab' })
  end, {})
end

return M
