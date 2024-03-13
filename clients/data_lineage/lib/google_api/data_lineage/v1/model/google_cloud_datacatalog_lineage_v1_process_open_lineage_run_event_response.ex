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

defmodule GoogleApi.DataLineage.V1.Model.GoogleCloudDatacatalogLineageV1ProcessOpenLineageRunEventResponse do
  @moduledoc """
  Response message for ProcessOpenLineageRunEvent.

  ## Attributes

  *   `lineageEvents` (*type:* `list(String.t)`, *default:* `nil`) - Created lineage event names. Format: `projects/{project}/locations/{location}/processes/{process}/runs/{run}/lineageEvents/{lineage_event}`.
  *   `process` (*type:* `String.t`, *default:* `nil`) - Created process name. Format: `projects/{project}/locations/{location}/processes/{process}`.
  *   `run` (*type:* `String.t`, *default:* `nil`) - Created run name. Format: `projects/{project}/locations/{location}/processes/{process}/runs/{run}`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :lineageEvents => list(String.t()) | nil,
          :process => String.t() | nil,
          :run => String.t() | nil
        }

  field(:lineageEvents, type: :list)
  field(:process)
  field(:run)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.DataLineage.V1.Model.GoogleCloudDatacatalogLineageV1ProcessOpenLineageRunEventResponse do
  def decode(value, options) do
    GoogleApi.DataLineage.V1.Model.GoogleCloudDatacatalogLineageV1ProcessOpenLineageRunEventResponse.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.DataLineage.V1.Model.GoogleCloudDatacatalogLineageV1ProcessOpenLineageRunEventResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
