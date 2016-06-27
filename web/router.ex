defmodule ExStoreLocator.Router do
  use ExStoreLocator.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  scope "/" do
    get "/graphiql", Absinthe.Plug.GraphiQL, schema: ExStoreLocator.Schema
    post "/graphiql", Absinthe.Plug.GraphiQL, schema: ExStoreLocator.Schema
    forward "/graphql", Absinthe.Plug, schema: ExStoreLocator.Schema
  end
  # Other scopes may use custom stacks.
  # scope "/api", ExStoreLocator do
  #   pipe_through :api
  # end
end
