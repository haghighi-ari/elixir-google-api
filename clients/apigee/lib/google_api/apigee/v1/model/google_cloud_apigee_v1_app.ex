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

defmodule GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1App do
  @moduledoc """


  ## Attributes

  *   `apiProducts` (*type:* `list(GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1ApiProductRef.t)`, *default:* `nil`) - List of API products associated with the app.
  *   `appGroup` (*type:* `String.t`, *default:* `nil`) - Name of the AppGroup
  *   `appId` (*type:* `String.t`, *default:* `nil`) - ID of the app.
  *   `attributes` (*type:* `list(GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1Attribute.t)`, *default:* `nil`) - List of attributes.
  *   `callbackUrl` (*type:* `String.t`, *default:* `nil`) - Callback URL used by OAuth 2.0 authorization servers to communicate authorization codes back to apps.
  *   `companyName` (*type:* `String.t`, *default:* `nil`) - Name of the company that owns the app.
  *   `createdAt` (*type:* `String.t`, *default:* `nil`) - Output only. Unix time when the app was created.
  *   `credentials` (*type:* `list(GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1Credential.t)`, *default:* `nil`) - Output only. Set of credentials for the app. Credentials are API key/secret pairs associated with API products.
  *   `developerEmail` (*type:* `String.t`, *default:* `nil`) - Email of the developer.
  *   `developerId` (*type:* `String.t`, *default:* `nil`) - ID of the developer.
  *   `keyExpiresIn` (*type:* `String.t`, *default:* `nil`) - Duration, in milliseconds, of the consumer key that will be generated for the app. The default value, -1, indicates an infinite validity period. Once set, the expiration can't be updated. json key: keyExpiresIn
  *   `lastModifiedAt` (*type:* `String.t`, *default:* `nil`) - Output only. Last modified time as milliseconds since epoch.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Name of the app.
  *   `scopes` (*type:* `list(String.t)`, *default:* `nil`) - Scopes to apply to the app. The specified scope names must already exist on the API product that you associate with the app.
  *   `status` (*type:* `String.t`, *default:* `nil`) - Status of the credential.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :apiProducts =>
            list(GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1ApiProductRef.t()) | nil,
          :appGroup => String.t() | nil,
          :appId => String.t() | nil,
          :attributes => list(GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1Attribute.t()) | nil,
          :callbackUrl => String.t() | nil,
          :companyName => String.t() | nil,
          :createdAt => String.t() | nil,
          :credentials => list(GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1Credential.t()) | nil,
          :developerEmail => String.t() | nil,
          :developerId => String.t() | nil,
          :keyExpiresIn => String.t() | nil,
          :lastModifiedAt => String.t() | nil,
          :name => String.t() | nil,
          :scopes => list(String.t()) | nil,
          :status => String.t() | nil
        }

  field(:apiProducts, as: GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1ApiProductRef, type: :list)
  field(:appGroup)
  field(:appId)
  field(:attributes, as: GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1Attribute, type: :list)
  field(:callbackUrl)
  field(:companyName)
  field(:createdAt)
  field(:credentials, as: GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1Credential, type: :list)
  field(:developerEmail)
  field(:developerId)
  field(:keyExpiresIn)
  field(:lastModifiedAt)
  field(:name)
  field(:scopes, type: :list)
  field(:status)
end

defimpl Poison.Decoder, for: GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1App do
  def decode(value, options) do
    GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1App.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1App do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
