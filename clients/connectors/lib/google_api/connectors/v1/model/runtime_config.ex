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

defmodule GoogleApi.Connectors.V1.Model.RuntimeConfig do
  @moduledoc """
  RuntimeConfig is the singleton resource of each location. It includes generic resource configs consumed by control plane and runtime plane like: pub/sub topic/subscription resource name, Cloud Storage location storing schema etc.

  ## Attributes

  *   `conndSubscription` (*type:* `String.t`, *default:* `nil`) - Output only. Pub/Sub subscription for connd to receive message. E.g. projects/{project-id}/subscriptions/{topic-id}
  *   `conndTopic` (*type:* `String.t`, *default:* `nil`) - Output only. Pub/Sub topic for connd to send message. E.g. projects/{project-id}/topics/{topic-id}
  *   `controlPlaneSubscription` (*type:* `String.t`, *default:* `nil`) - Output only. Pub/Sub subscription for control plane to receive message. E.g. projects/{project-id}/subscriptions/{topic-id}
  *   `controlPlaneTopic` (*type:* `String.t`, *default:* `nil`) - Output only. Pub/Sub topic for control plne to send message. communication. E.g. projects/{project-id}/topics/{topic-id}
  *   `locationId` (*type:* `String.t`, *default:* `nil`) - Output only. location_id of the runtime location. E.g. "us-west1".
  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. Resource name of the form: `projects/*/locations/*/runtimeConfig`
  *   `runtimeEndpoint` (*type:* `String.t`, *default:* `nil`) - Output only. The endpoint of the connectors runtime ingress.
  *   `schemaGcsBucket` (*type:* `String.t`, *default:* `nil`) - Output only. The Cloud Storage bucket that stores connector's schema reports.
  *   `serviceDirectory` (*type:* `String.t`, *default:* `nil`) - Output only. The name of the Service Directory service name.
  *   `state` (*type:* `String.t`, *default:* `nil`) - Output only. The state of the location.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :conndSubscription => String.t() | nil,
          :conndTopic => String.t() | nil,
          :controlPlaneSubscription => String.t() | nil,
          :controlPlaneTopic => String.t() | nil,
          :locationId => String.t() | nil,
          :name => String.t() | nil,
          :runtimeEndpoint => String.t() | nil,
          :schemaGcsBucket => String.t() | nil,
          :serviceDirectory => String.t() | nil,
          :state => String.t() | nil
        }

  field(:conndSubscription)
  field(:conndTopic)
  field(:controlPlaneSubscription)
  field(:controlPlaneTopic)
  field(:locationId)
  field(:name)
  field(:runtimeEndpoint)
  field(:schemaGcsBucket)
  field(:serviceDirectory)
  field(:state)
end

defimpl Poison.Decoder, for: GoogleApi.Connectors.V1.Model.RuntimeConfig do
  def decode(value, options) do
    GoogleApi.Connectors.V1.Model.RuntimeConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Connectors.V1.Model.RuntimeConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
