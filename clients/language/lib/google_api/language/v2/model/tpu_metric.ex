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

defmodule GoogleApi.Language.V2.Model.TpuMetric do
  @moduledoc """


  ## Attributes

  *   `tpuSec` (*type:* `String.t`, *default:* `nil`) - Required. Seconds of TPU usage, e.g. 3600.
  *   `tpuType` (*type:* `String.t`, *default:* `nil`) - Required. Type of TPU, e.g. TPU_V2, TPU_V3_POD.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :tpuSec => String.t() | nil,
          :tpuType => String.t() | nil
        }

  field(:tpuSec)
  field(:tpuType)
end

defimpl Poison.Decoder, for: GoogleApi.Language.V2.Model.TpuMetric do
  def decode(value, options) do
    GoogleApi.Language.V2.Model.TpuMetric.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Language.V2.Model.TpuMetric do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
