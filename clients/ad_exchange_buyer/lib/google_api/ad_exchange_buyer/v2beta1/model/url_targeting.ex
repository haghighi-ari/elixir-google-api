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

defmodule GoogleApi.AdExchangeBuyer.V2beta1.Model.UrlTargeting do
  @moduledoc """
  Represents a list of targeted and excluded URLs (e.g., google.com).
  For Private Auction and AdX Preferred Deals, URLs are either included or
  excluded.
  For Programmatic Guaranteed and Preferred Deals, this doesn't
  apply.

  ## Attributes

  - excludedUrls (list(String.t)): A list of URLs to be excluded. Defaults to `nil`.
  - targetedUrls (list(String.t)): A list of URLs to be included. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :excludedUrls => list(String.t()),
          :targetedUrls => list(String.t())
        }

  field(:excludedUrls, type: :list)
  field(:targetedUrls, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.AdExchangeBuyer.V2beta1.Model.UrlTargeting do
  def decode(value, options) do
    GoogleApi.AdExchangeBuyer.V2beta1.Model.UrlTargeting.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AdExchangeBuyer.V2beta1.Model.UrlTargeting do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
