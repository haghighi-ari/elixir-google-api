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

defmodule GoogleApi.Dataflow.V1b3.Model.StreamingComputationTask do
  @moduledoc """
  A task which describes what action should be performed for the specified
  streaming computation ranges.

  ## Attributes

  *   `computationRanges` (*type:* `list(GoogleApi.Dataflow.V1b3.Model.StreamingComputationRanges.t)`, *default:* `nil`) - Contains ranges of a streaming computation this task should apply to.
  *   `dataDisks` (*type:* `list(GoogleApi.Dataflow.V1b3.Model.MountedDataDisk.t)`, *default:* `nil`) - Describes the set of data disks this task should apply to.
  *   `taskType` (*type:* `String.t`, *default:* `nil`) - A type of streaming computation task.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :computationRanges =>
            list(GoogleApi.Dataflow.V1b3.Model.StreamingComputationRanges.t()),
          :dataDisks => list(GoogleApi.Dataflow.V1b3.Model.MountedDataDisk.t()),
          :taskType => String.t()
        }

  field(
    :computationRanges,
    as: GoogleApi.Dataflow.V1b3.Model.StreamingComputationRanges,
    type: :list
  )

  field(:dataDisks, as: GoogleApi.Dataflow.V1b3.Model.MountedDataDisk, type: :list)
  field(:taskType)
end

defimpl Poison.Decoder, for: GoogleApi.Dataflow.V1b3.Model.StreamingComputationTask do
  def decode(value, options) do
    GoogleApi.Dataflow.V1b3.Model.StreamingComputationTask.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dataflow.V1b3.Model.StreamingComputationTask do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
