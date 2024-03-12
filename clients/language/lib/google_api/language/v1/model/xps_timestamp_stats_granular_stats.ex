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

defmodule GoogleApi.Language.V1.Model.XPSTimestampStatsGranularStats do
  @moduledoc """
  Stats split by a defined in context granularity.

  ## Attributes

  *   `buckets` (*type:* `map()`, *default:* `nil`) - A map from granularity key to example count for that key. E.g. for hour_of_day `13` means 1pm, or for month_of_year `5` means May).
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :buckets => map() | nil
        }

  field(:buckets, type: :map)
end

defimpl Poison.Decoder, for: GoogleApi.Language.V1.Model.XPSTimestampStatsGranularStats do
  def decode(value, options) do
    GoogleApi.Language.V1.Model.XPSTimestampStatsGranularStats.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Language.V1.Model.XPSTimestampStatsGranularStats do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
