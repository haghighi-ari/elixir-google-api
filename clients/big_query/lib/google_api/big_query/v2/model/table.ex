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

defmodule GoogleApi.BigQuery.V2.Model.Table do
  @moduledoc """


  ## Attributes

  *   `tableConstraints` (*type:* `GoogleApi.BigQuery.V2.Model.TableConstraints.t`, *default:* `nil`) - Optional. Tables Primary Key and Foreign Key information
  *   `selfLink` (*type:* `String.t`, *default:* `nil`) - Output only. A URL that can be used to access this resource again.
  *   `labels` (*type:* `map()`, *default:* `nil`) - The labels associated with this table. You can use these to organize and group your tables. Label keys and values can be no longer than 63 characters, can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. Label values are optional. Label keys must start with a letter and each label in the list must have a different key.
  *   `externalCatalogTableOptions` (*type:* `GoogleApi.BigQuery.V2.Model.ExternalCatalogTableOptions.t`, *default:* `nil`) - Optional. Options defining open source compatible table.
  *   `snapshotDefinition` (*type:* `GoogleApi.BigQuery.V2.Model.SnapshotDefinition.t`, *default:* `nil`) - Output only. Contains information about the snapshot. This value is set via snapshot creation.
  *   `cloneDefinition` (*type:* `GoogleApi.BigQuery.V2.Model.CloneDefinition.t`, *default:* `nil`) - Output only. Contains information about the clone. This value is set via the clone operation.
  *   `lastModifiedTime` (*type:* `String.t`, *default:* `nil`) - Output only. The time when this table was last modified, in milliseconds since the epoch.
  *   `numLongTermLogicalBytes` (*type:* `String.t`, *default:* `nil`) - Output only. Number of logical bytes that are more than 90 days old.
  *   `view` (*type:* `GoogleApi.BigQuery.V2.Model.ViewDefinition.t`, *default:* `nil`) - Optional. The view definition.
  *   `kind` (*type:* `String.t`, *default:* `bigquery#table`) - The type of resource ID.
  *   `defaultRoundingMode` (*type:* `String.t`, *default:* `nil`) - Optional. Defines the default rounding mode specification of new decimal fields (NUMERIC OR BIGNUMERIC) in the table. During table creation or update, if a decimal field is added to this table without an explicit rounding mode specified, then the field inherits the table default rounding mode. Changing this field doesn't affect existing fields.
  *   `description` (*type:* `String.t`, *default:* `nil`) - Optional. A user-friendly description of this table.
  *   `friendlyName` (*type:* `String.t`, *default:* `nil`) - Optional. A descriptive name for this table.
  *   `tableReference` (*type:* `GoogleApi.BigQuery.V2.Model.TableReference.t`, *default:* `nil`) - Required. Reference describing the ID of this table.
  *   `numTimeTravelPhysicalBytes` (*type:* `String.t`, *default:* `nil`) - Output only. Number of physical bytes used by time travel storage (deleted or changed data). This data is not kept in real time, and might be delayed by a few seconds to a few minutes.
  *   `replicas` (*type:* `list(GoogleApi.BigQuery.V2.Model.TableReference.t)`, *default:* `nil`) - Optional. Output only. Table references of all replicas currently active on the table.
  *   `clustering` (*type:* `GoogleApi.BigQuery.V2.Model.Clustering.t`, *default:* `nil`) - Clustering specification for the table. Must be specified with time-based partitioning, data in the table will be first partitioned and subsequently clustered.
  *   `timePartitioning` (*type:* `GoogleApi.BigQuery.V2.Model.TimePartitioning.t`, *default:* `nil`) - If specified, configures time-based partitioning for this table.
  *   `biglakeConfiguration` (*type:* `GoogleApi.BigQuery.V2.Model.BigLakeConfiguration.t`, *default:* `nil`) - Optional. Specifies the configuration of a BigLake managed table.
  *   `numLongTermBytes` (*type:* `String.t`, *default:* `nil`) - Output only. The number of logical bytes in the table that are considered "long-term storage".
  *   `numTotalPhysicalBytes` (*type:* `String.t`, *default:* `nil`) - Output only. The physical size of this table in bytes. This also includes storage used for time travel. This data is not kept in real time, and might be delayed by a few seconds to a few minutes.
  *   `numPartitions` (*type:* `String.t`, *default:* `nil`) - Output only. The number of partitions present in the table or materialized view. This data is not kept in real time, and might be delayed by a few seconds to a few minutes.
  *   `resourceTags` (*type:* `map()`, *default:* `nil`) - [Optional] The tags associated with this table. Tag keys are globally unique. See additional information on [tags](https://cloud.google.com/iam/docs/tags-access-control#definitions). An object containing a list of "key": value pairs. The key is the namespaced friendly name of the tag key, e.g. "12345/environment" where 12345 is parent id. The value is the friendly short name of the tag value, e.g. "production".
  *   `creationTime` (*type:* `String.t`, *default:* `nil`) - Output only. The time when this table was created, in milliseconds since the epoch.
  *   `tableReplicationInfo` (*type:* `GoogleApi.BigQuery.V2.Model.TableReplicationInfo.t`, *default:* `nil`) - Optional. Table replication info for table created `AS REPLICA` DDL like: `CREATE MATERIALIZED VIEW mv1 AS REPLICA OF src_mv`
  *   `numLongTermPhysicalBytes` (*type:* `String.t`, *default:* `nil`) - Output only. Number of physical bytes more than 90 days old. This data is not kept in real time, and might be delayed by a few seconds to a few minutes.
  *   `externalDataConfiguration` (*type:* `GoogleApi.BigQuery.V2.Model.ExternalDataConfiguration.t`, *default:* `nil`) - Optional. Describes the data format, location, and other properties of a table stored outside of BigQuery. By defining these properties, the data source can then be queried as if it were a standard BigQuery table.
  *   `requirePartitionFilter` (*type:* `boolean()`, *default:* `false`) - Optional. If set to true, queries over this table require a partition filter that can be used for partition elimination to be specified.
  *   `materializedViewStatus` (*type:* `GoogleApi.BigQuery.V2.Model.MaterializedViewStatus.t`, *default:* `nil`) - Output only. The materialized view status.
  *   `schema` (*type:* `GoogleApi.BigQuery.V2.Model.TableSchema.t`, *default:* `nil`) - Optional. Describes the schema of this table.
  *   `defaultCollation` (*type:* `String.t`, *default:* `nil`) - Optional. Defines the default collation specification of new STRING fields in the table. During table creation or update, if a STRING field is added to this table without explicit collation specified, then the table inherits the table default collation. A change to this field affects only fields added afterwards, and does not alter the existing fields. The following values are supported: * 'und:ci': undetermined locale, case insensitive. * '': empty string. Default to case-sensitive behavior.
  *   `location` (*type:* `String.t`, *default:* `nil`) - Output only. The geographic location where the table resides. This value is inherited from the dataset.
  *   `numBytes` (*type:* `String.t`, *default:* `nil`) - Output only. The size of this table in logical bytes, excluding any data in the streaming buffer.
  *   `streamingBuffer` (*type:* `GoogleApi.BigQuery.V2.Model.Streamingbuffer.t`, *default:* `nil`) - Output only. Contains information regarding this table's streaming buffer, if one is present. This field will be absent if the table is not being streamed to or if there is no data in the streaming buffer.
  *   `maxStaleness` (*type:* `String.t`, *default:* `nil`) - Optional. The maximum staleness of data that could be returned when the table (or stale MV) is queried. Staleness encoded as a string encoding of sql IntervalValue type.
  *   `expirationTime` (*type:* `String.t`, *default:* `nil`) - Optional. The time when this table expires, in milliseconds since the epoch. If not present, the table will persist indefinitely. Expired tables will be deleted and their storage reclaimed. The defaultTableExpirationMs property of the encapsulating dataset can be used to set a default expirationTime on newly created tables.
  *   `materializedView` (*type:* `GoogleApi.BigQuery.V2.Model.MaterializedViewDefinition.t`, *default:* `nil`) - Optional. The materialized view definition.
  *   `type` (*type:* `String.t`, *default:* `nil`) - Output only. Describes the table type. The following values are supported: * `TABLE`: A normal BigQuery table. * `VIEW`: A virtual table defined by a SQL query. * `EXTERNAL`: A table that references data stored in an external storage system, such as Google Cloud Storage. * `MATERIALIZED_VIEW`: A precomputed view defined by a SQL query. * `SNAPSHOT`: An immutable BigQuery table that preserves the contents of a base table at a particular time. See additional information on [table snapshots](/bigquery/docs/table-snapshots-intro). The default value is `TABLE`.
  *   `numActivePhysicalBytes` (*type:* `String.t`, *default:* `nil`) - Output only. Number of physical bytes less than 90 days old. This data is not kept in real time, and might be delayed by a few seconds to a few minutes.
  *   `partitionDefinition` (*type:* `GoogleApi.BigQuery.V2.Model.PartitioningDefinition.t`, *default:* `nil`) - Output only. The partition information for all table formats, including managed partitioned tables, hive partitioned tables, and iceberg partitioned tables.
  *   `rangePartitioning` (*type:* `GoogleApi.BigQuery.V2.Model.RangePartitioning.t`, *default:* `nil`) - If specified, configures range partitioning for this table.
  *   `numPhysicalBytes` (*type:* `String.t`, *default:* `nil`) - Output only. The physical size of this table in bytes. This includes storage used for time travel.
  *   `numRows` (*type:* `String.t`, *default:* `nil`) - Output only. The number of rows of data in this table, excluding any data in the streaming buffer.
  *   `etag` (*type:* `String.t`, *default:* `nil`) - Output only. A hash of this resource.
  *   `numActiveLogicalBytes` (*type:* `String.t`, *default:* `nil`) - Output only. Number of logical bytes that are less than 90 days old.
  *   `model` (*type:* `GoogleApi.BigQuery.V2.Model.ModelDefinition.t`, *default:* `nil`) - Deprecated.
  *   `numTotalLogicalBytes` (*type:* `String.t`, *default:* `nil`) - Output only. Total number of logical bytes in the table or materialized view.
  *   `id` (*type:* `String.t`, *default:* `nil`) - Output only. An opaque ID uniquely identifying the table.
  *   `restrictions` (*type:* `GoogleApi.BigQuery.V2.Model.RestrictionConfig.t`, *default:* `nil`) - Optional. Output only. Restriction config for table. If set, restrict certain accesses on the table based on the config. See [Data egress](/bigquery/docs/analytics-hub-introduction#data_egress) for more details.
  *   `encryptionConfiguration` (*type:* `GoogleApi.BigQuery.V2.Model.EncryptionConfiguration.t`, *default:* `nil`) - Custom encryption configuration (e.g., Cloud KMS keys).
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :tableConstraints => GoogleApi.BigQuery.V2.Model.TableConstraints.t() | nil,
          :selfLink => String.t() | nil,
          :labels => map() | nil,
          :externalCatalogTableOptions =>
            GoogleApi.BigQuery.V2.Model.ExternalCatalogTableOptions.t() | nil,
          :snapshotDefinition => GoogleApi.BigQuery.V2.Model.SnapshotDefinition.t() | nil,
          :cloneDefinition => GoogleApi.BigQuery.V2.Model.CloneDefinition.t() | nil,
          :lastModifiedTime => String.t() | nil,
          :numLongTermLogicalBytes => String.t() | nil,
          :view => GoogleApi.BigQuery.V2.Model.ViewDefinition.t() | nil,
          :kind => String.t() | nil,
          :defaultRoundingMode => String.t() | nil,
          :description => String.t() | nil,
          :friendlyName => String.t() | nil,
          :tableReference => GoogleApi.BigQuery.V2.Model.TableReference.t() | nil,
          :numTimeTravelPhysicalBytes => String.t() | nil,
          :replicas => list(GoogleApi.BigQuery.V2.Model.TableReference.t()) | nil,
          :clustering => GoogleApi.BigQuery.V2.Model.Clustering.t() | nil,
          :timePartitioning => GoogleApi.BigQuery.V2.Model.TimePartitioning.t() | nil,
          :biglakeConfiguration => GoogleApi.BigQuery.V2.Model.BigLakeConfiguration.t() | nil,
          :numLongTermBytes => String.t() | nil,
          :numTotalPhysicalBytes => String.t() | nil,
          :numPartitions => String.t() | nil,
          :resourceTags => map() | nil,
          :creationTime => String.t() | nil,
          :tableReplicationInfo => GoogleApi.BigQuery.V2.Model.TableReplicationInfo.t() | nil,
          :numLongTermPhysicalBytes => String.t() | nil,
          :externalDataConfiguration =>
            GoogleApi.BigQuery.V2.Model.ExternalDataConfiguration.t() | nil,
          :requirePartitionFilter => boolean() | nil,
          :materializedViewStatus => GoogleApi.BigQuery.V2.Model.MaterializedViewStatus.t() | nil,
          :schema => GoogleApi.BigQuery.V2.Model.TableSchema.t() | nil,
          :defaultCollation => String.t() | nil,
          :location => String.t() | nil,
          :numBytes => String.t() | nil,
          :streamingBuffer => GoogleApi.BigQuery.V2.Model.Streamingbuffer.t() | nil,
          :maxStaleness => String.t() | nil,
          :expirationTime => String.t() | nil,
          :materializedView => GoogleApi.BigQuery.V2.Model.MaterializedViewDefinition.t() | nil,
          :type => String.t() | nil,
          :numActivePhysicalBytes => String.t() | nil,
          :partitionDefinition => GoogleApi.BigQuery.V2.Model.PartitioningDefinition.t() | nil,
          :rangePartitioning => GoogleApi.BigQuery.V2.Model.RangePartitioning.t() | nil,
          :numPhysicalBytes => String.t() | nil,
          :numRows => String.t() | nil,
          :etag => String.t() | nil,
          :numActiveLogicalBytes => String.t() | nil,
          :model => GoogleApi.BigQuery.V2.Model.ModelDefinition.t() | nil,
          :numTotalLogicalBytes => String.t() | nil,
          :id => String.t() | nil,
          :restrictions => GoogleApi.BigQuery.V2.Model.RestrictionConfig.t() | nil,
          :encryptionConfiguration =>
            GoogleApi.BigQuery.V2.Model.EncryptionConfiguration.t() | nil
        }

  field(:tableConstraints, as: GoogleApi.BigQuery.V2.Model.TableConstraints)
  field(:selfLink)
  field(:labels, type: :map)
  field(:externalCatalogTableOptions, as: GoogleApi.BigQuery.V2.Model.ExternalCatalogTableOptions)
  field(:snapshotDefinition, as: GoogleApi.BigQuery.V2.Model.SnapshotDefinition)
  field(:cloneDefinition, as: GoogleApi.BigQuery.V2.Model.CloneDefinition)
  field(:lastModifiedTime)
  field(:numLongTermLogicalBytes)
  field(:view, as: GoogleApi.BigQuery.V2.Model.ViewDefinition)
  field(:kind)
  field(:defaultRoundingMode)
  field(:description)
  field(:friendlyName)
  field(:tableReference, as: GoogleApi.BigQuery.V2.Model.TableReference)
  field(:numTimeTravelPhysicalBytes)
  field(:replicas, as: GoogleApi.BigQuery.V2.Model.TableReference, type: :list)
  field(:clustering, as: GoogleApi.BigQuery.V2.Model.Clustering)
  field(:timePartitioning, as: GoogleApi.BigQuery.V2.Model.TimePartitioning)
  field(:biglakeConfiguration, as: GoogleApi.BigQuery.V2.Model.BigLakeConfiguration)
  field(:numLongTermBytes)
  field(:numTotalPhysicalBytes)
  field(:numPartitions)
  field(:resourceTags, type: :map)
  field(:creationTime)
  field(:tableReplicationInfo, as: GoogleApi.BigQuery.V2.Model.TableReplicationInfo)
  field(:numLongTermPhysicalBytes)
  field(:externalDataConfiguration, as: GoogleApi.BigQuery.V2.Model.ExternalDataConfiguration)
  field(:requirePartitionFilter)
  field(:materializedViewStatus, as: GoogleApi.BigQuery.V2.Model.MaterializedViewStatus)
  field(:schema, as: GoogleApi.BigQuery.V2.Model.TableSchema)
  field(:defaultCollation)
  field(:location)
  field(:numBytes)
  field(:streamingBuffer, as: GoogleApi.BigQuery.V2.Model.Streamingbuffer)
  field(:maxStaleness)
  field(:expirationTime)
  field(:materializedView, as: GoogleApi.BigQuery.V2.Model.MaterializedViewDefinition)
  field(:type)
  field(:numActivePhysicalBytes)
  field(:partitionDefinition, as: GoogleApi.BigQuery.V2.Model.PartitioningDefinition)
  field(:rangePartitioning, as: GoogleApi.BigQuery.V2.Model.RangePartitioning)
  field(:numPhysicalBytes)
  field(:numRows)
  field(:etag)
  field(:numActiveLogicalBytes)
  field(:model, as: GoogleApi.BigQuery.V2.Model.ModelDefinition)
  field(:numTotalLogicalBytes)
  field(:id)
  field(:restrictions, as: GoogleApi.BigQuery.V2.Model.RestrictionConfig)
  field(:encryptionConfiguration, as: GoogleApi.BigQuery.V2.Model.EncryptionConfiguration)
end

defimpl Poison.Decoder, for: GoogleApi.BigQuery.V2.Model.Table do
  def decode(value, options) do
    GoogleApi.BigQuery.V2.Model.Table.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.BigQuery.V2.Model.Table do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
