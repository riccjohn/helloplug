defmodule WebsiteRouter do
  use Plug.Router

  plug :match
  plug :dispatch

  forward "/users", to: UserRouter

  match _ do
    send_resp(conn, 404, "Couldn't find that page, sorry!")
  end
end
