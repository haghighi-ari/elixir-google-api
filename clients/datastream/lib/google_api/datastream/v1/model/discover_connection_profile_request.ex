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

defmodule GoogleApi.Datastream.V1.Model.DiscoverConnectionProfileRequest do
  @moduledoc """
  Request message for 'discover' ConnectionProfile request.

  ## Attributes

  *   `connectionProfile` (*type:* `GoogleApi.Datastream.V1.Model.ConnectionProfile.t`, *default:* `nil`) - An ad-hoc connection profile configuration.
  *   `connectionProfileName` (*type:* `String.t`, *default:* `nil`) - A reference to an existing connection profile.
  *   `fullHierarchy` (*type:* `boolean()`, *default:* `nil`) - Whether to retrieve the full hierarchy of data objects (TRUE) or only the current level (FALSE).
  *   `hierarchyDepth` (*type:* `integer()`, *default:* `nil`) - The number of hierarchy levels below the current level to be retrieved.
  *   `mysqlRdbms` (*type:* `GoogleApi.Datastream.V1.Model.MysqlRdbms.t`, *default:* `nil`) - MySQL RDBMS to enrich with child data objects and metadata.
  *   `oracleRdbms` (*type:* `GoogleApi.Datastream.V1.Model.OracleRdbms.t`, *default:* `nil`) - Oracle RDBMS to enrich with child data objects and metadata.
  *   `postgresqlRdbms` (*type:* `GoogleApi.Datastream.V1.Model.PostgresqlRdbms.t`, *default:* `nil`) - PostgreSQL RDBMS to enrich with child data objects and metadata.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :connectionProfile => GoogleApi.Datastream.V1.Model.ConnectionProfile.t() | nil,
          :connectionProfileName => String.t() | nil,
          :fullHierarchy => boolean() | nil,
          :hierarchyDepth => integer() | nil,
          :mysqlRdbms => GoogleApi.Datastream.V1.Model.MysqlRdbms.t() | nil,
          :oracleRdbms => GoogleApi.Datastream.V1.Model.OracleRdbms.t() | nil,
          :postgresqlRdbms => GoogleApi.Datastream.V1.Model.PostgresqlRdbms.t() | nil
        }

  field(:connectionProfile, as: GoogleApi.Datastream.V1.Model.ConnectionProfile)
  field(:connectionProfileName)
  field(:fullHierarchy)
  field(:hierarchyDepth)
  field(:mysqlRdbms, as: GoogleApi.Datastream.V1.Model.MysqlRdbms)
  field(:oracleRdbms, as: GoogleApi.Datastream.V1.Model.OracleRdbms)
  field(:postgresqlRdbms, as: GoogleApi.Datastream.V1.Model.PostgresqlRdbms)
end

defimpl Poison.Decoder, for: GoogleApi.Datastream.V1.Model.DiscoverConnectionProfileRequest do
  def decode(value, options) do
    GoogleApi.Datastream.V1.Model.DiscoverConnectionProfileRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Datastream.V1.Model.DiscoverConnectionProfileRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
