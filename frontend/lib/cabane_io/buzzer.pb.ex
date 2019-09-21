defmodule Cabane.Io.BuzzQuery do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          number: integer
        }
  defstruct [:number]

  field :number, 1, type: :int64
end

defmodule Cabane.Io.BuzzResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          isBuzz: boolean
        }
  defstruct [:isBuzz]

  field :isBuzz, 1, type: :bool
end

defmodule Cabane.Io.Buzz.Service do
  @moduledoc false
  use GRPC.Service, name: "cabane.io.Buzz"

  rpc :Ask, Cabane.Io.BuzzQuery, Cabane.Io.BuzzResponse
end

defmodule Cabane.Io.Buzz.Stub do
  @moduledoc false
  use GRPC.Stub, service: Cabane.Io.Buzz.Service
end
