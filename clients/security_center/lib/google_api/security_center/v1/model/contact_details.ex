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

defmodule GoogleApi.SecurityCenter.V1.Model.ContactDetails do
  @moduledoc """
  Details about specific contacts

  ## Attributes

  *   `contacts` (*type:* `list(GoogleApi.SecurityCenter.V1.Model.Contact.t)`, *default:* `nil`) - A list of contacts
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :contacts => list(GoogleApi.SecurityCenter.V1.Model.Contact.t()) | nil
        }

  field(:contacts, as: GoogleApi.SecurityCenter.V1.Model.Contact, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.SecurityCenter.V1.Model.ContactDetails do
  def decode(value, options) do
    GoogleApi.SecurityCenter.V1.Model.ContactDetails.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.SecurityCenter.V1.Model.ContactDetails do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
