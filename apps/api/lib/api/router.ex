defmodule Api.Router do
  use Api, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api" do
    pipe_through :api


    get "/ping", Api.PingController, :ping
  end
end
