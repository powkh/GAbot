install.packages("telegram.bot")
library("telegram.bot")
token <- "538087748:AAE0Bt_66YLzV6KQF4aR5Rw82oGOMlPHzhM"
gabot <- Bot(token)

upd <- gabot$get_updates(offset = 104162504+1)
update <- upd[[1]]

input <-  update$effective_message()$text
chat_id <- update$effective_chat()$id

if (input == "/start") {gabot$sendMessage(chat_id = chat_id, text = 'Hello')}
