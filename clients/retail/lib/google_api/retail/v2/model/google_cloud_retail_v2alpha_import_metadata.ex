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

defmodule GoogleApi.Retail.V2.Model.GoogleCloudRetailV2alphaImportMetadata do
  @moduledoc """
  Metadata related to the progress of the Import operation. This is returned by the google.longrunning.Operation.metadata field.

  ## Attributes

  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Operation create time.
  *   `failureCount` (*type:* `String.t`, *default:* `nil`) - Count of entries that encountered errors while processing.
  *   `notificationPubsubTopic` (*type:* `String.t`, *default:* `nil`) - Pub/Sub topic for receiving notification. If this field is set, when the import is finished, a notification is sent to specified Pub/Sub topic. The message data is JSON string of a Operation. Format of the Pub/Sub topic is `projects/{project}/topics/{topic}`.
  *   `requestId` (*type:* `String.t`, *default:* `nil`) - Deprecated. This field is never set.
  *   `successCount` (*type:* `String.t`, *default:* `nil`) - Count of entries that were processed successfully.
  *   `transformedUserEventsMetadata` (*type:* `GoogleApi.Retail.V2.Model.GoogleCloudRetailV2alphaTransformedUserEventsMetadata.t`, *default:* `nil`) - Metadata related to transform user events.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Operation last update time. If the operation is done, this is also the finish time.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :createTime => DateTime.t() | nil,
          :failureCount => String.t() | nil,
          :notificationPubsubTopic => String.t() | nil,
          :requestId => String.t() | nil,
          :successCount => String.t() | nil,
          :transformedUserEventsMetadata =>
            GoogleApi.Retail.V2.Model.GoogleCloudRetailV2alphaTransformedUserEventsMetadata.t()
            | nil,
          :updateTime => DateTime.t() | nil
        }

  field(:createTime, as: DateTime)
  field(:failureCount)
  field(:notificationPubsubTopic)
  field(:requestId)
  field(:successCount)

  field(:transformedUserEventsMetadata,
    as: GoogleApi.Retail.V2.Model.GoogleCloudRetailV2alphaTransformedUserEventsMetadata
  )

  field(:updateTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.Retail.V2.Model.GoogleCloudRetailV2alphaImportMetadata do
  def decode(value, options) do
    GoogleApi.Retail.V2.Model.GoogleCloudRetailV2alphaImportMetadata.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Retail.V2.Model.GoogleCloudRetailV2alphaImportMetadata do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
