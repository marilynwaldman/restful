defmodule RestfulWeb.Router do
  use RestfulWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_live_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", RestfulWeb do
    pipe_through :browser

    get "/", PageController, :index
    live "/counter", CounterLive
  end

  # Other scopes may use custom stacks.
  # scope "/api", RestfulWeb do
  #   pipe_through :api
  # end
end
