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

defmodule GoogleApi.FirebaseAppCheck.V1beta.Model.GoogleFirebaseAppcheckV1betaExchangeDeviceCheckTokenRequest do
  @moduledoc """
  Request message for the ExchangeDeviceCheckToken method.

  ## Attributes

  *   `deviceToken` (*type:* `String.t`, *default:* `nil`) - Required. The `device_token` as returned by Apple's client-side [DeviceCheck API](https://developer.apple.com/documentation/devicecheck/dcdevice). This is the base64 encoded `Data` (Swift) or `NSData` (ObjC) object.
  *   `limitedUse` (*type:* `boolean()`, *default:* `nil`) - Specifies whether this attestation is for use in a *limited use* (`true`) or *session based* (`false`) context. To enable this attestation to be used with the *replay protection* feature, set this to `true`. The default value is `false`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :deviceToken => String.t() | nil,
          :limitedUse => boolean() | nil
        }

  field(:deviceToken)
  field(:limitedUse)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.FirebaseAppCheck.V1beta.Model.GoogleFirebaseAppcheckV1betaExchangeDeviceCheckTokenRequest do
  def decode(value, options) do
    GoogleApi.FirebaseAppCheck.V1beta.Model.GoogleFirebaseAppcheckV1betaExchangeDeviceCheckTokenRequest.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.FirebaseAppCheck.V1beta.Model.GoogleFirebaseAppcheckV1betaExchangeDeviceCheckTokenRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
