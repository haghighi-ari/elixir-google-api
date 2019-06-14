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

defmodule GoogleApi.AdExchangeBuyer.V2beta1.Model.VideoTargeting do
  @moduledoc """
  Represents targeting information about video.

  ## Attributes

  - excludedPositionTypes (list(String.t)): A list of video positions to be excluded.
  Position types can either be included or excluded (XOR). Defaults to `nil`.
  - targetedPositionTypes (list(String.t)): A list of video positions to be included.
  When the included list is present, the excluded list must be empty.
  When the excluded list is present, the included list must be empty. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :excludedPositionTypes => list(String.t()),
          :targetedPositionTypes => list(String.t())
        }

  field(:excludedPositionTypes, type: :list)
  field(:targetedPositionTypes, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.AdExchangeBuyer.V2beta1.Model.VideoTargeting do
  def decode(value, options) do
    GoogleApi.AdExchangeBuyer.V2beta1.Model.VideoTargeting.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AdExchangeBuyer.V2beta1.Model.VideoTargeting do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
