# Copyright 2017 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.AndroidManagement.V1.Model.HardwareStatus do
  @moduledoc """
  Hardware status. Temperatures may be compared to the temperature thresholds available in hardwareInfo to determine hardware health.

  ## Attributes

  - batteryTemperatures ([float()]): Current battery temperatures in Celsius for each battery on the device. Defaults to: `null`.
  - cpuTemperatures ([float()]): Current CPU temperatures in Celsius for each CPU on the device. Defaults to: `null`.
  - cpuUsages ([float()]): CPU usages in percentage for each core available on the device. Usage is 0 for each unplugged core. Empty array implies that CPU usage is not supported in the system. Defaults to: `null`.
  - createTime (DateTime.t): The time the measurements were taken. Defaults to: `null`.
  - fanSpeeds ([float()]): Fan speeds in RPM for each fan on the device. Empty array means that there are no fans or fan speed is not supported on the system. Defaults to: `null`.
  - gpuTemperatures ([float()]): Current GPU temperatures in Celsius for each GPU on the device. Defaults to: `null`.
  - skinTemperatures ([float()]): Current device skin temperatures in Celsius. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :batteryTemperatures => list(any()),
          :cpuTemperatures => list(any()),
          :cpuUsages => list(any()),
          :createTime => DateTime.t(),
          :fanSpeeds => list(any()),
          :gpuTemperatures => list(any()),
          :skinTemperatures => list(any())
        }

  field(:batteryTemperatures, type: :list)
  field(:cpuTemperatures, type: :list)
  field(:cpuUsages, type: :list)
  field(:createTime, as: DateTime)
  field(:fanSpeeds, type: :list)
  field(:gpuTemperatures, type: :list)
  field(:skinTemperatures, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.AndroidManagement.V1.Model.HardwareStatus do
  def decode(value, options) do
    GoogleApi.AndroidManagement.V1.Model.HardwareStatus.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AndroidManagement.V1.Model.HardwareStatus do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
