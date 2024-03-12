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

defmodule GoogleApi.AnalyticsData.V1beta.Model.Metadata do
  @moduledoc """
  The dimensions, metrics and comparisons currently accepted in reporting methods.

  ## Attributes

  *   `dimensions` (*type:* `list(GoogleApi.AnalyticsData.V1beta.Model.DimensionMetadata.t)`, *default:* `nil`) - The dimension descriptions.
  *   `metrics` (*type:* `list(GoogleApi.AnalyticsData.V1beta.Model.MetricMetadata.t)`, *default:* `nil`) - The metric descriptions.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Resource name of this metadata.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :dimensions => list(GoogleApi.AnalyticsData.V1beta.Model.DimensionMetadata.t()) | nil,
          :metrics => list(GoogleApi.AnalyticsData.V1beta.Model.MetricMetadata.t()) | nil,
          :name => String.t() | nil
        }

  field(:dimensions, as: GoogleApi.AnalyticsData.V1beta.Model.DimensionMetadata, type: :list)
  field(:metrics, as: GoogleApi.AnalyticsData.V1beta.Model.MetricMetadata, type: :list)
  field(:name)
end

defimpl Poison.Decoder, for: GoogleApi.AnalyticsData.V1beta.Model.Metadata do
  def decode(value, options) do
    GoogleApi.AnalyticsData.V1beta.Model.Metadata.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AnalyticsData.V1beta.Model.Metadata do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
