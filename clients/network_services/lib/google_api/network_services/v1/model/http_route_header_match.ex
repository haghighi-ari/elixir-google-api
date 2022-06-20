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

defmodule GoogleApi.NetworkServices.V1.Model.HttpRouteHeaderMatch do
  @moduledoc """
  Specifies how to select a route rule based on HTTP request headers.

  ## Attributes

  *   `exactMatch` (*type:* `String.t`, *default:* `nil`) - The value of the header should match exactly the content of exact_match.
  *   `header` (*type:* `String.t`, *default:* `nil`) - The name of the HTTP header to match against.
  *   `invertMatch` (*type:* `boolean()`, *default:* `nil`) - If specified, the match result will be inverted before checking. Default value is set to false.
  *   `prefixMatch` (*type:* `String.t`, *default:* `nil`) - The value of the header must start with the contents of prefix_match.
  *   `presentMatch` (*type:* `boolean()`, *default:* `nil`) - A header with header_name must exist. The match takes place whether or not the header has a value.
  *   `rangeMatch` (*type:* `GoogleApi.NetworkServices.V1.Model.HttpRouteHeaderMatchIntegerRange.t`, *default:* `nil`) - If specified, the rule will match if the request header value is within the range.
  *   `regexMatch` (*type:* `String.t`, *default:* `nil`) - The value of the header must match the regular expression specified in regex_match. For regular expression grammar, please see: https://github.com/google/re2/wiki/Syntax
  *   `suffixMatch` (*type:* `String.t`, *default:* `nil`) - The value of the header must end with the contents of suffix_match.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :exactMatch => String.t() | nil,
          :header => String.t() | nil,
          :invertMatch => boolean() | nil,
          :prefixMatch => String.t() | nil,
          :presentMatch => boolean() | nil,
          :rangeMatch =>
            GoogleApi.NetworkServices.V1.Model.HttpRouteHeaderMatchIntegerRange.t() | nil,
          :regexMatch => String.t() | nil,
          :suffixMatch => String.t() | nil
        }

  field(:exactMatch)
  field(:header)
  field(:invertMatch)
  field(:prefixMatch)
  field(:presentMatch)
  field(:rangeMatch, as: GoogleApi.NetworkServices.V1.Model.HttpRouteHeaderMatchIntegerRange)
  field(:regexMatch)
  field(:suffixMatch)
end

defimpl Poison.Decoder, for: GoogleApi.NetworkServices.V1.Model.HttpRouteHeaderMatch do
  def decode(value, options) do
    GoogleApi.NetworkServices.V1.Model.HttpRouteHeaderMatch.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.NetworkServices.V1.Model.HttpRouteHeaderMatch do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
