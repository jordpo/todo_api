defmodule TodoApi.Router do
  use TodoApi.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json-api"]
    plug JaSerializer.ContentTypeNegotiation
    plug JaSerializer.Deserializer
  end

  scope "/", TodoApi do
    pipe_through :api # Use the default browser stack

    resources "/todos", TodoController, except: [:new, :edit]
  end

  # Other scopes may use custom stacks.
  # scope "/api", TodoApi do
  #   pipe_through :api
  # end
end
