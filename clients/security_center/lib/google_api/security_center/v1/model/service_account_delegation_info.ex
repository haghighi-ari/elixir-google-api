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

defmodule GoogleApi.SecurityCenter.V1.Model.ServiceAccountDelegationInfo do
  @moduledoc """
  Identity delegation history of an authenticated service account.

  ## Attributes

  *   `principalEmail` (*type:* `String.t`, *default:* `nil`) - The email address of a Google account. .
  *   `principalSubject` (*type:* `String.t`, *default:* `nil`) - A string representing the principal_subject associated with the identity. As compared to `principal_email`, supports principals that aren't associated with email addresses, such as third party principals. For most identities, the format will be `principal://iam.googleapis.com/{identity pool name}/subject/{subject)` except for some GKE identities (GKE_WORKLOAD, FREEFORM, GKE_HUB_WORKLOAD) that are still in the legacy format `serviceAccount:{identity pool name}[{subject}]`
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :principalEmail => String.t() | nil,
          :principalSubject => String.t() | nil
        }

  field(:principalEmail)
  field(:principalSubject)
end

defimpl Poison.Decoder, for: GoogleApi.SecurityCenter.V1.Model.ServiceAccountDelegationInfo do
  def decode(value, options) do
    GoogleApi.SecurityCenter.V1.Model.ServiceAccountDelegationInfo.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.SecurityCenter.V1.Model.ServiceAccountDelegationInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end