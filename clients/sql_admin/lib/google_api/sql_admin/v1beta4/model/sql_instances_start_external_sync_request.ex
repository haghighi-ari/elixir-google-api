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

defmodule GoogleApi.SQLAdmin.V1beta4.Model.SqlInstancesStartExternalSyncRequest do
  @moduledoc """


  ## Attributes

  *   `mysqlSyncConfig` (*type:* `GoogleApi.SQLAdmin.V1beta4.Model.MySqlSyncConfig.t`, *default:* `nil`) - MySQL-specific settings for start external sync.
  *   `skipVerification` (*type:* `boolean()`, *default:* `nil`) - Whether to skip the verification step (VESS).
  *   `syncMode` (*type:* `String.t`, *default:* `nil`) - External sync mode.
  *   `syncParallelLevel` (*type:* `String.t`, *default:* `nil`) - Optional. Parallel level for initial data sync. Currently only applicable for MySQL.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :mysqlSyncConfig => GoogleApi.SQLAdmin.V1beta4.Model.MySqlSyncConfig.t() | nil,
          :skipVerification => boolean() | nil,
          :syncMode => String.t() | nil,
          :syncParallelLevel => String.t() | nil
        }

  field(:mysqlSyncConfig, as: GoogleApi.SQLAdmin.V1beta4.Model.MySqlSyncConfig)
  field(:skipVerification)
  field(:syncMode)
  field(:syncParallelLevel)
end

defimpl Poison.Decoder, for: GoogleApi.SQLAdmin.V1beta4.Model.SqlInstancesStartExternalSyncRequest do
  def decode(value, options) do
    GoogleApi.SQLAdmin.V1beta4.Model.SqlInstancesStartExternalSyncRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.SQLAdmin.V1beta4.Model.SqlInstancesStartExternalSyncRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
