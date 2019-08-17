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

defmodule GoogleApi.CloudBuild.V1.Model.ListBuildsResponse do
  @moduledoc """
  Response including listed builds.

  ## Attributes

  *   `builds` (*type:* `list(GoogleApi.CloudBuild.V1.Model.Build.t)`, *default:* `nil`) - Builds will be sorted by `create_time`, descending.
  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - Token to receive the next page of results.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :builds => list(GoogleApi.CloudBuild.V1.Model.Build.t()),
          :nextPageToken => String.t()
        }

  field(:builds, as: GoogleApi.CloudBuild.V1.Model.Build, type: :list)
  field(:nextPageToken)
end

defimpl Poison.Decoder, for: GoogleApi.CloudBuild.V1.Model.ListBuildsResponse do
  def decode(value, options) do
    GoogleApi.CloudBuild.V1.Model.ListBuildsResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudBuild.V1.Model.ListBuildsResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
