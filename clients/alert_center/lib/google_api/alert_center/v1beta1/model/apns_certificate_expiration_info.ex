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

defmodule GoogleApi.AlertCenter.V1beta1.Model.ApnsCertificateExpirationInfo do
  @moduledoc """
  The explanation message associated with "APNS certificate is expiring soon" and "APNS certificate has expired" alerts.

  ## Attributes

  *   `appleId` (*type:* `String.t`, *default:* `nil`) - The Apple ID used to create the certificate. It may be blank if admins didn't enter it.
  *   `expirationTime` (*type:* `DateTime.t`, *default:* `nil`) - The expiration date of the APNS certificate.
  *   `uid` (*type:* `String.t`, *default:* `nil`) - The UID of the certificate.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :appleId => String.t() | nil,
          :expirationTime => DateTime.t() | nil,
          :uid => String.t() | nil
        }

  field(:appleId)
  field(:expirationTime, as: DateTime)
  field(:uid)
end

defimpl Poison.Decoder, for: GoogleApi.AlertCenter.V1beta1.Model.ApnsCertificateExpirationInfo do
  def decode(value, options) do
    GoogleApi.AlertCenter.V1beta1.Model.ApnsCertificateExpirationInfo.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AlertCenter.V1beta1.Model.ApnsCertificateExpirationInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
