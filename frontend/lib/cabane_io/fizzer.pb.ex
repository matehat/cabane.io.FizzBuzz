defmodule Cabane.Io.FizzQuery do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          number: integer
        }
  defstruct [:number]

  field :number, 1, type: :int64
end

defmodule Cabane.Io.FizzResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          isFizz: boolean
        }
  defstruct [:isFizz]

  field :isFizz, 1, type: :bool
end

defmodule Cabane.Io.Fizz.Service do
  @moduledoc false
  use GRPC.Service, name: "cabane.io.Fizz"

  rpc :Ask, Cabane.Io.FizzQuery, Cabane.Io.FizzResponse
end

defmodule Cabane.Io.Fizz.Stub do
  @moduledoc false
  use GRPC.Stub, service: Cabane.Io.Fizz.Service
end
