defmodule UserRouter do
  def init(default_opts) do
    default_opts
  end

  def call(conn, _opts) do
    route(conn.method, conn.path_info, conn)
  end

  def route("GET", ["users", user_id], conn) do
    # this route is for /users/<user_id>
    conn |> Plug.Conn.send_resp(200, "You requested user #{user_id}")
  end

  def route(_method, _path, conn) do
    conn |> Plug.Conn.send_resp(404, "Couldn't find that user page, sorry!")
  end
end
