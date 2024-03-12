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

defmodule GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementV1MemoryInfo do
  @moduledoc """
  Memory information of a device. * This field has both telemetry and device information: - `totalRamBytes` - Device information - `availableRamBytes` - Telemetry information - `totalMemoryEncryption` - Device information * Data for this field is controlled via policy: [ReportDeviceMemoryInfo](https://chromeenterprise.google/policies/#ReportDeviceMemoryInfo) * Data Collection Frequency: - `totalRamBytes` - Only at upload - `availableRamBytes` - Every 10 minutes - `totalMemoryEncryption` - at device startup * Default Data Reporting Frequency: - `totalRamBytes` - 3 hours - `availableRamBytes` - 3 hours - `totalMemoryEncryption` - at device startup - Policy Controlled: Yes * Cache: If the device is offline, the collected data is stored locally, and will be reported when the device is next online: only for `totalMemoryEncryption` * Reported for affiliated users only: N/A * Granular permission needed: TELEMETRY_API_MEMORY_INFO

  ## Attributes

  *   `availableRamBytes` (*type:* `String.t`, *default:* `nil`) - Output only. Amount of available RAM in bytes.
  *   `totalMemoryEncryption` (*type:* `GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementV1TotalMemoryEncryptionInfo.t`, *default:* `nil`) - Output only. Total memory encryption info for the device.
  *   `totalRamBytes` (*type:* `String.t`, *default:* `nil`) - Output only. Total RAM in bytes.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :availableRamBytes => String.t() | nil,
          :totalMemoryEncryption =>
            GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementV1TotalMemoryEncryptionInfo.t()
            | nil,
          :totalRamBytes => String.t() | nil
        }

  field(:availableRamBytes)

  field(:totalMemoryEncryption,
    as: GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementV1TotalMemoryEncryptionInfo
  )

  field(:totalRamBytes)
end

defimpl Poison.Decoder,
  for: GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementV1MemoryInfo do
  def decode(value, options) do
    GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementV1MemoryInfo.decode(value, options)
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementV1MemoryInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
