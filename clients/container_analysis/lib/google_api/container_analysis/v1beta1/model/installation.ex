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

defmodule GoogleApi.ContainerAnalysis.V1beta1.Model.Installation do
  @moduledoc """
  This represents how a particular software package may be installed on a system.

  ## Attributes

  *   `architecture` (*type:* `String.t`, *default:* `nil`) - Output only. The CPU architecture for which packages in this distribution channel were built. Architecture will be blank for language packages.
  *   `cpeUri` (*type:* `String.t`, *default:* `nil`) - Output only. The cpe_uri in [CPE format](https://cpe.mitre.org/specification/) denoting the package manager version distributing a package. The cpe_uri will be blank for language packages.
  *   `license` (*type:* `GoogleApi.ContainerAnalysis.V1beta1.Model.License.t`, *default:* `nil`) - Licenses that have been declared by the authors of the package.
  *   `location` (*type:* `list(GoogleApi.ContainerAnalysis.V1beta1.Model.Location.t)`, *default:* `nil`) - All of the places within the filesystem versions of this package have been found.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Required. Output only. The name of the installed package.
  *   `packageType` (*type:* `String.t`, *default:* `nil`) - Output only. The type of package; whether native or non native (e.g., ruby gems, node.js packages, etc.).
  *   `version` (*type:* `GoogleApi.ContainerAnalysis.V1beta1.Model.Version.t`, *default:* `nil`) - Output only. The version of the package.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :architecture => String.t() | nil,
          :cpeUri => String.t() | nil,
          :license => GoogleApi.ContainerAnalysis.V1beta1.Model.License.t() | nil,
          :location => list(GoogleApi.ContainerAnalysis.V1beta1.Model.Location.t()) | nil,
          :name => String.t() | nil,
          :packageType => String.t() | nil,
          :version => GoogleApi.ContainerAnalysis.V1beta1.Model.Version.t() | nil
        }

  field(:architecture)
  field(:cpeUri)
  field(:license, as: GoogleApi.ContainerAnalysis.V1beta1.Model.License)
  field(:location, as: GoogleApi.ContainerAnalysis.V1beta1.Model.Location, type: :list)
  field(:name)
  field(:packageType)
  field(:version, as: GoogleApi.ContainerAnalysis.V1beta1.Model.Version)
end

defimpl Poison.Decoder, for: GoogleApi.ContainerAnalysis.V1beta1.Model.Installation do
  def decode(value, options) do
    GoogleApi.ContainerAnalysis.V1beta1.Model.Installation.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContainerAnalysis.V1beta1.Model.Installation do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
