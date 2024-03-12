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

defmodule GoogleApi.SASPortal.V1alpha1.Model.SasPortalMigrateOrganizationResponse do
  @moduledoc """
  Response for [MigrateOrganization]. [spectrum.sas.portal.v1alpha1.Provisioning.MigrateOrganization].

  ## Attributes

  *   `deploymentAssociation` (*type:* `list(GoogleApi.SASPortal.V1alpha1.Model.SasPortalDeploymentAssociation.t)`, *default:* `nil`) - Optional. A list of deployment association that were created for the migration, or current associations if they already exist.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :deploymentAssociation =>
            list(GoogleApi.SASPortal.V1alpha1.Model.SasPortalDeploymentAssociation.t()) | nil
        }

  field(:deploymentAssociation,
    as: GoogleApi.SASPortal.V1alpha1.Model.SasPortalDeploymentAssociation,
    type: :list
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.SASPortal.V1alpha1.Model.SasPortalMigrateOrganizationResponse do
  def decode(value, options) do
    GoogleApi.SASPortal.V1alpha1.Model.SasPortalMigrateOrganizationResponse.decode(value, options)
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.SASPortal.V1alpha1.Model.SasPortalMigrateOrganizationResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
