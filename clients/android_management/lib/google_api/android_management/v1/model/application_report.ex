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

defmodule GoogleApi.AndroidManagement.V1.Model.ApplicationReport do
  @moduledoc """
  Information reported about an installed app.

  ## Attributes

  *   `applicationSource` (*type:* `String.t`, *default:* `nil`) - The source of the package.
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - The display name of the app.
  *   `events` (*type:* `list(GoogleApi.AndroidManagement.V1.Model.ApplicationEvent.t)`, *default:* `nil`) - The list of app events which have occurred in the last 30 hours.
  *   `installerPackageName` (*type:* `String.t`, *default:* `nil`) - The package name of the app that installed this app.
  *   `keyedAppStates` (*type:* `list(GoogleApi.AndroidManagement.V1.Model.KeyedAppState.t)`, *default:* `nil`) - List of keyed app states reported by the app.
  *   `packageName` (*type:* `String.t`, *default:* `nil`) - Package name of the app.
  *   `packageSha256Hash` (*type:* `String.t`, *default:* `nil`) - The SHA-256 hash of the app's APK file, which can be used to verify the app hasn't been modified. Each byte of the hash value is represented as a two-digit hexadecimal number.
  *   `signingKeyCertFingerprints` (*type:* `list(String.t)`, *default:* `nil`) - The SHA-1 hash of each android.content.pm.Signature (https://developer.android.com/reference/android/content/pm/Signature.html) associated with the app package. Each byte of each hash value is represented as a two-digit hexadecimal number.
  *   `state` (*type:* `String.t`, *default:* `nil`) - Application state.
  *   `userFacingType` (*type:* `String.t`, *default:* `nil`) - Whether the app is user facing.
  *   `versionCode` (*type:* `integer()`, *default:* `nil`) - The app version code, which can be used to determine whether one version is more recent than another.
  *   `versionName` (*type:* `String.t`, *default:* `nil`) - The app version as displayed to the user.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :applicationSource => String.t() | nil,
          :displayName => String.t() | nil,
          :events => list(GoogleApi.AndroidManagement.V1.Model.ApplicationEvent.t()) | nil,
          :installerPackageName => String.t() | nil,
          :keyedAppStates => list(GoogleApi.AndroidManagement.V1.Model.KeyedAppState.t()) | nil,
          :packageName => String.t() | nil,
          :packageSha256Hash => String.t() | nil,
          :signingKeyCertFingerprints => list(String.t()) | nil,
          :state => String.t() | nil,
          :userFacingType => String.t() | nil,
          :versionCode => integer() | nil,
          :versionName => String.t() | nil
        }

  field(:applicationSource)
  field(:displayName)
  field(:events, as: GoogleApi.AndroidManagement.V1.Model.ApplicationEvent, type: :list)
  field(:installerPackageName)
  field(:keyedAppStates, as: GoogleApi.AndroidManagement.V1.Model.KeyedAppState, type: :list)
  field(:packageName)
  field(:packageSha256Hash)
  field(:signingKeyCertFingerprints, type: :list)
  field(:state)
  field(:userFacingType)
  field(:versionCode)
  field(:versionName)
end

defimpl Poison.Decoder, for: GoogleApi.AndroidManagement.V1.Model.ApplicationReport do
  def decode(value, options) do
    GoogleApi.AndroidManagement.V1.Model.ApplicationReport.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AndroidManagement.V1.Model.ApplicationReport do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
