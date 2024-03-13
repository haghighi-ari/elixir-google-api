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

defmodule GoogleApi.MigrationCenter.V1.Model.DiskUsageSample do
  @moduledoc """
  Disk usage sample. Values are across all disks.

  ## Attributes

  *   `averageIops` (*type:* `number()`, *default:* `nil`) - Average IOPS sampled over a short window. Must be non-negative.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :averageIops => number() | nil
        }

  field(:averageIops)
end

defimpl Poison.Decoder, for: GoogleApi.MigrationCenter.V1.Model.DiskUsageSample do
  def decode(value, options) do
    GoogleApi.MigrationCenter.V1.Model.DiskUsageSample.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.MigrationCenter.V1.Model.DiskUsageSample do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
