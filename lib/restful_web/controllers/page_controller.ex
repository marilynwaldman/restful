defmodule RestfulWeb.PageController do
  use RestfulWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
