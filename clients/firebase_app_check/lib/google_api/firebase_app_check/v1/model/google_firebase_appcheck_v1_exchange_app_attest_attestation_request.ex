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

defmodule GoogleApi.FirebaseAppCheck.V1.Model.GoogleFirebaseAppcheckV1ExchangeAppAttestAttestationRequest do
  @moduledoc """
  Request message for the ExchangeAppAttestAttestation method.

  ## Attributes

  *   `attestationStatement` (*type:* `String.t`, *default:* `nil`) - Required. The App Attest statement returned by the client-side App Attest API. This is a base64url encoded CBOR object in the JSON response.
  *   `challenge` (*type:* `String.t`, *default:* `nil`) - Required. A one-time challenge returned by an immediately prior call to GenerateAppAttestChallenge.
  *   `keyId` (*type:* `String.t`, *default:* `nil`) - Required. The key ID generated by App Attest for the client app.
  *   `limitedUse` (*type:* `boolean()`, *default:* `nil`) - Specifies whether this attestation is for use in a *limited use* (`true`) or *session based* (`false`) context. To enable this attestation to be used with the *replay protection* feature, set this to `true`. The default value is `false`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :attestationStatement => String.t() | nil,
          :challenge => String.t() | nil,
          :keyId => String.t() | nil,
          :limitedUse => boolean() | nil
        }

  field(:attestationStatement)
  field(:challenge)
  field(:keyId)
  field(:limitedUse)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.FirebaseAppCheck.V1.Model.GoogleFirebaseAppcheckV1ExchangeAppAttestAttestationRequest do
  def decode(value, options) do
    GoogleApi.FirebaseAppCheck.V1.Model.GoogleFirebaseAppcheckV1ExchangeAppAttestAttestationRequest.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.FirebaseAppCheck.V1.Model.GoogleFirebaseAppcheckV1ExchangeAppAttestAttestationRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
