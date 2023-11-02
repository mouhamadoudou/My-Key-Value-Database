defmodule Trop do
  use Application

  def start(_type, _args) do
    IO.puts "stardddddddddddddddddddddddting"
    Trop_sup.start_link([])
  end
end
