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

defmodule GoogleApi.Forms.V1.Model.CorrectAnswers do
  @moduledoc """
  The answer key for a question.

  ## Attributes

  *   `answers` (*type:* `list(GoogleApi.Forms.V1.Model.CorrectAnswer.t)`, *default:* `nil`) - A list of correct answers. A quiz response can be automatically graded based on these answers. For single-valued questions, a response is marked correct if it matches any value in this list (in other words, multiple correct answers are possible). For multiple-valued (`CHECKBOX`) questions, a response is marked correct if it contains exactly the values in this list.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :answers => list(GoogleApi.Forms.V1.Model.CorrectAnswer.t()) | nil
        }

  field(:answers, as: GoogleApi.Forms.V1.Model.CorrectAnswer, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Forms.V1.Model.CorrectAnswers do
  def decode(value, options) do
    GoogleApi.Forms.V1.Model.CorrectAnswers.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Forms.V1.Model.CorrectAnswers do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
