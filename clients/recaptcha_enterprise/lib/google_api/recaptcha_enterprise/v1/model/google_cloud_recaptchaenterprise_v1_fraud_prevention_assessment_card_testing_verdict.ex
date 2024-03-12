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

defmodule GoogleApi.RecaptchaEnterprise.V1.Model.GoogleCloudRecaptchaenterpriseV1FraudPreventionAssessmentCardTestingVerdict do
  @moduledoc """
  Information about card testing fraud, where an adversary is testing fraudulently obtained cards or brute forcing their details.

  ## Attributes

  *   `risk` (*type:* `number()`, *default:* `nil`) - Output only. Probability of this transaction attempt being part of a card testing attack. Values are from 0.0 (lowest) to 1.0 (highest).
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :risk => number() | nil
        }

  field(:risk)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.RecaptchaEnterprise.V1.Model.GoogleCloudRecaptchaenterpriseV1FraudPreventionAssessmentCardTestingVerdict do
  def decode(value, options) do
    GoogleApi.RecaptchaEnterprise.V1.Model.GoogleCloudRecaptchaenterpriseV1FraudPreventionAssessmentCardTestingVerdict.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.RecaptchaEnterprise.V1.Model.GoogleCloudRecaptchaenterpriseV1FraudPreventionAssessmentCardTestingVerdict do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
