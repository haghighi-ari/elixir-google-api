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

defmodule GoogleApi.NetworkServices.V1.Model.HttpRouteRetryPolicy do
  @moduledoc """
  The specifications for retries.

  ## Attributes

  *   `numRetries` (*type:* `integer()`, *default:* `nil`) - Specifies the allowed number of retries. This number must be > 0. If not specified, default to 1.
  *   `perTryTimeout` (*type:* `String.t`, *default:* `nil`) - Specifies a non-zero timeout per retry attempt.
  *   `retryConditions` (*type:* `list(String.t)`, *default:* `nil`) - Specifies one or more conditions when this retry policy applies. Valid values are: 5xx: Proxy will attempt a retry if the destination service responds with any 5xx response code, of if the destination service does not respond at all, example: disconnect, reset, read timeout, connection failure and refused streams. gateway-error: Similar to 5xx, but only applies to response codes 502, 503, 504. reset: Proxy will attempt a retry if the destination service does not respond at all (disconnect/reset/read timeout) connect-failure: Proxy will retry on failures connecting to destination for example due to connection timeouts. retriable-4xx: Proxy will retry fro retriable 4xx response codes. Currently the only retriable error supported is 409. refused-stream: Proxy will retry if the destination resets the stream with a REFUSED_STREAM error code. This reset type indicates that it is safe to retry.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :numRetries => integer() | nil,
          :perTryTimeout => String.t() | nil,
          :retryConditions => list(String.t()) | nil
        }

  field(:numRetries)
  field(:perTryTimeout)
  field(:retryConditions, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.NetworkServices.V1.Model.HttpRouteRetryPolicy do
  def decode(value, options) do
    GoogleApi.NetworkServices.V1.Model.HttpRouteRetryPolicy.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.NetworkServices.V1.Model.HttpRouteRetryPolicy do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
