defmodule Util do
  def tokey(dict) do
    Enum.map(dict, fn({key, value}) ->
      if is_map value do
        {String.to_atom(key), tokey(value)}
      else
        {String.to_atom(key), value}
      end
    end)
  end
end

defmodule Tex do
  def req(method, form) do
    token = Poison.decode!(File.read! "secrets")["telegram"]["bot"]["test"]
    url = "https://api.telegram.org/bot#{token}/#{method}"
    {:ok, result} = HTTPoison.post url, form
    IO.puts Poison.encode! result
  end
  def test do
    opts = %{
      "chat_id" => 237799109,
      "text" => "OMG a message"
    }
    form = {:form, Util.tokey opts}
    req 'sendMessage', form
  end
end

HTTPoison.start
Tex.test
