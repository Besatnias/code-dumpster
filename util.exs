defmodule Util do

  def to_keyword_list(dict) do
    Enum.map(dict, fn({key, value}) -> {String.to_atom(key), value} end)
  end

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

map = %{
  "test" => "teet",
  "tututu" => "tururuuu",
  "caligueva" => %{"speeking" => "speeeeeeee"}
}

IO.inspect Util.tokey map
#=> [caligueva: [speeking: "speeeeeeee"], test: "teet", tututu: "tururuuu"]
