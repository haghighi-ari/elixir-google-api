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

defmodule GoogleApi.BareMetalSolution.V2.Model.Instance do
  @moduledoc """
  A server.

  ## Attributes

  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Create a time stamp.
  *   `hyperthreadingEnabled` (*type:* `boolean()`, *default:* `nil`) - True if you enable hyperthreading for the server, otherwise false. The default value is false.
  *   `id` (*type:* `String.t`, *default:* `nil`) - Output only. An identifier for the `Instance`, generated by the backend.
  *   `interactiveSerialConsoleEnabled` (*type:* `boolean()`, *default:* `nil`) - Output only. True if the interactive serial console feature is enabled for the instance, false otherwise. The default value is false.
  *   `labels` (*type:* `map()`, *default:* `nil`) - Labels as key value pairs.
  *   `logicalInterfaces` (*type:* `list(GoogleApi.BareMetalSolution.V2.Model.GoogleCloudBaremetalsolutionV2LogicalInterface.t)`, *default:* `nil`) - List of logical interfaces for the instance. The number of logical interfaces will be the same as number of hardware bond/nic on the chosen network template. For the non-multivlan configurations (for eg, existing servers) that use existing default network template (bondaa-bondaa), both the Instance.networks field and the Instance.logical_interfaces fields will be filled to ensure backward compatibility. For the others, only Instance.logical_interfaces will be filled.
  *   `loginInfo` (*type:* `String.t`, *default:* `nil`) - Output only. Text field about info for logging in.
  *   `luns` (*type:* `list(GoogleApi.BareMetalSolution.V2.Model.Lun.t)`, *default:* `nil`) - Immutable. List of LUNs associated with this server.
  *   `machineType` (*type:* `String.t`, *default:* `nil`) - Immutable. The server type. [Available server types](https://cloud.google.com/bare-metal/docs/bms-planning#server_configurations)
  *   `name` (*type:* `String.t`, *default:* `nil`) - Immutable. The resource name of this `Instance`. Resource names are schemeless URIs that follow the conventions in https://cloud.google.com/apis/design/resource_names. Format: `projects/{project}/locations/{location}/instances/{instance}`
  *   `networkTemplate` (*type:* `String.t`, *default:* `nil`) - Instance network template name. For eg, bondaa-bondaa, bondab-nic, etc. Generally, the template name follows the syntax of "bond" or "nic".
  *   `networks` (*type:* `list(GoogleApi.BareMetalSolution.V2.Model.Network.t)`, *default:* `nil`) - Output only. List of networks associated with this server.
  *   `osImage` (*type:* `String.t`, *default:* `nil`) - The OS image currently installed on the server.
  *   `pod` (*type:* `String.t`, *default:* `nil`) - Immutable. Pod name. Pod is an independent part of infrastructure. Instance can be connected to the assets (networks, volumes) allocated in the same pod only.
  *   `state` (*type:* `String.t`, *default:* `nil`) - Output only. The state of the server.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Update a time stamp.
  *   `volumes` (*type:* `list(GoogleApi.BareMetalSolution.V2.Model.Volume.t)`, *default:* `nil`) - Input only. List of Volumes to attach to this Instance on creation. This field won't be populated in Get/List responses.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :createTime => DateTime.t() | nil,
          :hyperthreadingEnabled => boolean() | nil,
          :id => String.t() | nil,
          :interactiveSerialConsoleEnabled => boolean() | nil,
          :labels => map() | nil,
          :logicalInterfaces =>
            list(
              GoogleApi.BareMetalSolution.V2.Model.GoogleCloudBaremetalsolutionV2LogicalInterface.t()
            )
            | nil,
          :loginInfo => String.t() | nil,
          :luns => list(GoogleApi.BareMetalSolution.V2.Model.Lun.t()) | nil,
          :machineType => String.t() | nil,
          :name => String.t() | nil,
          :networkTemplate => String.t() | nil,
          :networks => list(GoogleApi.BareMetalSolution.V2.Model.Network.t()) | nil,
          :osImage => String.t() | nil,
          :pod => String.t() | nil,
          :state => String.t() | nil,
          :updateTime => DateTime.t() | nil,
          :volumes => list(GoogleApi.BareMetalSolution.V2.Model.Volume.t()) | nil
        }

  field(:createTime, as: DateTime)
  field(:hyperthreadingEnabled)
  field(:id)
  field(:interactiveSerialConsoleEnabled)
  field(:labels, type: :map)

  field(:logicalInterfaces,
    as: GoogleApi.BareMetalSolution.V2.Model.GoogleCloudBaremetalsolutionV2LogicalInterface,
    type: :list
  )

  field(:loginInfo)
  field(:luns, as: GoogleApi.BareMetalSolution.V2.Model.Lun, type: :list)
  field(:machineType)
  field(:name)
  field(:networkTemplate)
  field(:networks, as: GoogleApi.BareMetalSolution.V2.Model.Network, type: :list)
  field(:osImage)
  field(:pod)
  field(:state)
  field(:updateTime, as: DateTime)
  field(:volumes, as: GoogleApi.BareMetalSolution.V2.Model.Volume, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.BareMetalSolution.V2.Model.Instance do
  def decode(value, options) do
    GoogleApi.BareMetalSolution.V2.Model.Instance.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.BareMetalSolution.V2.Model.Instance do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
