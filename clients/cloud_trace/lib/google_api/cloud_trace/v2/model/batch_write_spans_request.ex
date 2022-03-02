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

defmodule GoogleApi.CloudTrace.V2.Model.BatchWriteSpansRequest do
  @moduledoc """
  The request message for the `BatchWriteSpans` method.

  ## Attributes

  *   `spans` (*type:* `list(GoogleApi.CloudTrace.V2.Model.Span.t)`, *default:* `nil`) - Required. A list of new spans. The span names must not match existing spans, otherwise the results are undefined.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :spans => list(GoogleApi.CloudTrace.V2.Model.Span.t()) | nil
        }

  field(:spans, as: GoogleApi.CloudTrace.V2.Model.Span, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.CloudTrace.V2.Model.BatchWriteSpansRequest do
  def decode(value, options) do
    GoogleApi.CloudTrace.V2.Model.BatchWriteSpansRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudTrace.V2.Model.BatchWriteSpansRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
