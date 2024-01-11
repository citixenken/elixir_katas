defmodule Marker do

  def add_length(str), do: str |> String.split(" ") |> Enum.map(&word_count(&1))

  defp word_count(word), do: "#{word} #{String.length(word)}"

end

# alternative solution

defmodule Marker do
  def add_length(str) do
    String.split(str, " ") |> Enum.map(&("#{&1} #{String.length(&1)}"))
  end
end
