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

defmodule GoogleApi.Language.V1.Model.ModerateTextResponse do
  @moduledoc """
  The document moderation response message.

  ## Attributes

  *   `moderationCategories` (*type:* `list(GoogleApi.Language.V1.Model.ClassificationCategory.t)`, *default:* `nil`) - Harmful and sensitive categories representing the input document.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :moderationCategories =>
            list(GoogleApi.Language.V1.Model.ClassificationCategory.t()) | nil
        }

  field(:moderationCategories, as: GoogleApi.Language.V1.Model.ClassificationCategory, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Language.V1.Model.ModerateTextResponse do
  def decode(value, options) do
    GoogleApi.Language.V1.Model.ModerateTextResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Language.V1.Model.ModerateTextResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
