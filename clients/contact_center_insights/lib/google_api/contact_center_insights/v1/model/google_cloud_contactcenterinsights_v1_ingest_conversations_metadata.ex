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

defmodule GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1IngestConversationsMetadata do
  @moduledoc """
  The metadata for an IngestConversations operation.

  ## Attributes

  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The time the operation was created.
  *   `endTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The time the operation finished running.
  *   `ingestConversationsStats` (*type:* `GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1IngestConversationsMetadataIngestConversationsStats.t`, *default:* `nil`) - Output only. Statistics for IngestConversations operation.
  *   `partialErrors` (*type:* `list(GoogleApi.ContactCenterInsights.V1.Model.GoogleRpcStatus.t)`, *default:* `nil`) - Output only. Partial errors during ingest operation that might cause the operation output to be incomplete.
  *   `request` (*type:* `GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1IngestConversationsRequest.t`, *default:* `nil`) - Output only. The original request for ingest.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :createTime => DateTime.t() | nil,
          :endTime => DateTime.t() | nil,
          :ingestConversationsStats =>
            GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1IngestConversationsMetadataIngestConversationsStats.t()
            | nil,
          :partialErrors =>
            list(GoogleApi.ContactCenterInsights.V1.Model.GoogleRpcStatus.t()) | nil,
          :request =>
            GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1IngestConversationsRequest.t()
            | nil
        }

  field(:createTime, as: DateTime)
  field(:endTime, as: DateTime)

  field(:ingestConversationsStats,
    as:
      GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1IngestConversationsMetadataIngestConversationsStats
  )

  field(:partialErrors, as: GoogleApi.ContactCenterInsights.V1.Model.GoogleRpcStatus, type: :list)

  field(:request,
    as:
      GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1IngestConversationsRequest
  )
end

defimpl Poison.Decoder,
  for:
    GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1IngestConversationsMetadata do
  def decode(value, options) do
    GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1IngestConversationsMetadata.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1IngestConversationsMetadata do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
