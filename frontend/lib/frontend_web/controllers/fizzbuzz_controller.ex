defmodule FrontendWeb.FizzbuzzController do
  use FrontendWeb, :controller

  alias Cabane.Io.{
    EchoQuery,
    EchoResponse,
    Echo,
    ReduceQuery,
    ReduceResult,
    Reducer
  }

  @spec fizzbuzz(Plug.Conn.t(), map) :: Plug.Conn.t()
  def fizzbuzz(conn, %{"number" => number}) do
    json(conn, %{response: get_fizzbuzz(number)})
  end

  defp get_fizzbuzz(number) when is_integer(number) do
    grpc_queries(number)
    |> Task.yield_many()
    |> Enum.find_value(fn
      {_, {:ok, ""}} -> false
      {_, {:ok, other}} -> other
      _ -> false
    end)
  end

  defp get_fizzbuzz(number) when is_binary(number) do
    get_fizzbuzz(String.to_integer(number))
  end

  defp grpc_queries(number) do
    [
      query_reducer(number),
      query_echo(number)
    ]
  end

  defp query_echo(number) do
    Task.async(fn ->
      request = EchoQuery.new(number: number)
      channel = Cabane.Io.service_channel!(:echo)
      {:ok, %EchoResponse{message: message}} = Echo.Stub.ask(channel, request)
      message
    end)
  end

  defp query_reducer(number) do
    Task.async(fn ->
      request = ReduceQuery.new(number: number)
      channel = Cabane.Io.service_channel!(:reducer)
      {:ok, %ReduceResult{message: message}} = Reducer.Stub.ask(channel, request)
      message
    end)
  end
end
