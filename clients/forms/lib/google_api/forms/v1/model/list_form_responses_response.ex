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

defmodule GoogleApi.Forms.V1.Model.ListFormResponsesResponse do
  @moduledoc """
  Response to a ListFormResponsesRequest.

  ## Attributes

  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - If set, there are more responses. To get the next page of responses, provide this as `page_token` in a future request.
  *   `responses` (*type:* `list(GoogleApi.Forms.V1.Model.FormResponse.t)`, *default:* `nil`) - The returned form responses. Note: The `formId` field is not returned in the `FormResponse` object for list requests.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :nextPageToken => String.t() | nil,
          :responses => list(GoogleApi.Forms.V1.Model.FormResponse.t()) | nil
        }

  field(:nextPageToken)
  field(:responses, as: GoogleApi.Forms.V1.Model.FormResponse, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Forms.V1.Model.ListFormResponsesResponse do
  def decode(value, options) do
    GoogleApi.Forms.V1.Model.ListFormResponsesResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Forms.V1.Model.ListFormResponsesResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
