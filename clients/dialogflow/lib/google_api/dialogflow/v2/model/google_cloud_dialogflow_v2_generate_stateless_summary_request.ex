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

defmodule GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2GenerateStatelessSummaryRequest do
  @moduledoc """
  The request message for Conversations.GenerateStatelessSummary.

  ## Attributes

  *   `conversationProfile` (*type:* `GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2ConversationProfile.t`, *default:* `nil`) - Required. A ConversationProfile containing information required for Summary generation. Required fields: {language_code, security_settings} Optional fields: {agent_assistant_config}
  *   `latestMessage` (*type:* `String.t`, *default:* `nil`) - The name of the latest conversation message used as context for generating a Summary. If empty, the latest message of the conversation will be used. The format is specific to the user and the names of the messages provided.
  *   `maxContextSize` (*type:* `integer()`, *default:* `nil`) - Max number of messages prior to and including [latest_message] to use as context when compiling the suggestion. By default 500 and at most 1000.
  *   `statelessConversation` (*type:* `GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2GenerateStatelessSummaryRequestMinimalConversation.t`, *default:* `nil`) - Required. The conversation to suggest a summary for.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :conversationProfile =>
            GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2ConversationProfile.t() | nil,
          :latestMessage => String.t() | nil,
          :maxContextSize => integer() | nil,
          :statelessConversation =>
            GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2GenerateStatelessSummaryRequestMinimalConversation.t()
            | nil
        }

  field(:conversationProfile,
    as: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2ConversationProfile
  )

  field(:latestMessage)
  field(:maxContextSize)

  field(:statelessConversation,
    as:
      GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2GenerateStatelessSummaryRequestMinimalConversation
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2GenerateStatelessSummaryRequest do
  def decode(value, options) do
    GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2GenerateStatelessSummaryRequest.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2GenerateStatelessSummaryRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
