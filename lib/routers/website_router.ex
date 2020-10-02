defmodule WebsiteRouter do
  def init(default_opts) do
    default_opts
  end

  def call(conn, _opts) do
    route(conn.method, conn.path_info, conn)
  end

  @user_router_options UserRouter.init([])
  def route("GET", ["users" | _path], conn) do
    UserRouter.call(conn, @user_router_options)
  end

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
