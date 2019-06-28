# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the elixir code generator program.
# Do not edit the class manually.

defmodule GoogleApi.Dataflow.V1b3.Model.StructuredMessage do
  @moduledoc """
  A rich message format, including a human readable string, a key for
  identifying the message, and structured data associated with the message for
  programmatic consumption.

  ## Attributes

  *   `messageKey` (*type:* `String.t`, *default:* `nil`) - Identifier for this message type.  Used by external systems to
      internationalize or personalize message.
  *   `messageText` (*type:* `String.t`, *default:* `nil`) - Human-readable version of message.
  *   `parameters` (*type:* `list(GoogleApi.Dataflow.V1b3.Model.Parameter.t)`, *default:* `nil`) - The structured data associated with this message.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :messageKey => String.t(),
          :messageText => String.t(),
          :parameters => list(GoogleApi.Dataflow.V1b3.Model.Parameter.t())
        }

  field(:messageKey)
  field(:messageText)
  field(:parameters, as: GoogleApi.Dataflow.V1b3.Model.Parameter, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Dataflow.V1b3.Model.StructuredMessage do
  def decode(value, options) do
    GoogleApi.Dataflow.V1b3.Model.StructuredMessage.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dataflow.V1b3.Model.StructuredMessage do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
