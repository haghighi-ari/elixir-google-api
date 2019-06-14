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

defmodule GoogleApi.AdExchangeBuyer.V14.Model.DealServingMetadata do
  @moduledoc """


  ## Attributes

  - alcoholAdsAllowed (boolean()): True if alcohol ads are allowed for this deal (read-only). This field is only populated when querying for finalized orders using the method GetFinalizedOrderDeals Defaults to `nil`.
  - dealPauseStatus (GoogleApi.AdExchangeBuyer.V14.Model.DealServingMetadataDealPauseStatus.t): Tracks which parties (if any) have paused a deal. (readonly, except via PauseResumeOrderDeals action) Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :alcoholAdsAllowed => boolean(),
          :dealPauseStatus =>
            GoogleApi.AdExchangeBuyer.V14.Model.DealServingMetadataDealPauseStatus.t()
        }

  field(:alcoholAdsAllowed)

  field(
    :dealPauseStatus,
    as: GoogleApi.AdExchangeBuyer.V14.Model.DealServingMetadataDealPauseStatus
  )
end

defimpl Poison.Decoder, for: GoogleApi.AdExchangeBuyer.V14.Model.DealServingMetadata do
  def decode(value, options) do
    GoogleApi.AdExchangeBuyer.V14.Model.DealServingMetadata.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AdExchangeBuyer.V14.Model.DealServingMetadata do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
