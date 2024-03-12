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

defmodule GoogleApi.HealthCare.V1beta1.Model.AnnotationStore do
  @moduledoc """
  An Annotation store that can store annotation resources such as labels and tags for text, image and audio.

  ## Attributes

  *   `labels` (*type:* `map()`, *default:* `nil`) - Optional. User-supplied key-value pairs used to organize Annotation stores. Label keys must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE regular expression: \\p{Ll}\\p{Lo}{0,62} Label values must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE regular expression: [\\p{Ll}\\p{Lo}\\p{N}_-]{0,63} No more than 64 labels can be associated with a given store.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Identifier. Resource name of the Annotation store, of the form `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/annotationStores/{annotation_store_id}`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :labels => map() | nil,
          :name => String.t() | nil
        }

  field(:labels, type: :map)
  field(:name)
end

defimpl Poison.Decoder, for: GoogleApi.HealthCare.V1beta1.Model.AnnotationStore do
  def decode(value, options) do
    GoogleApi.HealthCare.V1beta1.Model.AnnotationStore.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.HealthCare.V1beta1.Model.AnnotationStore do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
