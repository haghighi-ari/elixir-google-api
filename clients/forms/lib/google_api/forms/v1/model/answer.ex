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

defmodule GoogleApi.Forms.V1.Model.Answer do
  @moduledoc """
  The submitted answer for a question.

  ## Attributes

  *   `fileUploadAnswers` (*type:* `GoogleApi.Forms.V1.Model.FileUploadAnswers.t`, *default:* `nil`) - Output only. The answers to a file upload question.
  *   `grade` (*type:* `GoogleApi.Forms.V1.Model.Grade.t`, *default:* `nil`) - Output only. The grade for the answer if the form was a quiz.
  *   `questionId` (*type:* `String.t`, *default:* `nil`) - Output only. The question's ID. See also Question.question_id.
  *   `textAnswers` (*type:* `GoogleApi.Forms.V1.Model.TextAnswers.t`, *default:* `nil`) - Output only. The specific answers as text.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :fileUploadAnswers => GoogleApi.Forms.V1.Model.FileUploadAnswers.t() | nil,
          :grade => GoogleApi.Forms.V1.Model.Grade.t() | nil,
          :questionId => String.t() | nil,
          :textAnswers => GoogleApi.Forms.V1.Model.TextAnswers.t() | nil
        }

  field(:fileUploadAnswers, as: GoogleApi.Forms.V1.Model.FileUploadAnswers)
  field(:grade, as: GoogleApi.Forms.V1.Model.Grade)
  field(:questionId)
  field(:textAnswers, as: GoogleApi.Forms.V1.Model.TextAnswers)
end

defimpl Poison.Decoder, for: GoogleApi.Forms.V1.Model.Answer do
  def decode(value, options) do
    GoogleApi.Forms.V1.Model.Answer.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Forms.V1.Model.Answer do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
