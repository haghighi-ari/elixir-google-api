# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the elixir code generator program.
# Do not edit the class manually.

defmodule GoogleApi.AdExchangeBuyer.V2beta1.Model.FilteredBidCreativeRow do
  @moduledoc """
  The number of filtered bids with the specified dimension values that have the
  specified creative.

  ## Attributes

  - bidCount (GoogleApi.AdExchangeBuyer.V2beta1.Model.MetricValue.t): The number of bids with the specified creative. Defaults to `nil`.
  - creativeId (String.t): The ID of the creative. Defaults to `nil`.
  - rowDimensions (GoogleApi.AdExchangeBuyer.V2beta1.Model.RowDimensions.t): The values of all dimensions associated with metric values in this row. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :bidCount => GoogleApi.AdExchangeBuyer.V2beta1.Model.MetricValue.t(),
          :creativeId => String.t(),
          :rowDimensions => GoogleApi.AdExchangeBuyer.V2beta1.Model.RowDimensions.t()
        }

  field(:bidCount, as: GoogleApi.AdExchangeBuyer.V2beta1.Model.MetricValue)
  field(:creativeId)
  field(:rowDimensions, as: GoogleApi.AdExchangeBuyer.V2beta1.Model.RowDimensions)
end

defimpl Poison.Decoder, for: GoogleApi.AdExchangeBuyer.V2beta1.Model.FilteredBidCreativeRow do
  def decode(value, options) do
    GoogleApi.AdExchangeBuyer.V2beta1.Model.FilteredBidCreativeRow.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AdExchangeBuyer.V2beta1.Model.FilteredBidCreativeRow do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
