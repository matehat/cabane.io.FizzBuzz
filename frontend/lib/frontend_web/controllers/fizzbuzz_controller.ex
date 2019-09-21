defmodule FrontendWeb.FizzbuzzController do
  use FrontendWeb, :controller

  alias Cabane.Io.{EchoQuery, EchoResponse, Echo}

  def fizzbuzz(conn, %{"number" => number}) do
    json(conn, %{response: get_fizzbuzz(number)})
  end

  defp get_fizzbuzz(number) when is_integer(number) do
    channel = Cabane.Io.service_channel!(:echo)
    request = EchoQuery.new(number: number)
    {:ok, %EchoResponse{message: message}} = Echo.Stub.ask(channel, request)
    message
  end

  defp get_fizzbuzz(number) when is_binary(number) do
    get_fizzbuzz(String.to_integer(number))
  end
end
