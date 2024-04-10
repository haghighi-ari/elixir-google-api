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

defmodule GoogleApi.OSConfig.V1.Model.ProjectFeatureSettings do
  @moduledoc """
  ProjectFeatureSettings represents the VM Manager feature settings in a project. For more information, see Enable full VM Manager functionality.

  ## Attributes

  *   `name` (*type:* `String.t`, *default:* `nil`) - Required. Immutable. Name specifies the URL for the ProjectFeatureSettings resource: projects/project_id/locations/global/projectFeatureSettings.
  *   `patchAndConfigFeatureSet` (*type:* `String.t`, *default:* `nil`) - Set PatchAndConfigFeatureSet for the project.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :name => String.t() | nil,
          :patchAndConfigFeatureSet => String.t() | nil
        }

  field(:name)
  field(:patchAndConfigFeatureSet)
end

defimpl Poison.Decoder, for: GoogleApi.OSConfig.V1.Model.ProjectFeatureSettings do
  def decode(value, options) do
    GoogleApi.OSConfig.V1.Model.ProjectFeatureSettings.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.OSConfig.V1.Model.ProjectFeatureSettings do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
