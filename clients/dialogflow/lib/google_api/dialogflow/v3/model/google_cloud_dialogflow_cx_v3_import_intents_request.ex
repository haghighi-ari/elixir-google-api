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

defmodule GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3ImportIntentsRequest do
  @moduledoc """
  The request message for Intents.ImportIntents.

  ## Attributes

  *   `intentsContent` (*type:* `GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3InlineSource.t`, *default:* `nil`) - Uncompressed byte content of intents.
  *   `intentsUri` (*type:* `String.t`, *default:* `nil`) - The [Google Cloud Storage](https://cloud.google.com/storage/docs/) URI to import intents from. The format of this URI must be `gs:///`. Dialogflow performs a read operation for the Cloud Storage object on the caller's behalf, so your request authentication must have read permissions for the object. For more information, see [Dialogflow access control](https://cloud.google.com/dialogflow/cx/docs/concept/access-control#storage).
  *   `mergeOption` (*type:* `String.t`, *default:* `nil`) - Merge option for importing intents. If not specified, `REJECT` is assumed.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :intentsContent =>
            GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3InlineSource.t() | nil,
          :intentsUri => String.t() | nil,
          :mergeOption => String.t() | nil
        }

  field(:intentsContent, as: GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3InlineSource)
  field(:intentsUri)
  field(:mergeOption)
end

defimpl Poison.Decoder,
  for: GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3ImportIntentsRequest do
  def decode(value, options) do
    GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3ImportIntentsRequest.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3ImportIntentsRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
