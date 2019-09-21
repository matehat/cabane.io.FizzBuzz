defmodule Cabane.Io.EchoQuery do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          number: integer
        }
  defstruct [:number]

  field :number, 1, type: :int64
end

defmodule Cabane.Io.EchoResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          message: String.t()
        }
  defstruct [:message]

  field :message, 1, type: :string
end

defmodule Cabane.Io.Echo.Service do
  @moduledoc false
  use GRPC.Service, name: "cabane.io.Echo"

  rpc :Ask, Cabane.Io.EchoQuery, Cabane.Io.EchoResponse
end

defmodule Cabane.Io.Echo.Stub do
  @moduledoc false
  use GRPC.Stub, service: Cabane.Io.Echo.Service
end
