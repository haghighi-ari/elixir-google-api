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

defmodule GoogleApi.IAM.V1.Model.OauthClient do
  @moduledoc """
  Represents an oauth client. Used to access Google Cloud resources on behave of a user by using OAuth2 Protocol to obtain an access token from Google Cloud Platform.

  ## Attributes

  *   `allowedGrantTypes` (*type:* `list(String.t)`, *default:* `nil`) - Required. The list of OAuth grant type is allowed for the oauth client.
  *   `allowedRedirectUris` (*type:* `list(String.t)`, *default:* `nil`) - Required. The list of redirect uris that is allowed to redirect back when authorization process is completed.
  *   `allowedScopes` (*type:* `list(String.t)`, *default:* `nil`) - Required. The list of scopes that the oauth client is allowed to request during OAuth flows. The following scopes are supported: * `https://www.googleapis.com/auth/cloud-platform`: See, edit, configure, and delete your Google Cloud data and see the email address for your Google Account. * `openid`: Associate you with your personal info on Google Cloud. * `email`: See your Google Cloud Account email address.
  *   `clientId` (*type:* `String.t`, *default:* `nil`) - Output only. The system-generated oauth client id.
  *   `clientType` (*type:* `String.t`, *default:* `nil`) - Immutable. The type of oauth client. either public or private.
  *   `description` (*type:* `String.t`, *default:* `nil`) - Optional. A user-specified description of the oauth client. Cannot exceed 256 characters.
  *   `disabled` (*type:* `boolean()`, *default:* `nil`) - Optional. Whether the oauth client is disabled. You cannot use a disabled oauth client for login.
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - Optional. A user-specified display name of the oauth client. Cannot exceed 32 characters.
  *   `expireTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Time after which the oauth client will be permanently purged and cannot be recovered.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Immutable. The resource name of the oauth client. Format:`projects/{project}/locations/{location}/oauthClients/{oauth_client}`.
  *   `state` (*type:* `String.t`, *default:* `nil`) - Output only. The state of the oauth client.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :allowedGrantTypes => list(String.t()) | nil,
          :allowedRedirectUris => list(String.t()) | nil,
          :allowedScopes => list(String.t()) | nil,
          :clientId => String.t() | nil,
          :clientType => String.t() | nil,
          :description => String.t() | nil,
          :disabled => boolean() | nil,
          :displayName => String.t() | nil,
          :expireTime => DateTime.t() | nil,
          :name => String.t() | nil,
          :state => String.t() | nil
        }

  field(:allowedGrantTypes, type: :list)
  field(:allowedRedirectUris, type: :list)
  field(:allowedScopes, type: :list)
  field(:clientId)
  field(:clientType)
  field(:description)
  field(:disabled)
  field(:displayName)
  field(:expireTime, as: DateTime)
  field(:name)
  field(:state)
end

defimpl Poison.Decoder, for: GoogleApi.IAM.V1.Model.OauthClient do
  def decode(value, options) do
    GoogleApi.IAM.V1.Model.OauthClient.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.IAM.V1.Model.OauthClient do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
