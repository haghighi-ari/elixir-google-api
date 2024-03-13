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

defmodule GoogleApi.MigrationCenter.V1.Model.ReportSummaryVmwareNodeAllocation do
  @moduledoc """
  Represents assets allocated to a specific VMWare Node type.

  ## Attributes

  *   `allocatedAssetCount` (*type:* `String.t`, *default:* `nil`) - Count of assets allocated to these nodes
  *   `nodeCount` (*type:* `String.t`, *default:* `nil`) - Count of this node type to be provisioned
  *   `vmwareNode` (*type:* `GoogleApi.MigrationCenter.V1.Model.ReportSummaryVmwareNode.t`, *default:* `nil`) - VMWare node type, e.g. "ve1-standard-72"
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :allocatedAssetCount => String.t() | nil,
          :nodeCount => String.t() | nil,
          :vmwareNode => GoogleApi.MigrationCenter.V1.Model.ReportSummaryVmwareNode.t() | nil
        }

  field(:allocatedAssetCount)
  field(:nodeCount)
  field(:vmwareNode, as: GoogleApi.MigrationCenter.V1.Model.ReportSummaryVmwareNode)
end

defimpl Poison.Decoder, for: GoogleApi.MigrationCenter.V1.Model.ReportSummaryVmwareNodeAllocation do
  def decode(value, options) do
    GoogleApi.MigrationCenter.V1.Model.ReportSummaryVmwareNodeAllocation.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.MigrationCenter.V1.Model.ReportSummaryVmwareNodeAllocation do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
