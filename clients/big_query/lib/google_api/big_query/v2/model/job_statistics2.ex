# Copyright 2017 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.BigQuery.V2.Model.JobStatistics2 do
  @moduledoc """


  ## Attributes

  - billingTier (integer()): [Output-only] Billing tier for the job. Defaults to: `null`.
  - cacheHit (boolean()): [Output-only] Whether the query result was fetched from the query cache. Defaults to: `null`.
  - ddlOperationPerformed (String.t): The DDL operation performed, possibly dependent on the pre-existence of the DDL target. Possible values (new values might be added in the future): \&quot;CREATE\&quot;: The query created the DDL target. \&quot;SKIP\&quot;: No-op. Example cases: the query is CREATE TABLE IF NOT EXISTS while the table already exists, or the query is DROP TABLE IF EXISTS while the table does not exist. \&quot;REPLACE\&quot;: The query replaced the DDL target. Example case: the query is CREATE OR REPLACE TABLE, and the table already exists. \&quot;DROP\&quot;: The query deleted the DDL target. Defaults to: `null`.
  - ddlTargetRoutine (RoutineReference): The DDL target routine. Present only for CREATE/DROP FUNCTION/PROCEDURE queries. Defaults to: `null`.
  - ddlTargetTable (TableReference): The DDL target table. Present only for CREATE/DROP TABLE/VIEW queries. Defaults to: `null`.
  - estimatedBytesProcessed (String.t): [Output-only] The original estimate of bytes processed for the job. Defaults to: `null`.
  - modelTraining (BigQueryModelTraining): [Output-only, Beta] Information about create model query job progress. Defaults to: `null`.
  - modelTrainingCurrentIteration (integer()): [Output-only, Beta] Deprecated; do not use. Defaults to: `null`.
  - modelTrainingExpectedTotalIteration (String.t): [Output-only, Beta] Deprecated; do not use. Defaults to: `null`.
  - numDmlAffectedRows (String.t): [Output-only] The number of rows affected by a DML statement. Present only for DML statements INSERT, UPDATE or DELETE. Defaults to: `null`.
  - queryPlan ([ExplainQueryStage]): [Output-only] Describes execution plan for the query. Defaults to: `null`.
  - referencedTables ([TableReference]): [Output-only] Referenced tables for the job. Queries that reference more than 50 tables will not have a complete list. Defaults to: `null`.
  - reservationUsage ([JobStatisticsReservationUsage]): [Output-only] Job resource usage breakdown by reservation. Defaults to: `null`.
  - schema (TableSchema): [Output-only] The schema of the results. Present only for successful dry run of non-legacy SQL queries. Defaults to: `null`.
  - statementType (String.t): The type of query statement, if valid. Possible values (new values might be added in the future): \&quot;SELECT\&quot;: SELECT query. \&quot;INSERT\&quot;: INSERT query; see https://cloud.google.com/bigquery/docs/reference/standard-sql/data-manipulation-language. \&quot;UPDATE\&quot;: UPDATE query; see https://cloud.google.com/bigquery/docs/reference/standard-sql/data-manipulation-language. \&quot;DELETE\&quot;: DELETE query; see https://cloud.google.com/bigquery/docs/reference/standard-sql/data-manipulation-language. \&quot;MERGE\&quot;: MERGE query; see https://cloud.google.com/bigquery/docs/reference/standard-sql/data-manipulation-language. \&quot;CREATE_TABLE\&quot;: CREATE [OR REPLACE] TABLE without AS SELECT. \&quot;CREATE_TABLE_AS_SELECT\&quot;: CREATE [OR REPLACE] TABLE ... AS SELECT ... . \&quot;DROP_TABLE\&quot;: DROP TABLE query. \&quot;CREATE_VIEW\&quot;: CREATE [OR REPLACE] VIEW ... AS SELECT ... . \&quot;DROP_VIEW\&quot;: DROP VIEW query. \&quot;CREATE_FUNCTION\&quot;: CREATE FUNCTION query. \&quot;DROP_FUNCTION\&quot; : DROP FUNCTION query. \&quot;ALTER_TABLE\&quot;: ALTER TABLE query. \&quot;ALTER_VIEW\&quot;: ALTER VIEW query. Defaults to: `null`.
  - timeline ([QueryTimelineSample]): [Output-only] [Beta] Describes a timeline of job execution. Defaults to: `null`.
  - totalBytesBilled (String.t): [Output-only] Total bytes billed for the job. Defaults to: `null`.
  - totalBytesProcessed (String.t): [Output-only] Total bytes processed for the job. Defaults to: `null`.
  - totalBytesProcessedAccuracy (String.t): [Output-only] For dry-run jobs, totalBytesProcessed is an estimate and this field specifies the accuracy of the estimate. Possible values can be: UNKNOWN: accuracy of the estimate is unknown. PRECISE: estimate is precise. LOWER_BOUND: estimate is lower bound of what the query would cost. UPPER_BOUND: estimate is upper bound of what the query would cost. Defaults to: `null`.
  - totalPartitionsProcessed (String.t): [Output-only] Total number of partitions processed from all partitioned tables referenced in the job. Defaults to: `null`.
  - totalSlotMs (String.t): [Output-only] Slot-milliseconds for the job. Defaults to: `null`.
  - undeclaredQueryParameters ([QueryParameter]): Standard SQL only: list of undeclared query parameters detected during a dry run validation. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :billingTier => any(),
          :cacheHit => any(),
          :ddlOperationPerformed => any(),
          :ddlTargetRoutine => GoogleApi.BigQuery.V2.Model.RoutineReference.t(),
          :ddlTargetTable => GoogleApi.BigQuery.V2.Model.TableReference.t(),
          :estimatedBytesProcessed => any(),
          :modelTraining => GoogleApi.BigQuery.V2.Model.BigQueryModelTraining.t(),
          :modelTrainingCurrentIteration => any(),
          :modelTrainingExpectedTotalIteration => any(),
          :numDmlAffectedRows => any(),
          :queryPlan => list(GoogleApi.BigQuery.V2.Model.ExplainQueryStage.t()),
          :referencedTables => list(GoogleApi.BigQuery.V2.Model.TableReference.t()),
          :reservationUsage =>
            list(GoogleApi.BigQuery.V2.Model.JobStatisticsReservationUsage.t()),
          :schema => GoogleApi.BigQuery.V2.Model.TableSchema.t(),
          :statementType => any(),
          :timeline => list(GoogleApi.BigQuery.V2.Model.QueryTimelineSample.t()),
          :totalBytesBilled => any(),
          :totalBytesProcessed => any(),
          :totalBytesProcessedAccuracy => any(),
          :totalPartitionsProcessed => any(),
          :totalSlotMs => any(),
          :undeclaredQueryParameters => list(GoogleApi.BigQuery.V2.Model.QueryParameter.t())
        }

  field(:billingTier)
  field(:cacheHit)
  field(:ddlOperationPerformed)
  field(:ddlTargetRoutine, as: GoogleApi.BigQuery.V2.Model.RoutineReference)
  field(:ddlTargetTable, as: GoogleApi.BigQuery.V2.Model.TableReference)
  field(:estimatedBytesProcessed)
  field(:modelTraining, as: GoogleApi.BigQuery.V2.Model.BigQueryModelTraining)
  field(:modelTrainingCurrentIteration)
  field(:modelTrainingExpectedTotalIteration)
  field(:numDmlAffectedRows)
  field(:queryPlan, as: GoogleApi.BigQuery.V2.Model.ExplainQueryStage, type: :list)
  field(:referencedTables, as: GoogleApi.BigQuery.V2.Model.TableReference, type: :list)

  field(
    :reservationUsage,
    as: GoogleApi.BigQuery.V2.Model.JobStatisticsReservationUsage,
    type: :list
  )

  field(:schema, as: GoogleApi.BigQuery.V2.Model.TableSchema)
  field(:statementType)
  field(:timeline, as: GoogleApi.BigQuery.V2.Model.QueryTimelineSample, type: :list)
  field(:totalBytesBilled)
  field(:totalBytesProcessed)
  field(:totalBytesProcessedAccuracy)
  field(:totalPartitionsProcessed)
  field(:totalSlotMs)
  field(:undeclaredQueryParameters, as: GoogleApi.BigQuery.V2.Model.QueryParameter, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.BigQuery.V2.Model.JobStatistics2 do
  def decode(value, options) do
    GoogleApi.BigQuery.V2.Model.JobStatistics2.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.BigQuery.V2.Model.JobStatistics2 do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
