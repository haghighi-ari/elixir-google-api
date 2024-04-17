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

defmodule GoogleApi.IAM.V1.Model.ServiceAccountKey do
  @moduledoc """
  Represents a service account key. A service account has two sets of key-pairs: user-managed, and system-managed. User-managed key-pairs can be created and deleted by users. Users are responsible for rotating these keys periodically to ensure security of their service accounts. Users retain the private key of these key-pairs, and Google retains ONLY the public key. System-managed keys are automatically rotated by Google, and are used for signing for a maximum of two weeks. The rotation process is probabilistic, and usage of the new key will gradually ramp up and down over the key's lifetime. If you cache the public key set for a service account, we recommend that you update the cache every 15 minutes. User-managed keys can be added and removed at any time, so it is important to update the cache frequently. For Google-managed keys, Google will publish a key at least 6 hours before it is first used for signing and will keep publishing it for at least 6 hours after it was last used for signing. Public keys for all service accounts are also published at the OAuth2 Service Account API.

  ## Attributes

  *   `contact` (*type:* `String.t`, *default:* `nil`) - Optional. A user provided email address as the point of contact for this service account key. Must be an email address. Limit 64 characters.
  *   `creator` (*type:* `String.t`, *default:* `nil`) - Output only. The cloud identity that created this service account key. Populated automatically when the key is created and not editable by the user.
  *   `description` (*type:* `String.t`, *default:* `nil`) - Optional. A user provided description of this service account key.
  *   `disableReason` (*type:* `String.t`, *default:* `nil`) - optional. If the key is disabled, it may have a DisableReason describing why it was disabled.
  *   `disabled` (*type:* `boolean()`, *default:* `nil`) - The key status.
  *   `extendedStatus` (*type:* `list(GoogleApi.IAM.V1.Model.ExtendedStatus.t)`, *default:* `nil`) - Extended Status provides permanent information about a service account key. For example, if this key was detected as exposed or compromised, that information will remain for the lifetime of the key in the extended_status.
  *   `keyAlgorithm` (*type:* `String.t`, *default:* `nil`) - Specifies the algorithm (and possibly key size) for the key.
  *   `keyOrigin` (*type:* `String.t`, *default:* `nil`) - The key origin.
  *   `keyType` (*type:* `String.t`, *default:* `nil`) - The key type.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The resource name of the service account key in the following format `projects/{PROJECT_ID}/serviceAccounts/{ACCOUNT}/keys/{key}`.
  *   `privateKeyData` (*type:* `String.t`, *default:* `nil`) - The private key data. Only provided in `CreateServiceAccountKey` responses. Make sure to keep the private key data secure because it allows for the assertion of the service account identity. When base64 decoded, the private key data can be used to authenticate with Google API client libraries and with gcloud auth activate-service-account.
  *   `privateKeyType` (*type:* `String.t`, *default:* `nil`) - The output format for the private key. Only provided in `CreateServiceAccountKey` responses, not in `GetServiceAccountKey` or `ListServiceAccountKey` responses. Google never exposes system-managed private keys, and never retains user-managed private keys.
  *   `publicKeyData` (*type:* `String.t`, *default:* `nil`) - The public key data. Only provided in `GetServiceAccountKey` responses.
  *   `validAfterTime` (*type:* `DateTime.t`, *default:* `nil`) - The key can be used after this timestamp.
  *   `validBeforeTime` (*type:* `DateTime.t`, *default:* `nil`) - The key can be used before this timestamp. For system-managed key pairs, this timestamp is the end time for the private key signing operation. The public key could still be used for verification for a few hours after this time.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :contact => String.t() | nil,
          :creator => String.t() | nil,
          :description => String.t() | nil,
          :disableReason => String.t() | nil,
          :disabled => boolean() | nil,
          :extendedStatus => list(GoogleApi.IAM.V1.Model.ExtendedStatus.t()) | nil,
          :keyAlgorithm => String.t() | nil,
          :keyOrigin => String.t() | nil,
          :keyType => String.t() | nil,
          :name => String.t() | nil,
          :privateKeyData => String.t() | nil,
          :privateKeyType => String.t() | nil,
          :publicKeyData => String.t() | nil,
          :validAfterTime => DateTime.t() | nil,
          :validBeforeTime => DateTime.t() | nil
        }

  field(:contact)
  field(:creator)
  field(:description)
  field(:disableReason)
  field(:disabled)
  field(:extendedStatus, as: GoogleApi.IAM.V1.Model.ExtendedStatus, type: :list)
  field(:keyAlgorithm)
  field(:keyOrigin)
  field(:keyType)
  field(:name)
  field(:privateKeyData)
  field(:privateKeyType)
  field(:publicKeyData)
  field(:validAfterTime, as: DateTime)
  field(:validBeforeTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.IAM.V1.Model.ServiceAccountKey do
  def decode(value, options) do
    GoogleApi.IAM.V1.Model.ServiceAccountKey.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.IAM.V1.Model.ServiceAccountKey do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
