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

defmodule GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaFirestoreSource do
  @moduledoc """
  Firestore source import data from.

  ## Attributes

  *   `collectionId` (*type:* `String.t`, *default:* `nil`) - Required. The Firestore collection to copy the data from with a length limit of 1500 characters.
  *   `databaseId` (*type:* `String.t`, *default:* `nil`) - Required. The Firestore database to copy the data from with a length limit of 256 characters.
  *   `gcsStagingDir` (*type:* `String.t`, *default:* `nil`) - Optional. Intermediate Cloud Storage directory used for the import with a length limit of 2,000 characters. Can be specified if one wants to have the Firestore export to a specific Cloud Storage directory. Please ensure that the Firestore service account has the necessary GCS Storage Admin permissions to access the specified GCS directory.
  *   `projectId` (*type:* `String.t`, *default:* `nil`) - Optional. The project ID (can be project # or ID) that the Cloud SQL source is in with a length limit of 128 characters. If not specified, inherits the project ID from the parent request.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :collectionId => String.t() | nil,
          :databaseId => String.t() | nil,
          :gcsStagingDir => String.t() | nil,
          :projectId => String.t() | nil
        }

  field(:collectionId)
  field(:databaseId)
  field(:gcsStagingDir)
  field(:projectId)
end

defimpl Poison.Decoder,
  for: GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaFirestoreSource do
  def decode(value, options) do
    GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaFirestoreSource.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaFirestoreSource do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
