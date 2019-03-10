defmodule MusicFindrWeb.HelloController do
  use MusicFindrWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
