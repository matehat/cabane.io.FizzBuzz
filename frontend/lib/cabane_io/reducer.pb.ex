defmodule Cabane.Io.ReduceQuery do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          number: integer
        }
  defstruct [:number]

  field :number, 1, type: :int64
end

defmodule Cabane.Io.ReduceResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          message: String.t()
        }
  defstruct [:message]

  field :message, 1, type: :string
end

defmodule Cabane.Io.Reducer.Service do
  @moduledoc false
  use GRPC.Service, name: "cabane.io.Reducer"

  rpc :Ask, Cabane.Io.ReduceQuery, Cabane.Io.ReduceResult
end

defmodule Cabane.Io.Reducer.Stub do
  @moduledoc false
  use GRPC.Stub, service: Cabane.Io.Reducer.Service
end
