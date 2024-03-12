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

defmodule GoogleApi.RecaptchaEnterprise.V1.Model.GoogleCloudRecaptchaenterpriseV1FraudSignals do
  @moduledoc """
  Fraud signals describing users and cards involved in the transaction.

  ## Attributes

  *   `cardSignals` (*type:* `GoogleApi.RecaptchaEnterprise.V1.Model.GoogleCloudRecaptchaenterpriseV1FraudSignalsCardSignals.t`, *default:* `nil`) - Output only. Signals describing the payment card or cards used in this transaction.
  *   `userSignals` (*type:* `GoogleApi.RecaptchaEnterprise.V1.Model.GoogleCloudRecaptchaenterpriseV1FraudSignalsUserSignals.t`, *default:* `nil`) - Output only. Signals describing the end user in this transaction.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :cardSignals =>
            GoogleApi.RecaptchaEnterprise.V1.Model.GoogleCloudRecaptchaenterpriseV1FraudSignalsCardSignals.t()
            | nil,
          :userSignals =>
            GoogleApi.RecaptchaEnterprise.V1.Model.GoogleCloudRecaptchaenterpriseV1FraudSignalsUserSignals.t()
            | nil
        }

  field(:cardSignals,
    as:
      GoogleApi.RecaptchaEnterprise.V1.Model.GoogleCloudRecaptchaenterpriseV1FraudSignalsCardSignals
  )

  field(:userSignals,
    as:
      GoogleApi.RecaptchaEnterprise.V1.Model.GoogleCloudRecaptchaenterpriseV1FraudSignalsUserSignals
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.RecaptchaEnterprise.V1.Model.GoogleCloudRecaptchaenterpriseV1FraudSignals do
  def decode(value, options) do
    GoogleApi.RecaptchaEnterprise.V1.Model.GoogleCloudRecaptchaenterpriseV1FraudSignals.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.RecaptchaEnterprise.V1.Model.GoogleCloudRecaptchaenterpriseV1FraudSignals do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
