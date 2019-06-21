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

defmodule GoogleApi.DNS.V1.Model.ManagedZoneDnsSecConfig do
  @moduledoc """


  ## Attributes

  - defaultKeySpecs (list(GoogleApi.DNS.V1.Model.DnsKeySpec.t)): Specifies parameters that will be used for generating initial DnsKeys for this ManagedZone. Output only while state is not OFF. Defaults to `nil`.
  - kind (String.t): Identifies what kind of resource this is. Value: the fixed string "dns#managedZoneDnsSecConfig". Defaults to `dns#managedZoneDnsSecConfig`.
  - nonExistence (String.t): Specifies the mechanism used to provide authenticated denial-of-existence responses. Output only while state is not OFF. Defaults to `nil`.
  - state (String.t): Specifies whether DNSSEC is enabled, and what mode it is in. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :defaultKeySpecs => list(GoogleApi.DNS.V1.Model.DnsKeySpec.t()),
          :kind => String.t(),
          :nonExistence => String.t(),
          :state => String.t()
        }

  field(:defaultKeySpecs, as: GoogleApi.DNS.V1.Model.DnsKeySpec, type: :list)
  field(:kind)
  field(:nonExistence)
  field(:state)
end

defimpl Poison.Decoder, for: GoogleApi.DNS.V1.Model.ManagedZoneDnsSecConfig do
  def decode(value, options) do
    GoogleApi.DNS.V1.Model.ManagedZoneDnsSecConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DNS.V1.Model.ManagedZoneDnsSecConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
