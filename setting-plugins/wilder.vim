lua << EOF

local status, wilder = pcall(require, 'wilder')
if(not status)
	then return end

wilder.setup({
	modes = { ':', '/', '?' }
})

wilder.set_option('renderer', wilder.popupmenu_renderer(
  wilder.popupmenu_palette_theme({
    -- 'single', 'double', 'rounded' or 'solid'
    -- can also be a list of 8 characters, see :h wilder#popupmenu_palette_theme() for more details
    border = 'rounded',
    max_height = '75%',      -- max height of the palette
    min_height = 0,          -- set to the same as 'max_height' for a fixed height window
    prompt_position = 'top', -- 'top' or 'bottom' to set the location of the prompt
    reverse = 0,             -- set to 1 to reverse the order of the list, use in combination with 'prompt_position'
  })
))

EOF

" Default keys
"call wilder#setup({
"     \ 'modes': [':', '/', '?'],
"     \ 'next_key': '<Tab>',
"     \ 'previous_key': '<S-Tab>',
"      \ 'accept_key': '<Down>',
"      \ 'reject_key': '<Up>',
"      \ })