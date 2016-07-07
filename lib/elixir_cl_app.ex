defmodule ElixirClApp do
  def main(args), do: args |> parse_args |> process
  def process([]), do: IO.puts "No arguments given"
  def process(options), do: IO.puts "Hello #{options[:name]}"
  def parse_args(args) do
    {options, _, _} = OptionParser.parse(args,
      switches: [name: :string]
    )
    options
  end
end
