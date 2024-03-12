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

defmodule GoogleApi.Chat.V1.Model.GoogleAppsCardV1OpenLink do
  @moduledoc """
  Represents an `onClick` event that opens a hyperlink. [Google Workspace Add-ons and Chat apps](https://developers.google.com/workspace/extend):

  ## Attributes

  *   `onClose` (*type:* `String.t`, *default:* `nil`) - Whether the client forgets about a link after opening it, or observes it until the window closes. [Google Workspace Add-ons](https://developers.google.com/workspace/add-ons):
  *   `openAs` (*type:* `String.t`, *default:* `nil`) - How to open a link. [Google Workspace Add-ons](https://developers.google.com/workspace/add-ons):
  *   `url` (*type:* `String.t`, *default:* `nil`) - The URL to open.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :onClose => String.t() | nil,
          :openAs => String.t() | nil,
          :url => String.t() | nil
        }

  field(:onClose)
  field(:openAs)
  field(:url)
end

defimpl Poison.Decoder, for: GoogleApi.Chat.V1.Model.GoogleAppsCardV1OpenLink do
  def decode(value, options) do
    GoogleApi.Chat.V1.Model.GoogleAppsCardV1OpenLink.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Chat.V1.Model.GoogleAppsCardV1OpenLink do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
