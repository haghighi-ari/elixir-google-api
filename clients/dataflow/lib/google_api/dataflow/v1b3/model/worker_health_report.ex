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

defmodule GoogleApi.Dataflow.V1b3.Model.WorkerHealthReport do
  @moduledoc """
  WorkerHealthReport contains information about the health of a worker.

  The VM should be identified by the labels attached to the WorkerMessage that
  this health ping belongs to.

  ## Attributes

  *   `msg` (*type:* `String.t`, *default:* `nil`) - A message describing any unusual health reports.
  *   `pods` (*type:* `list(map())`, *default:* `nil`) - The pods running on the worker. See:
      http://kubernetes.io/v1.1/docs/api-reference/v1/definitions.html#_v1_pod

      This field is used by the worker to send the status of the indvidual
      containers running on each worker.
  *   `reportInterval` (*type:* `String.t`, *default:* `nil`) - The interval at which the worker is sending health reports.
      The default value of 0 should be interpreted as the field is not being
      explicitly set by the worker.
  *   `vmIsBroken` (*type:* `boolean()`, *default:* `nil`) - Whether the VM is in a permanently broken state.
      Broken VMs should be abandoned or deleted ASAP to avoid assigning or
      completing any work.
  *   `vmIsHealthy` (*type:* `boolean()`, *default:* `nil`) - Whether the VM is currently healthy.
  *   `vmStartupTime` (*type:* `DateTime.t`, *default:* `nil`) - The time the VM was booted.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :msg => String.t(),
          :pods => list(map()),
          :reportInterval => String.t(),
          :vmIsBroken => boolean(),
          :vmIsHealthy => boolean(),
          :vmStartupTime => DateTime.t()
        }

  field(:msg)
  field(:pods, type: :list)
  field(:reportInterval)
  field(:vmIsBroken)
  field(:vmIsHealthy)
  field(:vmStartupTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.Dataflow.V1b3.Model.WorkerHealthReport do
  def decode(value, options) do
    GoogleApi.Dataflow.V1b3.Model.WorkerHealthReport.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dataflow.V1b3.Model.WorkerHealthReport do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
