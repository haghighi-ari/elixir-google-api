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

defmodule GoogleApi.SQLAdmin.V1.Model.DatabaseInstance do
  @moduledoc """
  A Cloud SQL instance resource.

  ## Attributes

  *   `selfLink` (*type:* `String.t`, *default:* `nil`) - The URI of this resource.
  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The time when the instance was created in [RFC 3339](https://tools.ietf.org/html/rfc3339) format, for example `2012-11-15T16:19:00.094Z`.
  *   `state` (*type:* `String.t`, *default:* `nil`) - The current serving state of the Cloud SQL instance.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Name of the Cloud SQL instance. This does not include the project ID.
  *   `dnsName` (*type:* `String.t`, *default:* `nil`) - Output only. The dns name of the instance.
  *   `currentDiskSize` (*type:* `String.t`, *default:* `nil`) - The current disk usage of the instance in bytes. This property has been deprecated. Use the "cloudsql.googleapis.com/database/disk/bytes_used" metric in Cloud Monitoring API instead. Please see [this announcement](https://groups.google.com/d/msg/google-cloud-sql-announce/I_7-F9EBhT0/BtvFtdFeAgAJ) for details.
  *   `availableMaintenanceVersions` (*type:* `list(String.t)`, *default:* `nil`) - Output only. List all maintenance versions applicable on the instance
  *   `masterInstanceName` (*type:* `String.t`, *default:* `nil`) - The name of the instance which will act as primary in the replication setup.
  *   `gceZone` (*type:* `String.t`, *default:* `nil`) - The Compute Engine zone that the instance is currently serving from. This value could be different from the zone that was specified when the instance was created if the instance has failed over to its secondary zone. WARNING: Changing this might restart the instance.
  *   `diskEncryptionStatus` (*type:* `GoogleApi.SQLAdmin.V1.Model.DiskEncryptionStatus.t`, *default:* `nil`) - Disk encryption status specific to an instance.
  *   `kind` (*type:* `String.t`, *default:* `nil`) - This is always `sql#instance`.
  *   `connectionName` (*type:* `String.t`, *default:* `nil`) - Connection name of the Cloud SQL instance used in connection strings.
  *   `ipv6Address` (*type:* `String.t`, *default:* `nil`) - The IPv6 address assigned to the instance. (Deprecated) This property was applicable only to First Generation instances.
  *   `satisfiesPzs` (*type:* `boolean()`, *default:* `nil`) - The status indicating if instance satisfiesPzs. Reserved for future use.
  *   `sqlNetworkArchitecture` (*type:* `String.t`, *default:* `nil`) - 
  *   `instanceType` (*type:* `String.t`, *default:* `nil`) - The instance type.
  *   `backendType` (*type:* `String.t`, *default:* `nil`) - The backend type. `SECOND_GEN`: Cloud SQL database instance. `EXTERNAL`: A database server that is not managed by Google. This property is read-only; use the `tier` property in the `settings` object to determine the database type.
  *   `replicaNames` (*type:* `list(String.t)`, *default:* `nil`) - The replicas of the instance.
  *   `writeEndpoint` (*type:* `String.t`, *default:* `nil`) - Output only. The dns name of the primary instance in a replication group.
  *   `region` (*type:* `String.t`, *default:* `nil`) - The geographical region of the Cloud SQL instance. It can be one of the [regions](https://cloud.google.com/sql/docs/mysql/locations#location-r) where Cloud SQL operates: For example, `asia-east1`, `europe-west1`, and `us-central1`. The default value is `us-central1`.
  *   `rootPassword` (*type:* `String.t`, *default:* `nil`) - Initial root password. Use only on creation. You must set root passwords before you can connect to PostgreSQL instances.
  *   `maintenanceVersion` (*type:* `String.t`, *default:* `nil`) - The current software version on the instance.
  *   `serverCaCert` (*type:* `GoogleApi.SQLAdmin.V1.Model.SslCert.t`, *default:* `nil`) - SSL configuration.
  *   `serviceAccountEmailAddress` (*type:* `String.t`, *default:* `nil`) - The service account email address assigned to the instance.\\This property is read-only.
  *   `project` (*type:* `String.t`, *default:* `nil`) - The project ID of the project containing the Cloud SQL instance. The Google apps domain is prefixed if applicable.
  *   `secondaryGceZone` (*type:* `String.t`, *default:* `nil`) - The Compute Engine zone that the failover instance is currently serving from for a regional instance. This value could be different from the zone that was specified when the instance was created if the instance has failed over to its secondary/failover zone.
  *   `onPremisesConfiguration` (*type:* `GoogleApi.SQLAdmin.V1.Model.OnPremisesConfiguration.t`, *default:* `nil`) - Configuration specific to on-premises instances.
  *   `settings` (*type:* `GoogleApi.SQLAdmin.V1.Model.Settings.t`, *default:* `nil`) - The user settings.
  *   `databaseInstalledVersion` (*type:* `String.t`, *default:* `nil`) - Output only. Stores the current database version running on the instance including minor version such as `MYSQL_8_0_18`.
  *   `geminiConfig` (*type:* `GoogleApi.SQLAdmin.V1.Model.GeminiInstanceConfig.t`, *default:* `nil`) - Gemini instance configuration.
  *   `databaseVersion` (*type:* `String.t`, *default:* `nil`) - The database engine type and version. The `databaseVersion` field cannot be changed after instance creation.
  *   `ipAddresses` (*type:* `list(GoogleApi.SQLAdmin.V1.Model.IpMapping.t)`, *default:* `nil`) - The assigned IP addresses for the instance.
  *   `diskEncryptionConfiguration` (*type:* `GoogleApi.SQLAdmin.V1.Model.DiskEncryptionConfiguration.t`, *default:* `nil`) - Disk encryption configuration specific to an instance.
  *   `suspensionReason` (*type:* `list(String.t)`, *default:* `nil`) - If the instance state is SUSPENDED, the reason for the suspension.
  *   `pscServiceAttachmentLink` (*type:* `String.t`, *default:* `nil`) - Output only. The link to service attachment of PSC instance.
  *   `failoverReplica` (*type:* `GoogleApi.SQLAdmin.V1.Model.DatabaseInstanceFailoverReplica.t`, *default:* `nil`) - The name and status of the failover replica.
  *   `scheduledMaintenance` (*type:* `GoogleApi.SQLAdmin.V1.Model.SqlScheduledMaintenance.t`, *default:* `nil`) - The start time of any upcoming scheduled maintenance for this instance.
  *   `outOfDiskReport` (*type:* `GoogleApi.SQLAdmin.V1.Model.SqlOutOfDiskReport.t`, *default:* `nil`) - This field represents the report generated by the proactive database wellness job for OutOfDisk issues. * Writers: * the proactive database wellness job for OOD. * Readers: * the proactive database wellness job
  *   `replicationCluster` (*type:* `GoogleApi.SQLAdmin.V1.Model.ReplicationCluster.t`, *default:* `nil`) - Optional. A primary instance and disaster recovery (DR) replica pair. A DR replica is a cross-region replica that you designate for failover in the event that the primary instance experiences regional failure. Only applicable to MySQL.
  *   `maxDiskSize` (*type:* `String.t`, *default:* `nil`) - The maximum disk size of the instance in bytes.
  *   `etag` (*type:* `String.t`, *default:* `nil`) - This field is deprecated and will be removed from a future version of the API. Use the `settings.settingsVersion` field instead.
  *   `replicaConfiguration` (*type:* `GoogleApi.SQLAdmin.V1.Model.ReplicaConfiguration.t`, *default:* `nil`) - Configuration specific to failover replicas and read replicas.
  *   `primaryDnsName` (*type:* `String.t`, *default:* `nil`) - Output only. DEPRECATED: please use write_endpoint instead.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :selfLink => String.t() | nil,
          :createTime => DateTime.t() | nil,
          :state => String.t() | nil,
          :name => String.t() | nil,
          :dnsName => String.t() | nil,
          :currentDiskSize => String.t() | nil,
          :availableMaintenanceVersions => list(String.t()) | nil,
          :masterInstanceName => String.t() | nil,
          :gceZone => String.t() | nil,
          :diskEncryptionStatus => GoogleApi.SQLAdmin.V1.Model.DiskEncryptionStatus.t() | nil,
          :kind => String.t() | nil,
          :connectionName => String.t() | nil,
          :ipv6Address => String.t() | nil,
          :satisfiesPzs => boolean() | nil,
          :sqlNetworkArchitecture => String.t() | nil,
          :instanceType => String.t() | nil,
          :backendType => String.t() | nil,
          :replicaNames => list(String.t()) | nil,
          :writeEndpoint => String.t() | nil,
          :region => String.t() | nil,
          :rootPassword => String.t() | nil,
          :maintenanceVersion => String.t() | nil,
          :serverCaCert => GoogleApi.SQLAdmin.V1.Model.SslCert.t() | nil,
          :serviceAccountEmailAddress => String.t() | nil,
          :project => String.t() | nil,
          :secondaryGceZone => String.t() | nil,
          :onPremisesConfiguration =>
            GoogleApi.SQLAdmin.V1.Model.OnPremisesConfiguration.t() | nil,
          :settings => GoogleApi.SQLAdmin.V1.Model.Settings.t() | nil,
          :databaseInstalledVersion => String.t() | nil,
          :geminiConfig => GoogleApi.SQLAdmin.V1.Model.GeminiInstanceConfig.t() | nil,
          :databaseVersion => String.t() | nil,
          :ipAddresses => list(GoogleApi.SQLAdmin.V1.Model.IpMapping.t()) | nil,
          :diskEncryptionConfiguration =>
            GoogleApi.SQLAdmin.V1.Model.DiskEncryptionConfiguration.t() | nil,
          :suspensionReason => list(String.t()) | nil,
          :pscServiceAttachmentLink => String.t() | nil,
          :failoverReplica =>
            GoogleApi.SQLAdmin.V1.Model.DatabaseInstanceFailoverReplica.t() | nil,
          :scheduledMaintenance => GoogleApi.SQLAdmin.V1.Model.SqlScheduledMaintenance.t() | nil,
          :outOfDiskReport => GoogleApi.SQLAdmin.V1.Model.SqlOutOfDiskReport.t() | nil,
          :replicationCluster => GoogleApi.SQLAdmin.V1.Model.ReplicationCluster.t() | nil,
          :maxDiskSize => String.t() | nil,
          :etag => String.t() | nil,
          :replicaConfiguration => GoogleApi.SQLAdmin.V1.Model.ReplicaConfiguration.t() | nil,
          :primaryDnsName => String.t() | nil
        }

  field(:selfLink)
  field(:createTime, as: DateTime)
  field(:state)
  field(:name)
  field(:dnsName)
  field(:currentDiskSize)
  field(:availableMaintenanceVersions, type: :list)
  field(:masterInstanceName)
  field(:gceZone)
  field(:diskEncryptionStatus, as: GoogleApi.SQLAdmin.V1.Model.DiskEncryptionStatus)
  field(:kind)
  field(:connectionName)
  field(:ipv6Address)
  field(:satisfiesPzs)
  field(:sqlNetworkArchitecture)
  field(:instanceType)
  field(:backendType)
  field(:replicaNames, type: :list)
  field(:writeEndpoint)
  field(:region)
  field(:rootPassword)
  field(:maintenanceVersion)
  field(:serverCaCert, as: GoogleApi.SQLAdmin.V1.Model.SslCert)
  field(:serviceAccountEmailAddress)
  field(:project)
  field(:secondaryGceZone)
  field(:onPremisesConfiguration, as: GoogleApi.SQLAdmin.V1.Model.OnPremisesConfiguration)
  field(:settings, as: GoogleApi.SQLAdmin.V1.Model.Settings)
  field(:databaseInstalledVersion)
  field(:geminiConfig, as: GoogleApi.SQLAdmin.V1.Model.GeminiInstanceConfig)
  field(:databaseVersion)
  field(:ipAddresses, as: GoogleApi.SQLAdmin.V1.Model.IpMapping, type: :list)
  field(:diskEncryptionConfiguration, as: GoogleApi.SQLAdmin.V1.Model.DiskEncryptionConfiguration)
  field(:suspensionReason, type: :list)
  field(:pscServiceAttachmentLink)
  field(:failoverReplica, as: GoogleApi.SQLAdmin.V1.Model.DatabaseInstanceFailoverReplica)
  field(:scheduledMaintenance, as: GoogleApi.SQLAdmin.V1.Model.SqlScheduledMaintenance)
  field(:outOfDiskReport, as: GoogleApi.SQLAdmin.V1.Model.SqlOutOfDiskReport)
  field(:replicationCluster, as: GoogleApi.SQLAdmin.V1.Model.ReplicationCluster)
  field(:maxDiskSize)
  field(:etag)
  field(:replicaConfiguration, as: GoogleApi.SQLAdmin.V1.Model.ReplicaConfiguration)
  field(:primaryDnsName)
end

defimpl Poison.Decoder, for: GoogleApi.SQLAdmin.V1.Model.DatabaseInstance do
  def decode(value, options) do
    GoogleApi.SQLAdmin.V1.Model.DatabaseInstance.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.SQLAdmin.V1.Model.DatabaseInstance do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
