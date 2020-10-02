defmodule Helloplug do
  def init(default_opts) do
    IO.puts "starting up Helloplug ..."
    default_opts
  end

  # @website_router_options WebsiteRouter.init([])
  def call(conn, _opts) do
    WebsiteRouter.route(conn.method, conn.path_info, conn)
  end
end
