defmodule UserRouter do
  use Plug.Router

  plug :match
  plug :dispatch

  get "/" do
    send_resp(conn, 200, "List of users")
  end

  get "/sign_in" do
    send_resp(conn, 200, "signing in ...")
  end

  get "/:id" do
    send_resp(conn, 200, "User #{id}")
  end

  match _ do
    send_resp(conn, 404, "Couldn't find that user!")
  end
end
