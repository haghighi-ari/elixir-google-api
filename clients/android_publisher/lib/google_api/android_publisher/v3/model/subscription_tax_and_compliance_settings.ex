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

defmodule GoogleApi.AndroidPublisher.V3.Model.SubscriptionTaxAndComplianceSettings do
  @moduledoc """
  Details about taxation, Google Play policy and legal compliance for subscription products.

  ## Attributes

  *   `eeaWithdrawalRightType` (*type:* `String.t`, *default:* `nil`) - Digital content or service classification for products distributed to users in the European Economic Area (EEA). The withdrawal regime under EEA consumer laws depends on this classification. Refer to the [Help Center article](https://support.google.com/googleplay/android-developer/answer/10463498) for more information.
  *   `isTokenizedDigitalAsset` (*type:* `boolean()`, *default:* `nil`) - Whether this subscription is declared as a product representing a tokenized digital asset.
  *   `taxRateInfoByRegionCode` (*type:* `%{optional(String.t) => GoogleApi.AndroidPublisher.V3.Model.RegionalTaxRateInfo.t}`, *default:* `nil`) - A mapping from region code to tax rate details. The keys are region codes as defined by Unicode's "CLDR".
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :eeaWithdrawalRightType => String.t() | nil,
          :isTokenizedDigitalAsset => boolean() | nil,
          :taxRateInfoByRegionCode =>
            %{optional(String.t()) => GoogleApi.AndroidPublisher.V3.Model.RegionalTaxRateInfo.t()}
            | nil
        }

  field(:eeaWithdrawalRightType)
  field(:isTokenizedDigitalAsset)

  field(:taxRateInfoByRegionCode,
    as: GoogleApi.AndroidPublisher.V3.Model.RegionalTaxRateInfo,
    type: :map
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.AndroidPublisher.V3.Model.SubscriptionTaxAndComplianceSettings do
  def decode(value, options) do
    GoogleApi.AndroidPublisher.V3.Model.SubscriptionTaxAndComplianceSettings.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.AndroidPublisher.V3.Model.SubscriptionTaxAndComplianceSettings do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
