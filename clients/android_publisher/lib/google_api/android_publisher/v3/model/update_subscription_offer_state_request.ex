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

defmodule GoogleApi.AndroidPublisher.V3.Model.UpdateSubscriptionOfferStateRequest do
  @moduledoc """
  Request message to update the state of a subscription offer.

  ## Attributes

  *   `activateSubscriptionOfferRequest` (*type:* `GoogleApi.AndroidPublisher.V3.Model.ActivateSubscriptionOfferRequest.t`, *default:* `nil`) - Activates an offer. Once activated, the offer will be available to new subscribers.
  *   `deactivateSubscriptionOfferRequest` (*type:* `GoogleApi.AndroidPublisher.V3.Model.DeactivateSubscriptionOfferRequest.t`, *default:* `nil`) - Deactivates an offer. Once deactivated, the offer will become unavailable to new subscribers, but existing subscribers will maintain their subscription
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :activateSubscriptionOfferRequest =>
            GoogleApi.AndroidPublisher.V3.Model.ActivateSubscriptionOfferRequest.t() | nil,
          :deactivateSubscriptionOfferRequest =>
            GoogleApi.AndroidPublisher.V3.Model.DeactivateSubscriptionOfferRequest.t() | nil
        }

  field(:activateSubscriptionOfferRequest,
    as: GoogleApi.AndroidPublisher.V3.Model.ActivateSubscriptionOfferRequest
  )

  field(:deactivateSubscriptionOfferRequest,
    as: GoogleApi.AndroidPublisher.V3.Model.DeactivateSubscriptionOfferRequest
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.AndroidPublisher.V3.Model.UpdateSubscriptionOfferStateRequest do
  def decode(value, options) do
    GoogleApi.AndroidPublisher.V3.Model.UpdateSubscriptionOfferStateRequest.decode(value, options)
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.AndroidPublisher.V3.Model.UpdateSubscriptionOfferStateRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
