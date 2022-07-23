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

defmodule GoogleApi.Jobs.V4.Model.NamespacedDebugInput do
  @moduledoc """
  Next ID: 16

  ## Attributes

  *   `absolutelyForcedExpNames` (*type:* `list(String.t)`, *default:* `nil`) - Set of experiment names to be absolutely forced. These experiments will be forced without evaluating the conditions.
  *   `absolutelyForcedExpTags` (*type:* `list(String.t)`, *default:* `nil`) - Set of experiment tags to be absolutely forced. The experiments with these tags will be forced without evaluating the conditions.
  *   `absolutelyForcedExps` (*type:* `list(integer())`, *default:* `nil`) - Set of experiment ids to be absolutely forced. These ids will be forced without evaluating the conditions.
  *   `conditionallyForcedExpNames` (*type:* `list(String.t)`, *default:* `nil`) - Set of experiment names to be conditionally forced. These experiments will be forced only if their conditions and their parent domain's conditions are true.
  *   `conditionallyForcedExpTags` (*type:* `list(String.t)`, *default:* `nil`) - Set of experiment tags to be conditionally forced. The experiments with these tags will be forced only if their conditions and their parent domain's conditions are true.
  *   `conditionallyForcedExps` (*type:* `list(integer())`, *default:* `nil`) - Set of experiment ids to be conditionally forced. These ids will be forced only if their conditions and their parent domain's conditions are true.
  *   `disableAutomaticEnrollmentSelection` (*type:* `boolean()`, *default:* `nil`) - If true, disable automatic enrollment selection (at all diversion points). Automatic enrollment selection means experiment selection process based on the experiment's automatic enrollment condition. This does not disable selection of forced experiments. Setting this filed to false does not change anything in experiment selection process.
  *   `disableExpNames` (*type:* `list(String.t)`, *default:* `nil`) - Set of experiment names to be disabled. If an experiment is disabled, it is never selected nor forced. If an aggregate experiment is disabled, its partitions are disabled together. If an experiment with an enrollment is disabled, the enrollment is disabled together. If a name corresponds to a domain, the domain itself and all descendant experiments and domains are disabled together.
  *   `disableExpTags` (*type:* `list(String.t)`, *default:* `nil`) - Set of experiment tags to be disabled. All experiments that are tagged with one or more of these tags are disabled. If an experiment is disabled, it is never selected nor forced. If an aggregate experiment is disabled, its partitions are disabled together. If an experiment with an enrollment is disabled, the enrollment is disabled together.
  *   `disableExps` (*type:* `list(integer())`, *default:* `nil`) - Set of experiment ids to be disabled. If an experiment is disabled, it is never selected nor forced. If an aggregate experiment is disabled, its partitions are disabled together. If an experiment with an enrollment is disabled, the enrollment is disabled together. If an ID corresponds to a domain, the domain itself and all descendant experiments and domains are disabled together.
  *   `disableManualEnrollmentSelection` (*type:* `boolean()`, *default:* `nil`) - If true, disable manual enrollment selection (at all diversion points). Manual enrollment selection means experiment selection process based on the request's manual enrollment states (a.k.a. opt-in experiments). This does not disable selection of forced experiments. Setting this filed to false does not change anything in experiment selection process.
  *   `disableOrganicSelection` (*type:* `boolean()`, *default:* `nil`) - If true, disable organic experiment selection (at all diversion points). Organic selection means experiment selection process based on traffic allocation and diversion condition evaluation. This does not disable selection of forced experiments. This is useful in cases when it is not known whether experiment selection behavior is responsible for a error or breakage. Disabling organic selection may help to isolate the cause of a given problem. Setting this filed to false does not change anything in experiment selection process.
  *   `forcedFlags` (*type:* `map()`, *default:* `nil`) - Flags to force in a particular experiment state. Map from flag name to flag value.
  *   `forcedRollouts` (*type:* `map()`, *default:* `nil`) - Rollouts to force in a particular experiment state. Map from rollout name to rollout value.
  *   `testingMode` (*type:* `String.t`, *default:* `nil`) - If set to ALL_OFF, organic selection will be disabled; if set to ALL_ON, organic selection will be disabled, and only select launch experiments will receive traffic. See go/mendel-aoao-runtime-design.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :absolutelyForcedExpNames => list(String.t()) | nil,
          :absolutelyForcedExpTags => list(String.t()) | nil,
          :absolutelyForcedExps => list(integer()) | nil,
          :conditionallyForcedExpNames => list(String.t()) | nil,
          :conditionallyForcedExpTags => list(String.t()) | nil,
          :conditionallyForcedExps => list(integer()) | nil,
          :disableAutomaticEnrollmentSelection => boolean() | nil,
          :disableExpNames => list(String.t()) | nil,
          :disableExpTags => list(String.t()) | nil,
          :disableExps => list(integer()) | nil,
          :disableManualEnrollmentSelection => boolean() | nil,
          :disableOrganicSelection => boolean() | nil,
          :forcedFlags => map() | nil,
          :forcedRollouts => map() | nil,
          :testingMode => String.t() | nil
        }

  field(:absolutelyForcedExpNames, type: :list)
  field(:absolutelyForcedExpTags, type: :list)
  field(:absolutelyForcedExps, type: :list)
  field(:conditionallyForcedExpNames, type: :list)
  field(:conditionallyForcedExpTags, type: :list)
  field(:conditionallyForcedExps, type: :list)
  field(:disableAutomaticEnrollmentSelection)
  field(:disableExpNames, type: :list)
  field(:disableExpTags, type: :list)
  field(:disableExps, type: :list)
  field(:disableManualEnrollmentSelection)
  field(:disableOrganicSelection)
  field(:forcedFlags, type: :map)
  field(:forcedRollouts, type: :map)
  field(:testingMode)
end

defimpl Poison.Decoder, for: GoogleApi.Jobs.V4.Model.NamespacedDebugInput do
  def decode(value, options) do
    GoogleApi.Jobs.V4.Model.NamespacedDebugInput.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Jobs.V4.Model.NamespacedDebugInput do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
