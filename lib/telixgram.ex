defmodule TELIXGRAM do
	@moduledoc	"""
	Base module por Telixgram
	"""

	def sendMessage(botToken, message, chatId) do
		response = HTTPotion.post "https://api.telegram.org/bot#{botToken}/sendMessage", 
            [body: "{\"text\": \"#{message}\", \"chat_id\": #{chatId}}", headers: ["Content-Type": "application/json"]]
        
        {HTTPotion.Response.success?(response), response}
	end
end
