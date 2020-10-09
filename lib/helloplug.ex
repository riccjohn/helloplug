defmodule Helloplug do
  def init(default_opts) do
    IO.puts "starting up Helloplug ..."
    default_opts
  end

  def call(conn, _opts) do
    conn
    |> WebsiteRouter.call(WebsiteRouter.init([]))
  end
end
