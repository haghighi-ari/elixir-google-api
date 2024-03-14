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

defmodule GoogleApi.CloudIdentity.V1.Model.GoogleAppsCloudidentityDevicesV1CertificateTemplate do
  @moduledoc """
  CertificateTemplate (v3 Extension in X.509).

  ## Attributes

  *   `id` (*type:* `String.t`, *default:* `nil`) - The template id of the template. Example: "1.3.6.1.4.1.311.21.8.15608621.11768144.5720724.16068415.6889630.81.2472537.7784047".
  *   `majorVersion` (*type:* `integer()`, *default:* `nil`) - The Major version of the template. Example: 100.
  *   `minorVersion` (*type:* `integer()`, *default:* `nil`) - The minor version of the template. Example: 12.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :id => String.t() | nil,
          :majorVersion => integer() | nil,
          :minorVersion => integer() | nil
        }

  field(:id)
  field(:majorVersion)
  field(:minorVersion)
end

defimpl Poison.Decoder,
  for: GoogleApi.CloudIdentity.V1.Model.GoogleAppsCloudidentityDevicesV1CertificateTemplate do
  def decode(value, options) do
    GoogleApi.CloudIdentity.V1.Model.GoogleAppsCloudidentityDevicesV1CertificateTemplate.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.CloudIdentity.V1.Model.GoogleAppsCloudidentityDevicesV1CertificateTemplate do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
