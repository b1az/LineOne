defmodule Core.ProtofileFunctions do
  @moduledoc false

  @external_resource Path.expand("../../files/vdm.proto", __DIR__)
  use Protobuf, from: Path.expand("../../files/vdm.proto", __DIR__)
  alias Core.ProtofileFunctions.Value

  def decode(:error) do
    :error
  end

  def decode({:ok, value}) do
    try do
      {:ok, Value.decode(value)}
    rescue
      error -> {:error, error}
    end
  end
end
