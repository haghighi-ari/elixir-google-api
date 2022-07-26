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

defmodule GoogleApi.SQLAdmin.V1beta4.Model.Settings do
  @moduledoc """
  Database instance settings.

  ## Attributes

  *   `activationPolicy` (*type:* `String.t`, *default:* `nil`) - The activation policy specifies when the instance is activated; it is applicable only when the instance state is RUNNABLE. Valid values: * `ALWAYS`: The instance is on, and remains so even in the absence of connection requests. * `NEVER`: The instance is off; it is not activated, even if a connection request arrives.
  *   `activeDirectoryConfig` (*type:* `GoogleApi.SQLAdmin.V1beta4.Model.SqlActiveDirectoryConfig.t`, *default:* `nil`) - Active Directory configuration, relevant only for Cloud SQL for SQL Server.
  *   `authorizedGaeApplications` (*type:* `list(String.t)`, *default:* `nil`) - The App Engine app IDs that can access this instance. (Deprecated) Applied to First Generation instances only.
  *   `availabilityType` (*type:* `String.t`, *default:* `nil`) - Availability type. Potential values: * `ZONAL`: The instance serves data from only one zone. Outages in that zone affect data accessibility. * `REGIONAL`: The instance can serve data from more than one zone in a region (it is highly available)./ For more information, see [Overview of the High Availability Configuration](https://cloud.google.com/sql/docs/mysql/high-availability).
  *   `backupConfiguration` (*type:* `GoogleApi.SQLAdmin.V1beta4.Model.BackupConfiguration.t`, *default:* `nil`) - The daily backup configuration for the instance.
  *   `collation` (*type:* `String.t`, *default:* `nil`) - The name of server Instance collation.
  *   `crashSafeReplicationEnabled` (*type:* `boolean()`, *default:* `nil`) - Configuration specific to read replica instances. Indicates whether database flags for crash-safe replication are enabled. This property was only applicable to First Generation instances.
  *   `dataDiskSizeGb` (*type:* `String.t`, *default:* `nil`) - The size of data disk, in GB. The data disk size minimum is 10GB.
  *   `dataDiskType` (*type:* `String.t`, *default:* `nil`) - The type of data disk: `PD_SSD` (default) or `PD_HDD`. Not used for First Generation instances.
  *   `databaseFlags` (*type:* `list(GoogleApi.SQLAdmin.V1beta4.Model.DatabaseFlags.t)`, *default:* `nil`) - The database flags passed to the instance at startup.
  *   `databaseReplicationEnabled` (*type:* `boolean()`, *default:* `nil`) - Configuration specific to read replica instances. Indicates whether replication is enabled or not. WARNING: Changing this restarts the instance.
  *   `deletionProtectionEnabled` (*type:* `boolean()`, *default:* `nil`) - Configuration to protect against accidental instance deletion.
  *   `denyMaintenancePeriods` (*type:* `list(GoogleApi.SQLAdmin.V1beta4.Model.DenyMaintenancePeriod.t)`, *default:* `nil`) - Deny maintenance periods
  *   `insightsConfig` (*type:* `GoogleApi.SQLAdmin.V1beta4.Model.InsightsConfig.t`, *default:* `nil`) - Insights configuration, for now relevant only for Postgres.
  *   `ipConfiguration` (*type:* `GoogleApi.SQLAdmin.V1beta4.Model.IpConfiguration.t`, *default:* `nil`) - The settings for IP Management. This allows to enable or disable the instance IP and manage which external networks can connect to the instance. The IPv4 address cannot be disabled for Second Generation instances.
  *   `kind` (*type:* `String.t`, *default:* `nil`) - This is always `sql#settings`.
  *   `locationPreference` (*type:* `GoogleApi.SQLAdmin.V1beta4.Model.LocationPreference.t`, *default:* `nil`) - The location preference settings. This allows the instance to be located as near as possible to either an App Engine app or Compute Engine zone for better performance. App Engine co-location was only applicable to First Generation instances.
  *   `maintenanceWindow` (*type:* `GoogleApi.SQLAdmin.V1beta4.Model.MaintenanceWindow.t`, *default:* `nil`) - The maintenance window for this instance. This specifies when the instance can be restarted for maintenance purposes.
  *   `passwordValidationPolicy` (*type:* `GoogleApi.SQLAdmin.V1beta4.Model.PasswordValidationPolicy.t`, *default:* `nil`) - The local user password validation policy of the instance.
  *   `pricingPlan` (*type:* `String.t`, *default:* `nil`) - The pricing plan for this instance. This can be either `PER_USE` or `PACKAGE`. Only `PER_USE` is supported for Second Generation instances.
  *   `replicationType` (*type:* `String.t`, *default:* `nil`) - The type of replication this instance uses. This can be either `ASYNCHRONOUS` or `SYNCHRONOUS`. (Deprecated) This property was only applicable to First Generation instances.
  *   `settingsVersion` (*type:* `String.t`, *default:* `nil`) - The version of instance settings. This is a required field for update method to make sure concurrent updates are handled properly. During update, use the most recent settingsVersion value for this instance and do not try to update this value.
  *   `sqlServerAuditConfig` (*type:* `GoogleApi.SQLAdmin.V1beta4.Model.SqlServerAuditConfig.t`, *default:* `nil`) - SQL Server specific audit configuration.
  *   `storageAutoResize` (*type:* `boolean()`, *default:* `nil`) - Configuration to increase storage size automatically. The default value is true.
  *   `storageAutoResizeLimit` (*type:* `String.t`, *default:* `nil`) - The maximum size to which storage capacity can be automatically increased. The default value is 0, which specifies that there is no limit.
  *   `tier` (*type:* `String.t`, *default:* `nil`) - The tier (or machine type) for this instance, for example `db-custom-1-3840`. WARNING: Changing this restarts the instance.
  *   `userLabels` (*type:* `map()`, *default:* `nil`) - User-provided labels, represented as a dictionary where each label is a single key value pair.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :activationPolicy => String.t() | nil,
          :activeDirectoryConfig =>
            GoogleApi.SQLAdmin.V1beta4.Model.SqlActiveDirectoryConfig.t() | nil,
          :authorizedGaeApplications => list(String.t()) | nil,
          :availabilityType => String.t() | nil,
          :backupConfiguration => GoogleApi.SQLAdmin.V1beta4.Model.BackupConfiguration.t() | nil,
          :collation => String.t() | nil,
          :crashSafeReplicationEnabled => boolean() | nil,
          :dataDiskSizeGb => String.t() | nil,
          :dataDiskType => String.t() | nil,
          :databaseFlags => list(GoogleApi.SQLAdmin.V1beta4.Model.DatabaseFlags.t()) | nil,
          :databaseReplicationEnabled => boolean() | nil,
          :deletionProtectionEnabled => boolean() | nil,
          :denyMaintenancePeriods =>
            list(GoogleApi.SQLAdmin.V1beta4.Model.DenyMaintenancePeriod.t()) | nil,
          :insightsConfig => GoogleApi.SQLAdmin.V1beta4.Model.InsightsConfig.t() | nil,
          :ipConfiguration => GoogleApi.SQLAdmin.V1beta4.Model.IpConfiguration.t() | nil,
          :kind => String.t() | nil,
          :locationPreference => GoogleApi.SQLAdmin.V1beta4.Model.LocationPreference.t() | nil,
          :maintenanceWindow => GoogleApi.SQLAdmin.V1beta4.Model.MaintenanceWindow.t() | nil,
          :passwordValidationPolicy =>
            GoogleApi.SQLAdmin.V1beta4.Model.PasswordValidationPolicy.t() | nil,
          :pricingPlan => String.t() | nil,
          :replicationType => String.t() | nil,
          :settingsVersion => String.t() | nil,
          :sqlServerAuditConfig =>
            GoogleApi.SQLAdmin.V1beta4.Model.SqlServerAuditConfig.t() | nil,
          :storageAutoResize => boolean() | nil,
          :storageAutoResizeLimit => String.t() | nil,
          :tier => String.t() | nil,
          :userLabels => map() | nil
        }

  field(:activationPolicy)
  field(:activeDirectoryConfig, as: GoogleApi.SQLAdmin.V1beta4.Model.SqlActiveDirectoryConfig)
  field(:authorizedGaeApplications, type: :list)
  field(:availabilityType)
  field(:backupConfiguration, as: GoogleApi.SQLAdmin.V1beta4.Model.BackupConfiguration)
  field(:collation)
  field(:crashSafeReplicationEnabled)
  field(:dataDiskSizeGb)
  field(:dataDiskType)
  field(:databaseFlags, as: GoogleApi.SQLAdmin.V1beta4.Model.DatabaseFlags, type: :list)
  field(:databaseReplicationEnabled)
  field(:deletionProtectionEnabled)

  field(:denyMaintenancePeriods,
    as: GoogleApi.SQLAdmin.V1beta4.Model.DenyMaintenancePeriod,
    type: :list
  )

  field(:insightsConfig, as: GoogleApi.SQLAdmin.V1beta4.Model.InsightsConfig)
  field(:ipConfiguration, as: GoogleApi.SQLAdmin.V1beta4.Model.IpConfiguration)
  field(:kind)
  field(:locationPreference, as: GoogleApi.SQLAdmin.V1beta4.Model.LocationPreference)
  field(:maintenanceWindow, as: GoogleApi.SQLAdmin.V1beta4.Model.MaintenanceWindow)
  field(:passwordValidationPolicy, as: GoogleApi.SQLAdmin.V1beta4.Model.PasswordValidationPolicy)
  field(:pricingPlan)
  field(:replicationType)
  field(:settingsVersion)
  field(:sqlServerAuditConfig, as: GoogleApi.SQLAdmin.V1beta4.Model.SqlServerAuditConfig)
  field(:storageAutoResize)
  field(:storageAutoResizeLimit)
  field(:tier)
  field(:userLabels, type: :map)
end

defimpl Poison.Decoder, for: GoogleApi.SQLAdmin.V1beta4.Model.Settings do
  def decode(value, options) do
    GoogleApi.SQLAdmin.V1beta4.Model.Settings.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.SQLAdmin.V1beta4.Model.Settings do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
