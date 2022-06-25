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

defmodule GoogleApi.AnalyticsData.V1beta.Model.Filter do
  @moduledoc """
  An expression to filter dimension or metric values.

  ## Attributes

  *   `betweenFilter` (*type:* `GoogleApi.AnalyticsData.V1beta.Model.BetweenFilter.t`, *default:* `nil`) - A filter for two values.
  *   `fieldName` (*type:* `String.t`, *default:* `nil`) - The dimension name or metric name. In most methods, dimensions & metrics can be used for the first time in this field. However in a RunPivotReportRequest, this field must be additionally specified by name in the RunPivotReportRequest's dimensions or metrics.
  *   `inListFilter` (*type:* `GoogleApi.AnalyticsData.V1beta.Model.InListFilter.t`, *default:* `nil`) - A filter for in list values.
  *   `numericFilter` (*type:* `GoogleApi.AnalyticsData.V1beta.Model.NumericFilter.t`, *default:* `nil`) - A filter for numeric or date values.
  *   `stringFilter` (*type:* `GoogleApi.AnalyticsData.V1beta.Model.StringFilter.t`, *default:* `nil`) - Strings related filter.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :betweenFilter => GoogleApi.AnalyticsData.V1beta.Model.BetweenFilter.t() | nil,
          :fieldName => String.t() | nil,
          :inListFilter => GoogleApi.AnalyticsData.V1beta.Model.InListFilter.t() | nil,
          :numericFilter => GoogleApi.AnalyticsData.V1beta.Model.NumericFilter.t() | nil,
          :stringFilter => GoogleApi.AnalyticsData.V1beta.Model.StringFilter.t() | nil
        }

  field(:betweenFilter, as: GoogleApi.AnalyticsData.V1beta.Model.BetweenFilter)
  field(:fieldName)
  field(:inListFilter, as: GoogleApi.AnalyticsData.V1beta.Model.InListFilter)
  field(:numericFilter, as: GoogleApi.AnalyticsData.V1beta.Model.NumericFilter)
  field(:stringFilter, as: GoogleApi.AnalyticsData.V1beta.Model.StringFilter)
end

defimpl Poison.Decoder, for: GoogleApi.AnalyticsData.V1beta.Model.Filter do
  def decode(value, options) do
    GoogleApi.AnalyticsData.V1beta.Model.Filter.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AnalyticsData.V1beta.Model.Filter do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
