local status, chatgpt = pcall(require, "chatgpt")
if not status then
    return
end

chatgpt.setup()

vim.keymap.set('n', '<leader>gpt', [[<Cmd>ChatGPT<CR>]])
