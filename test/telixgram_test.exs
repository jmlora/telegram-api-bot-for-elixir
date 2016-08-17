defmodule TELIXGRAMTest do
  use ExUnit.Case
  import TELIXGRAM

  doctest TELIXGRAM

  test "the truth" do
    botToken = Application.get_env(:telixgram, :botToken)
    message = "Some message"
    chatId = Application.get_env(:telixgram, :testChatId)
    {:true, response} = sendMessage(botToken, message, chatId)
    IO.inspect response.status_code == 200
  end
end
