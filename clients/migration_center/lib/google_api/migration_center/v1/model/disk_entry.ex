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

defmodule GoogleApi.MigrationCenter.V1.Model.DiskEntry do
  @moduledoc """
  Single disk entry.

  ## Attributes

  *   `capacityBytes` (*type:* `String.t`, *default:* `nil`) - Disk capacity.
  *   `diskLabel` (*type:* `String.t`, *default:* `nil`) - Disk label.
  *   `diskLabelType` (*type:* `String.t`, *default:* `nil`) - Disk label type (e.g. BIOS/GPT)
  *   `freeBytes` (*type:* `String.t`, *default:* `nil`) - Disk free space.
  *   `hwAddress` (*type:* `String.t`, *default:* `nil`) - Disk hardware address (e.g. 0:1 for SCSI).
  *   `interfaceType` (*type:* `String.t`, *default:* `nil`) - Disks interface type.
  *   `partitions` (*type:* `GoogleApi.MigrationCenter.V1.Model.DiskPartitionList.t`, *default:* `nil`) - Partition layout.
  *   `vmware` (*type:* `GoogleApi.MigrationCenter.V1.Model.VmwareDiskConfig.t`, *default:* `nil`) - VMware disk details.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :capacityBytes => String.t() | nil,
          :diskLabel => String.t() | nil,
          :diskLabelType => String.t() | nil,
          :freeBytes => String.t() | nil,
          :hwAddress => String.t() | nil,
          :interfaceType => String.t() | nil,
          :partitions => GoogleApi.MigrationCenter.V1.Model.DiskPartitionList.t() | nil,
          :vmware => GoogleApi.MigrationCenter.V1.Model.VmwareDiskConfig.t() | nil
        }

  field(:capacityBytes)
  field(:diskLabel)
  field(:diskLabelType)
  field(:freeBytes)
  field(:hwAddress)
  field(:interfaceType)
  field(:partitions, as: GoogleApi.MigrationCenter.V1.Model.DiskPartitionList)
  field(:vmware, as: GoogleApi.MigrationCenter.V1.Model.VmwareDiskConfig)
end

defimpl Poison.Decoder, for: GoogleApi.MigrationCenter.V1.Model.DiskEntry do
  def decode(value, options) do
    GoogleApi.MigrationCenter.V1.Model.DiskEntry.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.MigrationCenter.V1.Model.DiskEntry do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
