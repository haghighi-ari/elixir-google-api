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

defmodule GoogleApi.ApigeeRegistry.V1.Model.ApiVersion do
  @moduledoc """
  An ApiVersion describes a particular version of an API. ApiVersions are what consumers actually use.

  ## Attributes

  *   `annotations` (*type:* `map()`, *default:* `nil`) - Annotations attach non-identifying metadata to resources. Annotation keys and values are less restricted than those of labels, but should be generally used for small values of broad interest. Larger, topic- specific metadata should be stored in Artifacts.
  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Creation timestamp.
  *   `description` (*type:* `String.t`, *default:* `nil`) - A detailed description.
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - Human-meaningful name.
  *   `labels` (*type:* `map()`, *default:* `nil`) - Labels attach identifying metadata to resources. Identifying metadata can be used to filter list operations. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. No more than 64 user labels can be associated with one resource (System labels are excluded). See https://goo.gl/xmQnxf for more information and examples of labels. System reserved label keys are prefixed with "apigeeregistry.googleapis.com/" and cannot be changed.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Resource name.
  *   `state` (*type:* `String.t`, *default:* `nil`) - A user-definable description of the lifecycle phase of this API version. Format: free-form, but we expect single words that describe API maturity, e.g. "CONCEPT", "DESIGN", "DEVELOPMENT", "STAGING", "PRODUCTION", "DEPRECATED", "RETIRED".
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Last update timestamp.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :annotations => map() | nil,
          :createTime => DateTime.t() | nil,
          :description => String.t() | nil,
          :displayName => String.t() | nil,
          :labels => map() | nil,
          :name => String.t() | nil,
          :state => String.t() | nil,
          :updateTime => DateTime.t() | nil
        }

  field(:annotations, type: :map)
  field(:createTime, as: DateTime)
  field(:description)
  field(:displayName)
  field(:labels, type: :map)
  field(:name)
  field(:state)
  field(:updateTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.ApigeeRegistry.V1.Model.ApiVersion do
  def decode(value, options) do
    GoogleApi.ApigeeRegistry.V1.Model.ApiVersion.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ApigeeRegistry.V1.Model.ApiVersion do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
