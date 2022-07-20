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

defmodule GoogleApi.CloudFunctions.V2.Model.Source do
  @moduledoc """
  The location of the function source code.

  ## Attributes

  *   `repoSource` (*type:* `GoogleApi.CloudFunctions.V2.Model.RepoSource.t`, *default:* `nil`) - If provided, get the source from this location in a Cloud Source Repository.
  *   `storageSource` (*type:* `GoogleApi.CloudFunctions.V2.Model.StorageSource.t`, *default:* `nil`) - If provided, get the source from this location in Google Cloud Storage.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :repoSource => GoogleApi.CloudFunctions.V2.Model.RepoSource.t() | nil,
          :storageSource => GoogleApi.CloudFunctions.V2.Model.StorageSource.t() | nil
        }

  field(:repoSource, as: GoogleApi.CloudFunctions.V2.Model.RepoSource)
  field(:storageSource, as: GoogleApi.CloudFunctions.V2.Model.StorageSource)
end

defimpl Poison.Decoder, for: GoogleApi.CloudFunctions.V2.Model.Source do
  def decode(value, options) do
    GoogleApi.CloudFunctions.V2.Model.Source.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudFunctions.V2.Model.Source do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end