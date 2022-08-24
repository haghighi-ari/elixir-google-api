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

defmodule GoogleApi.Retail.V2.Model.GoogleCloudRetailV2Condition do
  @moduledoc """
  Metadata that is used to define a condition that triggers an action. A valid condition must specify at least one of 'query_terms' or 'products_filter'. If multiple fields are specified, the condition is met if all the fields are satisfied e.g. if a set of query terms and product_filter are set, then only items matching the product_filter for requests with a query matching the query terms wil get boosted.

  ## Attributes

  *   `activeTimeRange` (*type:* `list(GoogleApi.Retail.V2.Model.GoogleCloudRetailV2ConditionTimeRange.t)`, *default:* `nil`) - Range of time(s) specifying when Condition is active. Condition true if any time range matches.
  *   `queryTerms` (*type:* `list(GoogleApi.Retail.V2.Model.GoogleCloudRetailV2ConditionQueryTerm.t)`, *default:* `nil`) - A list (up to 10 entries) of terms to match the query on. If not specified, match all queries. If many query terms are specified, the condition is matched if any of the terms is a match (i.e. using the OR operator).
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :activeTimeRange =>
            list(GoogleApi.Retail.V2.Model.GoogleCloudRetailV2ConditionTimeRange.t()) | nil,
          :queryTerms =>
            list(GoogleApi.Retail.V2.Model.GoogleCloudRetailV2ConditionQueryTerm.t()) | nil
        }

  field(:activeTimeRange,
    as: GoogleApi.Retail.V2.Model.GoogleCloudRetailV2ConditionTimeRange,
    type: :list
  )

  field(:queryTerms,
    as: GoogleApi.Retail.V2.Model.GoogleCloudRetailV2ConditionQueryTerm,
    type: :list
  )
end

defimpl Poison.Decoder, for: GoogleApi.Retail.V2.Model.GoogleCloudRetailV2Condition do
  def decode(value, options) do
    GoogleApi.Retail.V2.Model.GoogleCloudRetailV2Condition.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Retail.V2.Model.GoogleCloudRetailV2Condition do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
