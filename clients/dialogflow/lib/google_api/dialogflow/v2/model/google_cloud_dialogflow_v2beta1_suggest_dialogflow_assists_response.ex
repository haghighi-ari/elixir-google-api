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

defmodule GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1SuggestDialogflowAssistsResponse do
  @moduledoc """
  The response message for Participants.SuggestDialogflowAssists.

  ## Attributes

  *   `contextSize` (*type:* `integer()`, *default:* `nil`) - Number of messages prior to and including latest_message to compile the suggestion. It may be smaller than the SuggestDialogflowAssistsRequest.context_size field in the request if there aren't that many messages in the conversation.
  *   `dialogflowAssistAnswers` (*type:* `list(GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1DialogflowAssistAnswer.t)`, *default:* `nil`) - Output only. Multiple reply options provided by Dialogflow assist service. The order is based on the rank of the model prediction.
  *   `latestMessage` (*type:* `String.t`, *default:* `nil`) - The name of the latest conversation message used to suggest answer. Format: `projects//locations//conversations//messages/`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :contextSize => integer() | nil,
          :dialogflowAssistAnswers =>
            list(
              GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1DialogflowAssistAnswer.t()
            )
            | nil,
          :latestMessage => String.t() | nil
        }

  field(:contextSize)

  field(:dialogflowAssistAnswers,
    as: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1DialogflowAssistAnswer,
    type: :list
  )

  field(:latestMessage)
end

defimpl Poison.Decoder,
  for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1SuggestDialogflowAssistsResponse do
  def decode(value, options) do
    GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1SuggestDialogflowAssistsResponse.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1SuggestDialogflowAssistsResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
