defmodule Frontend.Endpoint do
  use Phoenix.Endpoint, otp_app: :frontend

  plug Plug.RequestId
  plug Plug.Logger

  plug Plug.Static,
    at: "/", from: :frontend, gzip: false,
    only: ~w(
      css
      fonts
      index.html
      images
      js
      media
      favicon.ico
      robots.txt
      service-worker.js
    )


  plug Frontend.Router


  @doc """
  Callback invoked for dynamically configuring the endpoint.

  It receives the endpoint configuration and checks if
  configuration should be loaded from the system environment.
  """
  def init(_key, config) do
    if config[:load_from_system_env] do
      port = System.get_env("PORT") || raise "expected the PORT environment variable to be set"
      {:ok, Keyword.put(config, :http, [:inet6, port: port])}
    else
      {:ok, config}
    end
  end
end
