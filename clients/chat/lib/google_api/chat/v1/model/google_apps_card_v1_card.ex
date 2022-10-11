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

defmodule GoogleApi.Chat.V1.Model.GoogleAppsCardV1Card do
  @moduledoc """
  Cards support a defined layout, interactive UI elements like buttons, and rich media like images. Use cards to present detailed information, gather information from users, and guide users to take a next step. In Google Chat, cards appear in several places: - As stand-alone messages. - Accompanying a text message, just beneath the text message. - As a [dialog](https://developers.google.com/chat/how-tos/dialogs). The following example JSON creates a "contact card" that features: - A header with the contact's name, job title, avatar picture. - A section with the contact information, including formatted text. - Buttons that users can click to share the contact or see more or less info. ![Example contact card](/chat/images/card_api_reference.png) ``` { "cardsV2": [ { "cardId": "unique-card-id", "card": { "header": { "title": "Sasha", "subtitle": "Software Engineer", "imageUrl": "https://developers.google.com/chat/images/quickstart-app-avatar.png", "imageType": "CIRCLE", "imageAltText": "Avatar for Sasha", }, "sections": [ { "header": "Contact Info", "collapsible": true, "uncollapsibleWidgetsCount": 1, "widgets": [ { "decoratedText": { "startIcon": { "knownIcon": "EMAIL", }, "text": "sasha@example.com", } }, { "decoratedText": { "startIcon": { "knownIcon": "PERSON", }, "text": "Online", }, }, { "decoratedText": { "startIcon": { "knownIcon": "PHONE", }, "text": "+1 (555) 555-1234", } }, { "buttonList": { "buttons": [ { "text": "Share", "onClick": { "openLink": { "url": "https://example.com/share", } } }, { "text": "Edit", "onClick": { "action": { "function": "goToView", "parameters": [ { "key": "viewType", "value": "EDIT", } ], } } }, ], } }, ], }, ], }, } ], } ```

  ## Attributes

  *   `cardActions` (*type:* `list(GoogleApi.Chat.V1.Model.GoogleAppsCardV1CardAction.t)`, *default:* `nil`) - The card's actions. Actions are added to the card's generated toolbar menu. Not supported by Google Chat apps. For example, the following JSON constructs a card action menu with Settings and Send Feedback options: ``` "card_actions": [ { "actionLabel": "Settings", "onClick": { "action": { "functionName": "goToView", "parameters": [ { "key": "viewType", "value": "SETTING" } ], "loadIndicator": "LoadIndicator.SPINNER" } } }, { "actionLabel": "Send Feedback", "onClick": { "openLink": { "url": "https://example.com/feedback" } } } ] ```
  *   `displayStyle` (*type:* `String.t`, *default:* `nil`) - The `peekCardHeader` display style for. Not supported by Google Chat apps.
  *   `fixedFooter` (*type:* `GoogleApi.Chat.V1.Model.GoogleAppsCardV1CardFixedFooter.t`, *default:* `nil`) - The fixed footer shown at the bottom of this card.
  *   `header` (*type:* `GoogleApi.Chat.V1.Model.GoogleAppsCardV1CardHeader.t`, *default:* `nil`) - The header of the card. A header usually contains a title and an image.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Name of the card. Used as a card identifier in card navigation.
  *   `peekCardHeader` (*type:* `GoogleApi.Chat.V1.Model.GoogleAppsCardV1CardHeader.t`, *default:* `nil`) - When displaying contextual content, the peek card header acts as a placeholder so that the user can navigate forward between the homepage cards and the contextual cards. Not supported by Google Chat apps.
  *   `sections` (*type:* `list(GoogleApi.Chat.V1.Model.GoogleAppsCardV1Section.t)`, *default:* `nil`) - Sections are separated by a line divider.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :cardActions => list(GoogleApi.Chat.V1.Model.GoogleAppsCardV1CardAction.t()) | nil,
          :displayStyle => String.t() | nil,
          :fixedFooter => GoogleApi.Chat.V1.Model.GoogleAppsCardV1CardFixedFooter.t() | nil,
          :header => GoogleApi.Chat.V1.Model.GoogleAppsCardV1CardHeader.t() | nil,
          :name => String.t() | nil,
          :peekCardHeader => GoogleApi.Chat.V1.Model.GoogleAppsCardV1CardHeader.t() | nil,
          :sections => list(GoogleApi.Chat.V1.Model.GoogleAppsCardV1Section.t()) | nil
        }

  field(:cardActions, as: GoogleApi.Chat.V1.Model.GoogleAppsCardV1CardAction, type: :list)
  field(:displayStyle)
  field(:fixedFooter, as: GoogleApi.Chat.V1.Model.GoogleAppsCardV1CardFixedFooter)
  field(:header, as: GoogleApi.Chat.V1.Model.GoogleAppsCardV1CardHeader)
  field(:name)
  field(:peekCardHeader, as: GoogleApi.Chat.V1.Model.GoogleAppsCardV1CardHeader)
  field(:sections, as: GoogleApi.Chat.V1.Model.GoogleAppsCardV1Section, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Chat.V1.Model.GoogleAppsCardV1Card do
  def decode(value, options) do
    GoogleApi.Chat.V1.Model.GoogleAppsCardV1Card.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Chat.V1.Model.GoogleAppsCardV1Card do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
