defmodule Frontend.Router do
  use Frontend, :router

  pipeline :browser do
    plug :accepts, ["html"]
  end


  scope "/", Frontend do
    pipe_through :browser

    get "/*path", RootController, :index
  end
end
