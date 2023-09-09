local setup, comment = pcall(require, "Comment")
if not setup then
    return
end
-- gcc comments one line 
-- number before comments out multiple
comment.setup()
