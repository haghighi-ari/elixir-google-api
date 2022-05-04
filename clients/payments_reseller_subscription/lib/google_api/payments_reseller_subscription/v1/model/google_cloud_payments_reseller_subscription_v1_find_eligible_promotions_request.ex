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

defmodule GoogleApi.PaymentsResellerSubscription.V1.Model.GoogleCloudPaymentsResellerSubscriptionV1FindEligiblePromotionsRequest do
  @moduledoc """


  ## Attributes

  *   `filter` (*type:* `String.t`, *default:* `nil`) - Optional. Specifies the filters for the promotion results. The syntax defined in the EBNF grammar: https://google.aip.dev/assets/misc/ebnf-filtering.txt. An error will be thrown if any specified parameter is not supported. Currently, it can only be used by Youtube partners. Allowed parameters are: - regionCodes - zipCode - eligibilityId - applicableProducts Multiple parameters can be specified, for example: "regionCodes=US zipCode=94043 eligibilityId=2022H1Campaign", or "applicableProducts=partners/p1/products/product2"
  *   `pageSize` (*type:* `integer()`, *default:* `nil`) - Optional. The maximum number of promotions to return. The service may return fewer than this value. If unspecified, at most 50 products will be returned. The maximum value is 1000; values above 1000 will be coerced to 1000.
  *   `pageToken` (*type:* `String.t`, *default:* `nil`) - Optional. A page token, received from a previous `ListPromotions` call. Provide this to retrieve the subsequent page. When paginating, all other parameters provided to `ListPromotions` must match the call that provided the page token.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :filter => String.t() | nil,
          :pageSize => integer() | nil,
          :pageToken => String.t() | nil
        }

  field(:filter)
  field(:pageSize)
  field(:pageToken)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.PaymentsResellerSubscription.V1.Model.GoogleCloudPaymentsResellerSubscriptionV1FindEligiblePromotionsRequest do
  def decode(value, options) do
    GoogleApi.PaymentsResellerSubscription.V1.Model.GoogleCloudPaymentsResellerSubscriptionV1FindEligiblePromotionsRequest.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.PaymentsResellerSubscription.V1.Model.GoogleCloudPaymentsResellerSubscriptionV1FindEligiblePromotionsRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
