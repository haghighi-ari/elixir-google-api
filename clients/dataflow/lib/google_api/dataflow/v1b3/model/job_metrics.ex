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

defmodule GoogleApi.Dataflow.V1b3.Model.JobMetrics do
  @moduledoc """
  JobMetrics contains a collection of metrics describing the detailed progress
  of a Dataflow job. Metrics correspond to user-defined and system-defined
  metrics in the job.

  This resource captures only the most recent values of each metric;
  time-series data can be queried for them (under the same metric names)
  from Cloud Monitoring.

  ## Attributes

  *   `metricTime` (*type:* `DateTime.t`, *default:* `nil`) - Timestamp as of which metric values are current.
  *   `metrics` (*type:* `list(GoogleApi.Dataflow.V1b3.Model.MetricUpdate.t)`, *default:* `nil`) - All metrics for this job.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :metricTime => DateTime.t(),
          :metrics => list(GoogleApi.Dataflow.V1b3.Model.MetricUpdate.t())
        }

  field(:metricTime, as: DateTime)
  field(:metrics, as: GoogleApi.Dataflow.V1b3.Model.MetricUpdate, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Dataflow.V1b3.Model.JobMetrics do
  def decode(value, options) do
    GoogleApi.Dataflow.V1b3.Model.JobMetrics.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dataflow.V1b3.Model.JobMetrics do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
