defmodule Frontend do
  @moduledoc """
  Documentation for Frontend.
  """

  use Plug.Builder

  plug Plug.Static,
    at: "/",
    from: :frontend,
    only: ~w(images robots.txt)

  plug :not_found
end
