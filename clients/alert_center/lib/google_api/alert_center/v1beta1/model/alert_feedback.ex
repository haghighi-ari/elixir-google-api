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

defmodule GoogleApi.AlertCenter.V1beta1.Model.AlertFeedback do
  @moduledoc """
  A customer feedback about an alert.

  ## Attributes

  *   `alertId` (*type:* `String.t`, *default:* `nil`) - Output only. The alert identifier.
  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The time this feedback was created.
  *   `customerId` (*type:* `String.t`, *default:* `nil`) - Output only. The unique identifier of the Google Workspace account of the customer.
  *   `email` (*type:* `String.t`, *default:* `nil`) - Output only. The email of the user that provided the feedback.
  *   `feedbackId` (*type:* `String.t`, *default:* `nil`) - Output only. The unique identifier for the feedback.
  *   `type` (*type:* `String.t`, *default:* `nil`) - Required. The type of the feedback.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :alertId => String.t() | nil,
          :createTime => DateTime.t() | nil,
          :customerId => String.t() | nil,
          :email => String.t() | nil,
          :feedbackId => String.t() | nil,
          :type => String.t() | nil
        }

  field(:alertId)
  field(:createTime, as: DateTime)
  field(:customerId)
  field(:email)
  field(:feedbackId)
  field(:type)
end

defimpl Poison.Decoder, for: GoogleApi.AlertCenter.V1beta1.Model.AlertFeedback do
  def decode(value, options) do
    GoogleApi.AlertCenter.V1beta1.Model.AlertFeedback.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AlertCenter.V1beta1.Model.AlertFeedback do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
