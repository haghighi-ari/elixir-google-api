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

defmodule GoogleApi.Eventarc.V1.Model.Destination do
  @moduledoc """
  Represents a target of an invocation over HTTP.

  ## Attributes

  *   `cloudFunction` (*type:* `String.t`, *default:* `nil`) - The Cloud Function resource name. Cloud Functions V1 and V2 are supported. Format: `projects/{project}/locations/{location}/functions/{function}` This is a read-only field. Creating Cloud Functions V1/V2 triggers is only supported via the Cloud Functions product. An error will be returned if the user sets this value.
  *   `cloudRun` (*type:* `GoogleApi.Eventarc.V1.Model.CloudRun.t`, *default:* `nil`) - Cloud Run fully-managed resource that receives the events. The resource should be in the same project as the trigger.
  *   `gke` (*type:* `GoogleApi.Eventarc.V1.Model.GKE.t`, *default:* `nil`) - A GKE service capable of receiving events. The service should be running in the same project as the trigger.
  *   `httpEndpoint` (*type:* `GoogleApi.Eventarc.V1.Model.HttpEndpoint.t`, *default:* `nil`) - An HTTP endpoint destination described by an URI.
  *   `networkConfig` (*type:* `GoogleApi.Eventarc.V1.Model.NetworkConfig.t`, *default:* `nil`) - Optional. Network config is used to configure how Eventarc resolves and connect to a destination. This should only be used with HttpEndpoint destination type.
  *   `workflow` (*type:* `String.t`, *default:* `nil`) - The resource name of the Workflow whose Executions are triggered by the events. The Workflow resource should be deployed in the same project as the trigger. Format: `projects/{project}/locations/{location}/workflows/{workflow}`
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :cloudFunction => String.t() | nil,
          :cloudRun => GoogleApi.Eventarc.V1.Model.CloudRun.t() | nil,
          :gke => GoogleApi.Eventarc.V1.Model.GKE.t() | nil,
          :httpEndpoint => GoogleApi.Eventarc.V1.Model.HttpEndpoint.t() | nil,
          :networkConfig => GoogleApi.Eventarc.V1.Model.NetworkConfig.t() | nil,
          :workflow => String.t() | nil
        }

  field(:cloudFunction)
  field(:cloudRun, as: GoogleApi.Eventarc.V1.Model.CloudRun)
  field(:gke, as: GoogleApi.Eventarc.V1.Model.GKE)
  field(:httpEndpoint, as: GoogleApi.Eventarc.V1.Model.HttpEndpoint)
  field(:networkConfig, as: GoogleApi.Eventarc.V1.Model.NetworkConfig)
  field(:workflow)
end

defimpl Poison.Decoder, for: GoogleApi.Eventarc.V1.Model.Destination do
  def decode(value, options) do
    GoogleApi.Eventarc.V1.Model.Destination.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Eventarc.V1.Model.Destination do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
