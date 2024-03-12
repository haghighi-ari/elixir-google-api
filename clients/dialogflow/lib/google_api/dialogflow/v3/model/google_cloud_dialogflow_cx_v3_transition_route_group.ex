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

defmodule GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3TransitionRouteGroup do
  @moduledoc """
  A TransitionRouteGroup represents a group of `TransitionRoutes` to be used by a Page.

  ## Attributes

  *   `displayName` (*type:* `String.t`, *default:* `nil`) - Required. The human-readable name of the transition route group, unique within the flow. The display name can be no longer than 30 characters.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The unique identifier of the transition route group. TransitionRouteGroups.CreateTransitionRouteGroup populates the name automatically. Format: `projects//locations//agents//flows//transitionRouteGroups/` .
  *   `transitionRoutes` (*type:* `list(GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3TransitionRoute.t)`, *default:* `nil`) - Transition routes associated with the TransitionRouteGroup.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :displayName => String.t() | nil,
          :name => String.t() | nil,
          :transitionRoutes =>
            list(GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3TransitionRoute.t()) | nil
        }

  field(:displayName)
  field(:name)

  field(:transitionRoutes,
    as: GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3TransitionRoute,
    type: :list
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3TransitionRouteGroup do
  def decode(value, options) do
    GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3TransitionRouteGroup.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3TransitionRouteGroup do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
