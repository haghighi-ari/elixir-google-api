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

defmodule GoogleApi.AdExchangeBuyer.V14.Model.Dimension do
  @moduledoc """
  This message carries publisher provided breakdown. E.g. {dimension_type: 'COUNTRY', [{dimension_value: {id: 1, name: 'US'}}, {dimension_value: {id: 2, name: 'UK'}}]}

  ## Attributes

  - dimensionType (String.t):  Defaults to `nil`.
  - dimensionValues (list(GoogleApi.AdExchangeBuyer.V14.Model.DimensionDimensionValue.t)):  Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :dimensionType => String.t(),
          :dimensionValues =>
            list(GoogleApi.AdExchangeBuyer.V14.Model.DimensionDimensionValue.t())
        }

  field(:dimensionType)

  field(
    :dimensionValues,
    as: GoogleApi.AdExchangeBuyer.V14.Model.DimensionDimensionValue,
    type: :list
  )
end

defimpl Poison.Decoder, for: GoogleApi.AdExchangeBuyer.V14.Model.Dimension do
  def decode(value, options) do
    GoogleApi.AdExchangeBuyer.V14.Model.Dimension.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AdExchangeBuyer.V14.Model.Dimension do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
