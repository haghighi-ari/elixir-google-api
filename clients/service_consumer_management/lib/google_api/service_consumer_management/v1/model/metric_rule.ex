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

defmodule GoogleApi.ServiceConsumerManagement.V1.Model.MetricRule do
  @moduledoc """
  Bind API methods to metrics. Binding a method to a metric causes that metric's configured quota behaviors to apply to the method call.

  ## Attributes

  *   `metricCosts` (*type:* `map()`, *default:* `nil`) - Metrics to update when the selected methods are called, and the associated cost applied to each metric. The key of the map is the metric name, and the values are the amount increased for the metric against which the quota limits are defined. The value must not be negative.
  *   `selector` (*type:* `String.t`, *default:* `nil`) - Selects the methods to which this rule applies. Refer to selector for syntax details.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :metricCosts => map() | nil,
          :selector => String.t() | nil
        }

  field(:metricCosts, type: :map)
  field(:selector)
end

defimpl Poison.Decoder, for: GoogleApi.ServiceConsumerManagement.V1.Model.MetricRule do
  def decode(value, options) do
    GoogleApi.ServiceConsumerManagement.V1.Model.MetricRule.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ServiceConsumerManagement.V1.Model.MetricRule do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
