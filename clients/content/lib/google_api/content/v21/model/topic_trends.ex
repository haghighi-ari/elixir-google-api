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

defmodule GoogleApi.Content.V21.Model.TopicTrends do
  @moduledoc """
  Topic trends fields requested by the merchant in the query. Field values are only set if the merchant queries `TopicTrendsView`.

  ## Attributes

  *   `customerCountryCode` (*type:* `String.t`, *default:* `nil`) - Country trends are calculated for. Must be a two-letter country code (ISO 3166-1-alpha-2 code), for example, `“US”`.
  *   `date` (*type:* `GoogleApi.Content.V21.Model.Date.t`, *default:* `nil`) - Date the trend score was retrieved.
  *   `last120DaysSearchInterest` (*type:* `float()`, *default:* `nil`) - Search interest in the last 120 days, with the same normalization as search_interest. This field is only present for a past date.
  *   `last30DaysSearchInterest` (*type:* `float()`, *default:* `nil`) - Search interest in the last 30 days, with the same normalization as search_interest. This field is only present for a past date.
  *   `last7DaysSearchInterest` (*type:* `float()`, *default:* `nil`) - Search interest in the last 7 days, with the same normalization as search_interest. This field is only present for a past date.
  *   `last90DaysSearchInterest` (*type:* `float()`, *default:* `nil`) - Search interest in the last 90 days, with the same normalization as search_interest. This field is only present for a past date.
  *   `next7DaysSearchInterest` (*type:* `float()`, *default:* `nil`) - Estimated search interest in the next 7 days, with the same normalization as search_interest. This field is only present for a future date.
  *   `searchInterest` (*type:* `float()`, *default:* `nil`) - Daily search interest, normalized to the time and country to make comparisons easier, with 100 representing peak popularity (from 0 to 100) for the requested time period and location.
  *   `topic` (*type:* `String.t`, *default:* `nil`) - Google-provided topic trends are calculated for. Only top eight topics are returned. Topic is what shoppers are searching for on Google, grouped by the same concept.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :customerCountryCode => String.t() | nil,
          :date => GoogleApi.Content.V21.Model.Date.t() | nil,
          :last120DaysSearchInterest => float() | nil,
          :last30DaysSearchInterest => float() | nil,
          :last7DaysSearchInterest => float() | nil,
          :last90DaysSearchInterest => float() | nil,
          :next7DaysSearchInterest => float() | nil,
          :searchInterest => float() | nil,
          :topic => String.t() | nil
        }

  field(:customerCountryCode)
  field(:date, as: GoogleApi.Content.V21.Model.Date)
  field(:last120DaysSearchInterest)
  field(:last30DaysSearchInterest)
  field(:last7DaysSearchInterest)
  field(:last90DaysSearchInterest)
  field(:next7DaysSearchInterest)
  field(:searchInterest)
  field(:topic)
end

defimpl Poison.Decoder, for: GoogleApi.Content.V21.Model.TopicTrends do
  def decode(value, options) do
    GoogleApi.Content.V21.Model.TopicTrends.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Content.V21.Model.TopicTrends do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
