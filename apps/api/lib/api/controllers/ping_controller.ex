defmodule Api.PingController do
  use Api, :controller

  def ping(conn, _params) do
    text conn, "pong"
  end
end
