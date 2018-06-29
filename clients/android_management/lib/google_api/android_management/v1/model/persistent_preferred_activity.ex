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

defmodule GoogleApi.AndroidManagement.V1.Model.PersistentPreferredActivity do
  @moduledoc """
  A default activity for handling intents that match a particular intent filter.

  ## Attributes

  - actions ([String.t]): The intent actions to match in the filter. If any actions are included in the filter, then an intent&#39;s action must be one of those values for it to match. If no actions are included, the intent action is ignored. Defaults to: `null`.
  - categories ([String.t]): The intent categories to match in the filter. An intent includes the categories that it requires, all of which must be included in the filter in order to match. In other words, adding a category to the filter has no impact on matching unless that category is specified in the intent. Defaults to: `null`.
  - receiverActivity (String.t): The activity that should be the default intent handler. This should be an Android component name, e.g. com.android.enterprise.app/.MainActivity. Alternatively, the value may be the package name of an app, which causes Android Device Policy to choose an appropriate activity from the app to handle the intent. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :actions => list(any()),
          :categories => list(any()),
          :receiverActivity => any()
        }

  field(:actions, type: :list)
  field(:categories, type: :list)
  field(:receiverActivity)
end

defimpl Poison.Decoder, for: GoogleApi.AndroidManagement.V1.Model.PersistentPreferredActivity do
  def decode(value, options) do
    GoogleApi.AndroidManagement.V1.Model.PersistentPreferredActivity.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AndroidManagement.V1.Model.PersistentPreferredActivity do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
