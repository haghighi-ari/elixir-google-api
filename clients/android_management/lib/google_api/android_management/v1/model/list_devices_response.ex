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

defmodule GoogleApi.AndroidManagement.V1.Model.ListDevicesResponse do
  @moduledoc """
  Response to a request to list devices for a given enterprise.

  ## Attributes

  - devices ([Device]): The list of devices. Defaults to: `null`.
  - nextPageToken (String.t): If there are more results, a token to retrieve next page of results. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :devices => list(GoogleApi.AndroidManagement.V1.Model.Device.t()),
          :nextPageToken => any()
        }

  field(:devices, as: GoogleApi.AndroidManagement.V1.Model.Device, type: :list)
  field(:nextPageToken)
end

defimpl Poison.Decoder, for: GoogleApi.AndroidManagement.V1.Model.ListDevicesResponse do
  def decode(value, options) do
    GoogleApi.AndroidManagement.V1.Model.ListDevicesResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AndroidManagement.V1.Model.ListDevicesResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
