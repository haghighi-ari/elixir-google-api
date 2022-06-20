# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This file is auto generated by the elixir code generator program.
# Do not edit this file manually.

defmodule GoogleApi.NetworkServices.V1.Model.TcpRouteRouteAction do
  @moduledoc """
  The specifications for routing traffic and applying associated policies.

  ## Attributes

  *   `destinations` (*type:* `list(GoogleApi.NetworkServices.V1.Model.TcpRouteRouteDestination.t)`, *default:* `nil`) - Optional. The destination services to which traffic should be forwarded. At least one destination service is required.
  *   `originalDestination` (*type:* `boolean()`, *default:* `nil`) - Optional. If true, Router will use the destination IP and port of the original connection as the destination of the request. Default is false.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :destinations =>
            list(GoogleApi.NetworkServices.V1.Model.TcpRouteRouteDestination.t()) | nil,
          :originalDestination => boolean() | nil
        }

  field(:destinations,
    as: GoogleApi.NetworkServices.V1.Model.TcpRouteRouteDestination,
    type: :list
  )

  field(:originalDestination)
end

defimpl Poison.Decoder, for: GoogleApi.NetworkServices.V1.Model.TcpRouteRouteAction do
  def decode(value, options) do
    GoogleApi.NetworkServices.V1.Model.TcpRouteRouteAction.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.NetworkServices.V1.Model.TcpRouteRouteAction do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
