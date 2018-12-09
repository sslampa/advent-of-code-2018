{:ok, contents} = File.read("input.txt")

total = contents 
    |> String.split("\n", trim: true) 
    |> Enum.map(&String.to_integer/1)
    |> Enum.reduce(fn(x, acc) -> x + acc end)

IO.puts total
