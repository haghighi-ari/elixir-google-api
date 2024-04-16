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

defmodule GoogleApi.Chat.V1.Model.Space do
  @moduledoc """
  A space in Google Chat. Spaces are conversations between two or more users or 1:1 messages between a user and a Chat app.

  ## Attributes

  *   `adminInstalled` (*type:* `boolean()`, *default:* `nil`) - Output only. Whether the Chat app was installed by a Google Workspace administrator. Administrators can install a Chat app for their domain, organizational unit, or a group of users. Administrators can only install Chat apps for direct messaging between users and the app. To support admin install, your app must feature direct messaging.
  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Optional. Immutable. For spaces created in Chat, the time the space was created. This field is output only, except when used in import mode spaces. For import mode spaces, set this field to the historical timestamp at which the space was created in the source in order to preserve the original creation time. Only populated in the output when `spaceType` is `GROUP_CHAT` or `SPACE`.
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - The space's display name. Required when [creating a space](https://developers.google.com/workspace/chat/api/reference/rest/v1/spaces/create). If you receive the error message `ALREADY_EXISTS` when creating a space or updating the `displayName`, try a different `displayName`. An existing space within the Google Workspace organization might already use this display name. For direct messages, this field might be empty. Supports up to 128 characters.
  *   `externalUserAllowed` (*type:* `boolean()`, *default:* `nil`) - Immutable. Whether this space permits any Google Chat user as a member. Input when creating a space in a Google Workspace organization. Omit this field when creating spaces in the following conditions: * The authenticated user uses a consumer account (unmanaged user account). By default, a space created by a consumer account permits any Google Chat user. * The space is used to [import data to Google Chat] (https://developers.google.com/chat/api/guides/import-data-overview) because import mode spaces must only permit members from the same Google Workspace organization. However, as part of the [Google Workspace Developer Preview Program](https://developers.google.com/workspace/preview), import mode spaces can permit any Google Chat user so this field can then be set for import mode spaces. For existing spaces, this field is output only.
  *   `importMode` (*type:* `boolean()`, *default:* `nil`) - Optional. Whether this space is created in `Import Mode` as part of a data migration into Google Workspace. While spaces are being imported, they aren't visible to users until the import is complete.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Resource name of the space. Format: `spaces/{space}`
  *   `singleUserBotDm` (*type:* `boolean()`, *default:* `nil`) - Optional. Whether the space is a DM between a Chat app and a single human.
  *   `spaceDetails` (*type:* `GoogleApi.Chat.V1.Model.SpaceDetails.t`, *default:* `nil`) - Details about the space including description and rules.
  *   `spaceHistoryState` (*type:* `String.t`, *default:* `nil`) - The message history state for messages and threads in this space.
  *   `spaceThreadingState` (*type:* `String.t`, *default:* `nil`) - Output only. The threading state in the Chat space.
  *   `spaceType` (*type:* `String.t`, *default:* `nil`) - The type of space. Required when creating a space or updating the space type of a space. Output only for other usage.
  *   `threaded` (*type:* `boolean()`, *default:* `nil`) - Output only. Deprecated: Use `spaceThreadingState` instead. Whether messages are threaded in this space.
  *   `type` (*type:* `String.t`, *default:* `nil`) - Output only. Deprecated: Use `space_type` instead. The type of a space.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :adminInstalled => boolean() | nil,
          :createTime => DateTime.t() | nil,
          :displayName => String.t() | nil,
          :externalUserAllowed => boolean() | nil,
          :importMode => boolean() | nil,
          :name => String.t() | nil,
          :singleUserBotDm => boolean() | nil,
          :spaceDetails => GoogleApi.Chat.V1.Model.SpaceDetails.t() | nil,
          :spaceHistoryState => String.t() | nil,
          :spaceThreadingState => String.t() | nil,
          :spaceType => String.t() | nil,
          :threaded => boolean() | nil,
          :type => String.t() | nil
        }

  field(:adminInstalled)
  field(:createTime, as: DateTime)
  field(:displayName)
  field(:externalUserAllowed)
  field(:importMode)
  field(:name)
  field(:singleUserBotDm)
  field(:spaceDetails, as: GoogleApi.Chat.V1.Model.SpaceDetails)
  field(:spaceHistoryState)
  field(:spaceThreadingState)
  field(:spaceType)
  field(:threaded)
  field(:type)
end

defimpl Poison.Decoder, for: GoogleApi.Chat.V1.Model.Space do
  def decode(value, options) do
    GoogleApi.Chat.V1.Model.Space.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Chat.V1.Model.Space do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
