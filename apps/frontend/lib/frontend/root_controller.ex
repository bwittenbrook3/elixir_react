defmodule Frontend.RootController do
  use Frontend, :controller

  plug :action

  def index(conn, _params) do
    conn
    |> put_resp_header("content-type", "text/html; charset=utf-8")
    |> Plug.Conn.send_file(200, index_path())
  end

  defp index_path(),
    do: "#{:code.priv_dir(:frontend)}/static/index.html"
end
