defmodule ExStoreLocator.PageController do
  use ExStoreLocator.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
