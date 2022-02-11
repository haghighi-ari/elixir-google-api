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

defmodule GoogleApi.CloudFunctions.V1.Model.CloudFunction do
  @moduledoc """
  Describes a Cloud Function that contains user computation executed in response to an event. It encapsulate function and triggers configurations. Next tag: 36

  ## Attributes

  *   `ingressSettings` (*type:* `String.t`, *default:* `nil`) - The ingress settings for the function, controlling what traffic can reach it.
  *   `availableMemoryMb` (*type:* `integer()`, *default:* `nil`) - The amount of memory in MB available for a function. Defaults to 256MB.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The last update timestamp of a Cloud Function.
  *   `secretEnvironmentVariables` (*type:* `list(GoogleApi.CloudFunctions.V1.Model.SecretEnvVar.t)`, *default:* `nil`) - Secret environment variables configuration.
  *   `versionId` (*type:* `String.t`, *default:* `nil`) - Output only. The version identifier of the Cloud Function. Each deployment attempt results in a new version of a function being created.
  *   `serviceAccountEmail` (*type:* `String.t`, *default:* `nil`) - The email of the function's service account. If empty, defaults to `{project_id}@appspot.gserviceaccount.com`.
  *   `secretVolumes` (*type:* `list(GoogleApi.CloudFunctions.V1.Model.SecretVolume.t)`, *default:* `nil`) - Secret volumes configuration.
  *   `description` (*type:* `String.t`, *default:* `nil`) - User-provided description of a function.
  *   `buildWorkerPool` (*type:* `String.t`, *default:* `nil`) - Name of the Cloud Build Custom Worker Pool that should be used to build the function. The format of this field is `projects/{project}/locations/{region}/workerPools/{workerPool}` where `{project}` and `{region}` are the project id and region respectively where the worker pool is defined and `{workerPool}` is the short name of the worker pool. If the project id is not the same as the function, then the Cloud Functions Service Agent (`service-@gcf-admin-robot.iam.gserviceaccount.com`) must be granted the role Cloud Build Custom Workers Builder (`roles/cloudbuild.customworkers.builder`) in the project.
  *   `name` (*type:* `String.t`, *default:* `nil`) - A user-defined name of the function. Function names must be unique globally and match pattern `projects/*/locations/*/functions/*`
  *   `httpsTrigger` (*type:* `GoogleApi.CloudFunctions.V1.Model.HttpsTrigger.t`, *default:* `nil`) - An HTTPS endpoint type of source that can be triggered via URL.
  *   `status` (*type:* `String.t`, *default:* `nil`) - Output only. Status of the function deployment.
  *   `dockerRegistry` (*type:* `String.t`, *default:* `nil`) - Docker Registry to use for this deployment. If `docker_repository` field is specified, this field will be automatically set as `ARTIFACT_REGISTRY`. If unspecified, it currently defaults to `CONTAINER_REGISTRY`. This field may be overridden by the backend for eligible deployments.
  *   `network` (*type:* `String.t`, *default:* `nil`) - The VPC Network that this cloud function can connect to. It can be either the fully-qualified URI, or the short name of the network resource. If the short network name is used, the network must belong to the same project. Otherwise, it must belong to a project within the same organization. The format of this field is either `projects/{project}/global/networks/{network}` or `{network}`, where `{project}` is a project id where the network is defined, and `{network}` is the short name of the network. This field is mutually exclusive with `vpc_connector` and will be replaced by it. See [the VPC documentation](https://cloud.google.com/compute/docs/vpc) for more information on connecting Cloud projects.
  *   `buildId` (*type:* `String.t`, *default:* `nil`) - Output only. The Cloud Build ID of the latest successful deployment of the function.
  *   `eventTrigger` (*type:* `GoogleApi.CloudFunctions.V1.Model.EventTrigger.t`, *default:* `nil`) - A source that fires events in response to a condition in another service.
  *   `vpcConnectorEgressSettings` (*type:* `String.t`, *default:* `nil`) - The egress settings for the connector, controlling what traffic is diverted through it.
  *   `maxInstances` (*type:* `integer()`, *default:* `nil`) - The limit on the maximum number of function instances that may coexist at a given time. In some cases, such as rapid traffic surges, Cloud Functions may, for a short period of time, create more instances than the specified max instances limit. If your function cannot tolerate this temporary behavior, you may want to factor in a safety margin and set a lower max instances value than your function can tolerate. See the [Max Instances](https://cloud.google.com/functions/docs/max-instances) Guide for more details.
  *   `buildEnvironmentVariables` (*type:* `map()`, *default:* `nil`) - Build environment variables that shall be available during build time.
  *   `vpcConnector` (*type:* `String.t`, *default:* `nil`) - The VPC Network Connector that this cloud function can connect to. It can be either the fully-qualified URI, or the short name of the network connector resource. The format of this field is `projects/*/locations/*/connectors/*` This field is mutually exclusive with `network` field and will eventually replace it. See [the VPC documentation](https://cloud.google.com/compute/docs/vpc) for more information on connecting Cloud projects.
  *   `entryPoint` (*type:* `String.t`, *default:* `nil`) - The name of the function (as defined in source code) that will be executed. Defaults to the resource name suffix, if not specified. For backward compatibility, if function with given name is not found, then the system will try to use function named "function". For Node.js this is name of a function exported by the module specified in `source_location`.
  *   `environmentVariables` (*type:* `map()`, *default:* `nil`) - Environment variables that shall be available during function execution.
  *   `dockerRepository` (*type:* `String.t`, *default:* `nil`) - User managed repository created in Artifact Registry optionally with a customer managed encryption key. If specified, deployments will use Artifact Registry. If unspecified and the deployment is eligible to use Artifact Registry, GCF will create and use a repository named 'gcf-artifacts' for every deployed region. This is the repository to which the function docker image will be pushed after it is built by Cloud Build. It must match the pattern `projects/{project}/locations/{location}/repositories/{repository}`. Cross-project repositories are not supported. Cross-location repositories are not supported. Repository format must be 'DOCKER'.
  *   `sourceToken` (*type:* `String.t`, *default:* `nil`) - Input only. An identifier for Firebase function sources. Disclaimer: This field is only supported for Firebase function deployments.
  *   `runtime` (*type:* `String.t`, *default:* `nil`) - The runtime in which to run the function. Required when deploying a new function, optional when updating an existing function. For a complete list of possible choices, see the [`gcloud` command reference](https://cloud.google.com/sdk/gcloud/reference/functions/deploy#--runtime).
  *   `labels` (*type:* `map()`, *default:* `nil`) - Labels associated with this Cloud Function.
  *   `buildName` (*type:* `String.t`, *default:* `nil`) - Output only. The Cloud Build Name of the function deployment. `projects//locations//builds/`.
  *   `sourceRepository` (*type:* `GoogleApi.CloudFunctions.V1.Model.SourceRepository.t`, *default:* `nil`) - **Beta Feature** The source repository where a function is hosted.
  *   `minInstances` (*type:* `integer()`, *default:* `nil`) - A lower bound for the number function instances that may coexist at a given time.
  *   `sourceArchiveUrl` (*type:* `String.t`, *default:* `nil`) - The Google Cloud Storage URL, starting with `gs://`, pointing to the zip archive which contains the function.
  *   `sourceUploadUrl` (*type:* `String.t`, *default:* `nil`) - The Google Cloud Storage signed URL used for source uploading, generated by calling [google.cloud.functions.v1.GenerateUploadUrl]. The signature is validated on write methods (Create, Update) The signature is stripped from the Function object on read methods (Get, List)
  *   `timeout` (*type:* `String.t`, *default:* `nil`) - The function execution timeout. Execution is considered failed and can be terminated if the function is not completed at the end of the timeout period. Defaults to 60 seconds.
  *   `kmsKeyName` (*type:* `String.t`, *default:* `nil`) - Resource name of a KMS crypto key (managed by the user) used to encrypt/decrypt function resources. It must match the pattern `projects/{project}/locations/{location}/keyRings/{key_ring}/cryptoKeys/{crypto_key}`. If specified, you must also provide an artifact registry repository using the `docker_repository` field that was created with the same KMS crypto key. The following service accounts need to be granted the role 'Cloud KMS CryptoKey Encrypter/Decrypter (roles/cloudkms.cryptoKeyEncrypterDecrypter)' on the Key/KeyRing/Project/Organization (least access preferred). 1. Google Cloud Functions service account (service-{project_number}@gcf-admin-robot.iam.gserviceaccount.com) - Required to protect the function's image. 2. Google Storage service account (service-{project_number}@gs-project-accounts.iam.gserviceaccount.com) - Required to protect the function's source code. If this service account does not exist, deploying a function without a KMS key or retrieving the service agent name provisions it. For more information, see https://cloud.google.com/storage/docs/projects#service-agents and https://cloud.google.com/storage/docs/getting-service-agent#gsutil. Google Cloud Functions delegates access to service agents to protect function resources in internal projects that are not accessible by the end user.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :ingressSettings => String.t() | nil,
          :availableMemoryMb => integer() | nil,
          :updateTime => DateTime.t() | nil,
          :secretEnvironmentVariables =>
            list(GoogleApi.CloudFunctions.V1.Model.SecretEnvVar.t()) | nil,
          :versionId => String.t() | nil,
          :serviceAccountEmail => String.t() | nil,
          :secretVolumes => list(GoogleApi.CloudFunctions.V1.Model.SecretVolume.t()) | nil,
          :description => String.t() | nil,
          :buildWorkerPool => String.t() | nil,
          :name => String.t() | nil,
          :httpsTrigger => GoogleApi.CloudFunctions.V1.Model.HttpsTrigger.t() | nil,
          :status => String.t() | nil,
          :dockerRegistry => String.t() | nil,
          :network => String.t() | nil,
          :buildId => String.t() | nil,
          :eventTrigger => GoogleApi.CloudFunctions.V1.Model.EventTrigger.t() | nil,
          :vpcConnectorEgressSettings => String.t() | nil,
          :maxInstances => integer() | nil,
          :buildEnvironmentVariables => map() | nil,
          :vpcConnector => String.t() | nil,
          :entryPoint => String.t() | nil,
          :environmentVariables => map() | nil,
          :dockerRepository => String.t() | nil,
          :sourceToken => String.t() | nil,
          :runtime => String.t() | nil,
          :labels => map() | nil,
          :buildName => String.t() | nil,
          :sourceRepository => GoogleApi.CloudFunctions.V1.Model.SourceRepository.t() | nil,
          :minInstances => integer() | nil,
          :sourceArchiveUrl => String.t() | nil,
          :sourceUploadUrl => String.t() | nil,
          :timeout => String.t() | nil,
          :kmsKeyName => String.t() | nil
        }

  field(:ingressSettings)
  field(:availableMemoryMb)
  field(:updateTime, as: DateTime)

  field(:secretEnvironmentVariables,
    as: GoogleApi.CloudFunctions.V1.Model.SecretEnvVar,
    type: :list
  )

  field(:versionId)
  field(:serviceAccountEmail)
  field(:secretVolumes, as: GoogleApi.CloudFunctions.V1.Model.SecretVolume, type: :list)
  field(:description)
  field(:buildWorkerPool)
  field(:name)
  field(:httpsTrigger, as: GoogleApi.CloudFunctions.V1.Model.HttpsTrigger)
  field(:status)
  field(:dockerRegistry)
  field(:network)
  field(:buildId)
  field(:eventTrigger, as: GoogleApi.CloudFunctions.V1.Model.EventTrigger)
  field(:vpcConnectorEgressSettings)
  field(:maxInstances)
  field(:buildEnvironmentVariables, type: :map)
  field(:vpcConnector)
  field(:entryPoint)
  field(:environmentVariables, type: :map)
  field(:dockerRepository)
  field(:sourceToken)
  field(:runtime)
  field(:labels, type: :map)
  field(:buildName)
  field(:sourceRepository, as: GoogleApi.CloudFunctions.V1.Model.SourceRepository)
  field(:minInstances)
  field(:sourceArchiveUrl)
  field(:sourceUploadUrl)
  field(:timeout)
  field(:kmsKeyName)
end

defimpl Poison.Decoder, for: GoogleApi.CloudFunctions.V1.Model.CloudFunction do
  def decode(value, options) do
    GoogleApi.CloudFunctions.V1.Model.CloudFunction.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudFunctions.V1.Model.CloudFunction do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
