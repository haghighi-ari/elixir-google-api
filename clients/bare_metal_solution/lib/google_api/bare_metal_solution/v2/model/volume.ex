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

defmodule GoogleApi.BareMetalSolution.V2.Model.Volume do
  @moduledoc """
  A storage volume.

  ## Attributes

  *   `autoGrownSizeGib` (*type:* `String.t`, *default:* `nil`) - The size, in GiB, that this storage volume has expanded as a result of an auto grow policy. In the absence of auto-grow, the value is 0.
  *   `bootVolume` (*type:* `boolean()`, *default:* `nil`) - Output only. Whether this volume is a boot volume. A boot volume is one which contains a boot LUN.
  *   `currentSizeGib` (*type:* `String.t`, *default:* `nil`) - The current size of this storage volume, in GiB, including space reserved for snapshots. This size might be different than the requested size if the storage volume has been configured with auto grow or auto shrink.
  *   `emergencySizeGib` (*type:* `String.t`, *default:* `nil`) - Additional emergency size that was requested for this Volume, in GiB. current_size_gib includes this value.
  *   `id` (*type:* `String.t`, *default:* `nil`) - An identifier for the `Volume`, generated by the backend.
  *   `labels` (*type:* `map()`, *default:* `nil`) - Labels as key value pairs.
  *   `maxSizeGib` (*type:* `String.t`, *default:* `nil`) - Maximum size volume can be expanded to in case of evergency, in GiB.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. The resource name of this `Volume`. Resource names are schemeless URIs that follow the conventions in https://cloud.google.com/apis/design/resource_names. Format: `projects/{project}/locations/{location}/volumes/{volume}`
  *   `originallyRequestedSizeGib` (*type:* `String.t`, *default:* `nil`) - Originally requested size, in GiB.
  *   `pod` (*type:* `String.t`, *default:* `nil`) - Immutable. Pod name.
  *   `protocol` (*type:* `String.t`, *default:* `nil`) - Output only. Storage protocol for the Volume.
  *   `remainingSpaceGib` (*type:* `String.t`, *default:* `nil`) - The space remaining in the storage volume for new LUNs, in GiB, excluding space reserved for snapshots.
  *   `requestedSizeGib` (*type:* `String.t`, *default:* `nil`) - The requested size of this storage volume, in GiB.
  *   `snapshotAutoDeleteBehavior` (*type:* `String.t`, *default:* `nil`) - The behavior to use when snapshot reserved space is full.
  *   `snapshotEnabled` (*type:* `boolean()`, *default:* `nil`) - Whether snapshots are enabled.
  *   `snapshotReservationDetail` (*type:* `GoogleApi.BareMetalSolution.V2.Model.SnapshotReservationDetail.t`, *default:* `nil`) - Details about snapshot space reservation and usage on the storage volume.
  *   `snapshotSchedulePolicy` (*type:* `String.t`, *default:* `nil`) - The name of the snapshot schedule policy in use for this volume, if any.
  *   `state` (*type:* `String.t`, *default:* `nil`) - The state of this storage volume.
  *   `storageType` (*type:* `String.t`, *default:* `nil`) - The storage type for this volume.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :autoGrownSizeGib => String.t() | nil,
          :bootVolume => boolean() | nil,
          :currentSizeGib => String.t() | nil,
          :emergencySizeGib => String.t() | nil,
          :id => String.t() | nil,
          :labels => map() | nil,
          :maxSizeGib => String.t() | nil,
          :name => String.t() | nil,
          :originallyRequestedSizeGib => String.t() | nil,
          :pod => String.t() | nil,
          :protocol => String.t() | nil,
          :remainingSpaceGib => String.t() | nil,
          :requestedSizeGib => String.t() | nil,
          :snapshotAutoDeleteBehavior => String.t() | nil,
          :snapshotEnabled => boolean() | nil,
          :snapshotReservationDetail =>
            GoogleApi.BareMetalSolution.V2.Model.SnapshotReservationDetail.t() | nil,
          :snapshotSchedulePolicy => String.t() | nil,
          :state => String.t() | nil,
          :storageType => String.t() | nil
        }

  field(:autoGrownSizeGib)
  field(:bootVolume)
  field(:currentSizeGib)
  field(:emergencySizeGib)
  field(:id)
  field(:labels, type: :map)
  field(:maxSizeGib)
  field(:name)
  field(:originallyRequestedSizeGib)
  field(:pod)
  field(:protocol)
  field(:remainingSpaceGib)
  field(:requestedSizeGib)
  field(:snapshotAutoDeleteBehavior)
  field(:snapshotEnabled)

  field(:snapshotReservationDetail,
    as: GoogleApi.BareMetalSolution.V2.Model.SnapshotReservationDetail
  )

  field(:snapshotSchedulePolicy)
  field(:state)
  field(:storageType)
end

defimpl Poison.Decoder, for: GoogleApi.BareMetalSolution.V2.Model.Volume do
  def decode(value, options) do
    GoogleApi.BareMetalSolution.V2.Model.Volume.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.BareMetalSolution.V2.Model.Volume do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
