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

defmodule GoogleApi.FirebaseAppCheck.V1.Model.GoogleFirebaseAppcheckV1RecaptchaV3Config do
  @moduledoc """
  An app's reCAPTCHA v3 configuration object. This configuration is used by ExchangeRecaptchaV3Token to validate reCAPTCHA tokens issued to apps by reCAPTCHA v3. It also controls certain properties of the returned `AppCheckToken`, such as its ttl.

  ## Attributes

  *   `name` (*type:* `String.t`, *default:* `nil`) - Required. The relative resource name of the reCAPTCHA v3 configuration object, in the format: ``` projects/{project_number}/apps/{app_id}/recaptchaV3Config ```
  *   `siteSecret` (*type:* `String.t`, *default:* `nil`) - Required. Input only. The site secret used to identify your service for reCAPTCHA v3 verification. For security reasons, this field will never be populated in any response.
  *   `siteSecretSet` (*type:* `boolean()`, *default:* `nil`) - Output only. Whether the `site_secret` field was previously set. Since we will never return the `site_secret` field, this field is the only way to find out whether it was previously set.
  *   `tokenTtl` (*type:* `String.t`, *default:* `nil`) - Specifies the duration for which App Check tokens exchanged from reCAPTCHA tokens will be valid. If unset, a default value of 1 day is assumed. Must be between 30 minutes and 7 days, inclusive.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :name => String.t() | nil,
          :siteSecret => String.t() | nil,
          :siteSecretSet => boolean() | nil,
          :tokenTtl => String.t() | nil
        }

  field(:name)
  field(:siteSecret)
  field(:siteSecretSet)
  field(:tokenTtl)
end

defimpl Poison.Decoder,
  for: GoogleApi.FirebaseAppCheck.V1.Model.GoogleFirebaseAppcheckV1RecaptchaV3Config do
  def decode(value, options) do
    GoogleApi.FirebaseAppCheck.V1.Model.GoogleFirebaseAppcheckV1RecaptchaV3Config.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.FirebaseAppCheck.V1.Model.GoogleFirebaseAppcheckV1RecaptchaV3Config do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end