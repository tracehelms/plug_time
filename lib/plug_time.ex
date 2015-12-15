defmodule PlugTime do
  import Plug.Conn

  def init(options) do
    options
  end

  def call(conn, _opts) do
    {{year, month, day}, {hour, minute, second}} = :calendar.local_time()

    conn
    |> put_resp_content_type("application/json")
    |> send_resp(200, "'currentTime': {'#{year}-#{month}-#{day} #{hour}:#{minute}:#{second} UTC'}")
  end

end
