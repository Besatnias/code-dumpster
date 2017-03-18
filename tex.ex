defmodule Tex do
  @doc """
  Makes a post request to Telegram with the given parameters

  ## Parameters

    - method: String of method - 'sendMessage'
    - form: Map of parameters - %Params{"chat_id" => 237799109, "text" => "I can't believe you've done this"}
    - file: boolean, example: true (This decides whether the form will be encoded as multipart or x-www-form-urlencoded)

  ## Example
    
    iex> Tex.req 'sendMessage', %Params{chat_id: 237799109, text: "I can't believe you've done this"}, false
    %Response{"ok" => true, "result" => []}

  """
  def req (method, form, file) do
    cond do
      file == false ->
        {status, body} = URI.encode form
      file == true ->
        # This should recognize the file looking for photo, sticker, document, etc.,
        # and create a multipart form with it ? is it easy to iterate over map and keep the inner structure?
    end
    if status != :ok do
      throw {status, body}
    else
      token = File.read! "secrets" |> Poison.decode["telegram"]["bot"]["test"] #This should be specified on initialization, however that is done
      rq = HTTPoison
      url = "http://api.telegram.org/bot#{token}/#{method}"
      {status, result} = rq.post url, body
      if status != :ok do
        throw {status, result}
      end
    end
  end
  def test do
    form = %{
      "chat_id" => 237799109,
      "text" => "OMG a message"
    }
    req 'sendMessage', form, false
  end
end

HTTPoison.start
Tex.test
@moduledoc """

It should try to use json or x-www-form-urlencoded
unless it's a file, then multipart
so for sendPhoto, sendAudio, sendDocument, sendSticker, etc.
check type (Remember, no type checking but "if not file, multipart, else, querystring")

so Tex.req takes "file" as third argument, it should be 0 if querystring, 1 if multipart
example: req "sendPhoto", {form: values}, 1

if it is multipart, I don't know how it would be done, but I assume it would look like
{:multipart, [multipart], :body, {json????}}

multipart:

HTTPoison.start

tup = {
  :multipart,
  [
    {
      :file,
      "path/to/file",
      {
        ["form-data"],
        [name: "\"photo\"", filename: "\"/path/to/file\""]
      },
      []
    }
  ]
}
request = HTTPoison.post!(url, tup, headers, options)

"""
