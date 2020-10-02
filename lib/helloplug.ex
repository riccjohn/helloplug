defmodule Helloplug do
  require EEx

  def init(default_opts) do
    IO.puts "starting up Helloplug ..."
    default_opts
  end

  def call(conn, _opts) do
    WebsiteRouter.route(conn.method, conn.path_info, conn)
  end
end

defmodule WebsiteRouter do
  def route("GET", ["hello"], conn) do
    conn
    |> Plug.Conn.send_resp(200, "Hello, world!")
  end

  def route("GET", ["hello", name], conn) do
    conn
    |> Plug.Conn.send_resp(200, "Hello, #{name}!")
  end

  def route(_method, _path, conn) do
    # this route is called if no other routes match
    conn |> Plug.Conn.send_resp(404, "Couldn't find that page, sorry!")
  end
end
