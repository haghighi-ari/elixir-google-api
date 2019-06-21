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

defmodule GoogleApi.DNS.V1.Model.DnsKeysListResponse do
  @moduledoc """
  The response to a request to enumerate DnsKeys in a ManagedZone.

  ## Attributes

  - dnsKeys (list(GoogleApi.DNS.V1.Model.DnsKey.t)): The requested resources. Defaults to `nil`.
  - header (GoogleApi.DNS.V1.Model.ResponseHeader.t):  Defaults to `nil`.
  - kind (String.t): Type of resource. Defaults to `dns#dnsKeysListResponse`.
  - nextPageToken (String.t): The presence of this field indicates that there exist more results following your last page of results in pagination order. To fetch them, make another list request using this value as your pagination token.

  In this way you can retrieve the complete contents of even very large collections one page at a time. However, if the contents of the collection change between the first and last paginated list request, the set of all elements returned will be an inconsistent view of the collection. There is no way to retrieve a "snapshot" of collections larger than the maximum page size. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :dnsKeys => list(GoogleApi.DNS.V1.Model.DnsKey.t()),
          :header => GoogleApi.DNS.V1.Model.ResponseHeader.t(),
          :kind => String.t(),
          :nextPageToken => String.t()
        }

  field(:dnsKeys, as: GoogleApi.DNS.V1.Model.DnsKey, type: :list)
  field(:header, as: GoogleApi.DNS.V1.Model.ResponseHeader)
  field(:kind)
  field(:nextPageToken)
end

defimpl Poison.Decoder, for: GoogleApi.DNS.V1.Model.DnsKeysListResponse do
  def decode(value, options) do
    GoogleApi.DNS.V1.Model.DnsKeysListResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DNS.V1.Model.DnsKeysListResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
