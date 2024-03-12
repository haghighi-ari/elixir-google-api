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

defmodule GoogleApi.Language.V1.Model.XPSBoundingBoxMetricsEntry do
  @moduledoc """
  Bounding box matching model metrics for a single intersection-over-union threshold and multiple label match confidence thresholds.

  ## Attributes

  *   `confidenceMetricsEntries` (*type:* `list(GoogleApi.Language.V1.Model.XPSBoundingBoxMetricsEntryConfidenceMetricsEntry.t)`, *default:* `nil`) - Metrics for each label-match confidence_threshold from 0.05,0.10,...,0.95,0.96,0.97,0.98,0.99.
  *   `iouThreshold` (*type:* `number()`, *default:* `nil`) - The intersection-over-union threshold value used to compute this metrics entry.
  *   `meanAveragePrecision` (*type:* `number()`, *default:* `nil`) - The mean average precision.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :confidenceMetricsEntries =>
            list(GoogleApi.Language.V1.Model.XPSBoundingBoxMetricsEntryConfidenceMetricsEntry.t())
            | nil,
          :iouThreshold => number() | nil,
          :meanAveragePrecision => number() | nil
        }

  field(:confidenceMetricsEntries,
    as: GoogleApi.Language.V1.Model.XPSBoundingBoxMetricsEntryConfidenceMetricsEntry,
    type: :list
  )

  field(:iouThreshold)
  field(:meanAveragePrecision)
end

defimpl Poison.Decoder, for: GoogleApi.Language.V1.Model.XPSBoundingBoxMetricsEntry do
  def decode(value, options) do
    GoogleApi.Language.V1.Model.XPSBoundingBoxMetricsEntry.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Language.V1.Model.XPSBoundingBoxMetricsEntry do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
