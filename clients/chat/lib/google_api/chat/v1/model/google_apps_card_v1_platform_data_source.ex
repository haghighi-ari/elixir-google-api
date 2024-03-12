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

defmodule GoogleApi.Chat.V1.Model.GoogleAppsCardV1PlatformDataSource do
  @moduledoc """
  For a `SelectionInput` widget that uses a multiselect menu, a data source from Google Workspace. Used to populate items in a multiselect menu. [Google Chat apps](https://developers.google.com/workspace/chat):

  ## Attributes

  *   `commonDataSource` (*type:* `String.t`, *default:* `nil`) - A data source shared by all Google Workspace applications, such as users in a Google Workspace organization.
  *   `hostAppDataSource` (*type:* `GoogleApi.Chat.V1.Model.HostAppDataSourceMarkup.t`, *default:* `nil`) - A data source that's unique to a Google Workspace host application, such spaces in Google Chat.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :commonDataSource => String.t() | nil,
          :hostAppDataSource => GoogleApi.Chat.V1.Model.HostAppDataSourceMarkup.t() | nil
        }

  field(:commonDataSource)
  field(:hostAppDataSource, as: GoogleApi.Chat.V1.Model.HostAppDataSourceMarkup)
end

defimpl Poison.Decoder, for: GoogleApi.Chat.V1.Model.GoogleAppsCardV1PlatformDataSource do
  def decode(value, options) do
    GoogleApi.Chat.V1.Model.GoogleAppsCardV1PlatformDataSource.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Chat.V1.Model.GoogleAppsCardV1PlatformDataSource do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
