defmodule Cabane.Io do
  def service_channel!(service_name) do
    {:ok, channel} = GRPC.Stub.connect(service_addr(service_name))
    channel
  end

  defp service_host(service_name) when is_binary(service_name) do
    System.get_env("#{String.upcase(service_name)}_SERVICE_HOST", "localhost")
  end

  defp service_port(service_name) when is_binary(service_name) do
    System.get_env("#{String.upcase(service_name)}_SERVICE_PORT", "50051")
  end

  defp service_addr(service_name) when is_binary(service_name) do
    "#{service_host(service_name)}:#{service_port(service_name)}"
  end

  defp service_addr(:echo) do
    service_addr("ECHO")
  end

  defp service_addr(:reducer) do
    service_addr("REDUCER")
  end
end
