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

defmodule GoogleApi.NetworkServices.V1.Model.HttpRouteRequestMirrorPolicy do
  @moduledoc """
  Specifies the policy on how requests are shadowed to a separate mirrored destination service. The proxy does not wait for responses from the shadow service. Prior to sending traffic to the shadow service, the host/authority header is suffixed with -shadow.

  ## Attributes

  *   `destination` (*type:* `GoogleApi.NetworkServices.V1.Model.HttpRouteDestination.t`, *default:* `nil`) - The destination the requests will be mirrored to. The weight of the destination will be ignored.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :destination => GoogleApi.NetworkServices.V1.Model.HttpRouteDestination.t() | nil
        }

  field(:destination, as: GoogleApi.NetworkServices.V1.Model.HttpRouteDestination)
end

defimpl Poison.Decoder, for: GoogleApi.NetworkServices.V1.Model.HttpRouteRequestMirrorPolicy do
  def decode(value, options) do
    GoogleApi.NetworkServices.V1.Model.HttpRouteRequestMirrorPolicy.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.NetworkServices.V1.Model.HttpRouteRequestMirrorPolicy do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end