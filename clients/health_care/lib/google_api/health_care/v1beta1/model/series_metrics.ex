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

defmodule GoogleApi.HealthCare.V1beta1.Model.SeriesMetrics do
  @moduledoc """
  SeriesMetrics contains metrics describing a DICOM series.

  ## Attributes

  *   `blobStorageSizeBytes` (*type:* `String.t`, *default:* `nil`) - Total blob storage bytes for all instances in the series.
  *   `instanceCount` (*type:* `String.t`, *default:* `nil`) - Number of instances in the series.
  *   `series` (*type:* `String.t`, *default:* `nil`) - The series resource path. For example, `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/dicomStores/{dicom_store_id}/dicomWeb/studies/{study_uid}/series/{series_uid}`.
  *   `structuredStorageSizeBytes` (*type:* `String.t`, *default:* `nil`) - Total structured storage bytes for all instances in the series.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :blobStorageSizeBytes => String.t() | nil,
          :instanceCount => String.t() | nil,
          :series => String.t() | nil,
          :structuredStorageSizeBytes => String.t() | nil
        }

  field(:blobStorageSizeBytes)
  field(:instanceCount)
  field(:series)
  field(:structuredStorageSizeBytes)
end

defimpl Poison.Decoder, for: GoogleApi.HealthCare.V1beta1.Model.SeriesMetrics do
  def decode(value, options) do
    GoogleApi.HealthCare.V1beta1.Model.SeriesMetrics.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.HealthCare.V1beta1.Model.SeriesMetrics do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
