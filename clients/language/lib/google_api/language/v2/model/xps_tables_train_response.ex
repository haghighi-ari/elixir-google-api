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

defmodule GoogleApi.Language.V2.Model.XPSTablesTrainResponse do
  @moduledoc """


  ## Attributes

  *   `modelStructure` (*type:* `GoogleApi.Language.V2.Model.XPSTablesModelStructure.t`, *default:* `nil`) - 
  *   `predictionSampleRows` (*type:* `list(GoogleApi.Language.V2.Model.XPSRow.t)`, *default:* `nil`) - Sample rows from the dataset this model was trained.
  *   `tablesModelColumnInfo` (*type:* `list(GoogleApi.Language.V2.Model.XPSTablesModelColumnInfo.t)`, *default:* `nil`) - Output only. Auxiliary information for each of the input_feature_column_specs, with respect to this particular model.
  *   `trainCostMilliNodeHours` (*type:* `String.t`, *default:* `nil`) - The actual training cost of the model, expressed in milli node hours, i.e. 1,000 value in this field means 1 node hour. Guaranteed to not exceed the train budget.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :modelStructure => GoogleApi.Language.V2.Model.XPSTablesModelStructure.t() | nil,
          :predictionSampleRows => list(GoogleApi.Language.V2.Model.XPSRow.t()) | nil,
          :tablesModelColumnInfo =>
            list(GoogleApi.Language.V2.Model.XPSTablesModelColumnInfo.t()) | nil,
          :trainCostMilliNodeHours => String.t() | nil
        }

  field(:modelStructure, as: GoogleApi.Language.V2.Model.XPSTablesModelStructure)
  field(:predictionSampleRows, as: GoogleApi.Language.V2.Model.XPSRow, type: :list)

  field(:tablesModelColumnInfo,
    as: GoogleApi.Language.V2.Model.XPSTablesModelColumnInfo,
    type: :list
  )

  field(:trainCostMilliNodeHours)
end

defimpl Poison.Decoder, for: GoogleApi.Language.V2.Model.XPSTablesTrainResponse do
  def decode(value, options) do
    GoogleApi.Language.V2.Model.XPSTablesTrainResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Language.V2.Model.XPSTablesTrainResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
