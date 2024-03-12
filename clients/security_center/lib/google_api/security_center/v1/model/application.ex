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

defmodule GoogleApi.SecurityCenter.V1.Model.Application do
  @moduledoc """
  Represents an application associated with a finding.

  ## Attributes

  *   `baseUri` (*type:* `String.t`, *default:* `nil`) - The base URI that identifies the network location of the application in which the vulnerability was detected. For example, `http://example.com`.
  *   `fullUri` (*type:* `String.t`, *default:* `nil`) - The full URI with payload that can be used to reproduce the vulnerability. For example, `http://example.com?p=aMmYgI6H`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :baseUri => String.t() | nil,
          :fullUri => String.t() | nil
        }

  field(:baseUri)
  field(:fullUri)
end

defimpl Poison.Decoder, for: GoogleApi.SecurityCenter.V1.Model.Application do
  def decode(value, options) do
    GoogleApi.SecurityCenter.V1.Model.Application.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.SecurityCenter.V1.Model.Application do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
