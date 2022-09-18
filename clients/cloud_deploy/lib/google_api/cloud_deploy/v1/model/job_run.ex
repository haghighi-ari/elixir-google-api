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

defmodule GoogleApi.CloudDeploy.V1.Model.JobRun do
  @moduledoc """
  A `JobRun` resource in the Google Cloud Deploy API. A `JobRun` contains information of a single `Rollout` job evaluation.

  ## Attributes

  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Time at which the `JobRun` was created.
  *   `deployJobRun` (*type:* `GoogleApi.CloudDeploy.V1.Model.DeployJobRun.t`, *default:* `nil`) - Output only. Information specific to a deploy `JobRun`.
  *   `endTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Time at which the `JobRun` ended.
  *   `etag` (*type:* `String.t`, *default:* `nil`) - Output only. This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
  *   `jobId` (*type:* `String.t`, *default:* `nil`) - Output only. ID of the `Rollout` job this `JobRun` corresponds to.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Optional. Name of the `JobRun`. Format is projects/{project}/locations/{location}/ deliveryPipelines/{deliveryPipeline}/releases/{releases}/rollouts/ {rollouts}/jobRuns/{uuid}.
  *   `phaseId` (*type:* `String.t`, *default:* `nil`) - Output only. ID of the `Rollout` phase this `JobRun` belongs in.
  *   `startTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Time at which the `JobRun` was started.
  *   `state` (*type:* `String.t`, *default:* `nil`) - Output only. The current state of the `JobRun`.
  *   `uid` (*type:* `String.t`, *default:* `nil`) - Output only. Unique identifier of the `JobRun`.
  *   `verifyJobRun` (*type:* `GoogleApi.CloudDeploy.V1.Model.VerifyJobRun.t`, *default:* `nil`) - Output only. Information specific to a verify `JobRun`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :createTime => DateTime.t() | nil,
          :deployJobRun => GoogleApi.CloudDeploy.V1.Model.DeployJobRun.t() | nil,
          :endTime => DateTime.t() | nil,
          :etag => String.t() | nil,
          :jobId => String.t() | nil,
          :name => String.t() | nil,
          :phaseId => String.t() | nil,
          :startTime => DateTime.t() | nil,
          :state => String.t() | nil,
          :uid => String.t() | nil,
          :verifyJobRun => GoogleApi.CloudDeploy.V1.Model.VerifyJobRun.t() | nil
        }

  field(:createTime, as: DateTime)
  field(:deployJobRun, as: GoogleApi.CloudDeploy.V1.Model.DeployJobRun)
  field(:endTime, as: DateTime)
  field(:etag)
  field(:jobId)
  field(:name)
  field(:phaseId)
  field(:startTime, as: DateTime)
  field(:state)
  field(:uid)
  field(:verifyJobRun, as: GoogleApi.CloudDeploy.V1.Model.VerifyJobRun)
end

defimpl Poison.Decoder, for: GoogleApi.CloudDeploy.V1.Model.JobRun do
  def decode(value, options) do
    GoogleApi.CloudDeploy.V1.Model.JobRun.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudDeploy.V1.Model.JobRun do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
