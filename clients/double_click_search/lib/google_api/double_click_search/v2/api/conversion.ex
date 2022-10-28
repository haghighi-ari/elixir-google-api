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

defmodule GoogleApi.DoubleClickSearch.V2.Api.Conversion do
  @moduledoc """
  API calls for all endpoints tagged `Conversion`.
  """

  alias GoogleApi.DoubleClickSearch.V2.Connection
  alias GoogleApi.Gax.{Request, Response}

  @library_version Mix.Project.config() |> Keyword.get(:version, "")

  @doc """
  Retrieves a list of conversions from a DoubleClick Search engine account.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.DoubleClickSearch.V2.Connection.t`) - Connection to server
  *   `customer_id` (*type:* `String.t`) - Customer ID of a client account in the new Search Ads 360 experience.
  *   `end_date` (*type:* `integer()`) - Last date (inclusive) on which to retrieve conversions. Format is yyyymmdd.
  *   `row_count` (*type:* `integer()`) - The number of conversions to return per call.
  *   `start_date` (*type:* `integer()`) - First date (inclusive) on which to retrieve conversions. Format is yyyymmdd.
  *   `start_row` (*type:* `integer()`) - The 0-based starting index for retrieving conversions results.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:"$.xgafv"` (*type:* `String.t`) - V1 error format.
      *   `:access_token` (*type:* `String.t`) - OAuth access token.
      *   `:alt` (*type:* `String.t`) - Data format for response.
      *   `:callback` (*type:* `String.t`) - JSONP
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
      *   `:uploadType` (*type:* `String.t`) - Legacy upload protocol for media (e.g. "media", "multipart").
      *   `:upload_protocol` (*type:* `String.t`) - Upload protocol for media (e.g. "raw", "multipart").
      *   `:adGroupId` (*type:* `String.t`) - Numeric ID of the ad group.
      *   `:adId` (*type:* `String.t`) - Numeric ID of the ad.
      *   `:advertiserId` (*type:* `String.t`) - Numeric ID of the advertiser.
      *   `:agencyId` (*type:* `String.t`) - Numeric ID of the agency.
      *   `:campaignId` (*type:* `String.t`) - Numeric ID of the campaign.
      *   `:criterionId` (*type:* `String.t`) - Numeric ID of the criterion.
      *   `:engineAccountId` (*type:* `String.t`) - Numeric ID of the engine account.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.DoubleClickSearch.V2.Model.ConversionList{}}` on success
  *   `{:error, info}` on failure
  """
  @spec doubleclicksearch_conversion__get_customer_id(
          Tesla.Env.client(),
          String.t(),
          integer(),
          integer(),
          integer(),
          integer(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.DoubleClickSearch.V2.Model.ConversionList.t()}
          | {:ok, Tesla.Env.t()}
          | {:ok, list()}
          | {:error, any()}
  def doubleclicksearch_conversion__get_customer_id(
        connection,
        customer_id,
        end_date,
        row_count,
        start_date,
        start_row,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :uploadType => :query,
      :upload_protocol => :query,
      :adGroupId => :query,
      :adId => :query,
      :advertiserId => :query,
      :agencyId => :query,
      :campaignId => :query,
      :criterionId => :query,
      :engineAccountId => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/doubleclicksearch/v2/customer/{customerId}/conversion", %{
        "customerId" => URI.encode(customer_id, &URI.char_unreserved?/1)
      })
      |> Request.add_param(:query, :endDate, end_date)
      |> Request.add_param(:query, :rowCount, row_count)
      |> Request.add_param(:query, :startDate, start_date)
      |> Request.add_param(:query, :startRow, start_row)
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.DoubleClickSearch.V2.Model.ConversionList{}])
  end

  @doc """
  Retrieves a list of conversions from a DoubleClick Search engine account.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.DoubleClickSearch.V2.Connection.t`) - Connection to server
  *   `agency_id` (*type:* `String.t`) - Numeric ID of the agency.
  *   `advertiser_id` (*type:* `String.t`) - Numeric ID of the advertiser.
  *   `engine_account_id` (*type:* `String.t`) - Numeric ID of the engine account.
  *   `end_date` (*type:* `integer()`) - Last date (inclusive) on which to retrieve conversions. Format is yyyymmdd.
  *   `row_count` (*type:* `integer()`) - The number of conversions to return per call.
  *   `start_date` (*type:* `integer()`) - First date (inclusive) on which to retrieve conversions. Format is yyyymmdd.
  *   `start_row` (*type:* `integer()`) - The 0-based starting index for retrieving conversions results.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:"$.xgafv"` (*type:* `String.t`) - V1 error format.
      *   `:access_token` (*type:* `String.t`) - OAuth access token.
      *   `:alt` (*type:* `String.t`) - Data format for response.
      *   `:callback` (*type:* `String.t`) - JSONP
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
      *   `:uploadType` (*type:* `String.t`) - Legacy upload protocol for media (e.g. "media", "multipart").
      *   `:upload_protocol` (*type:* `String.t`) - Upload protocol for media (e.g. "raw", "multipart").
      *   `:adGroupId` (*type:* `String.t`) - Numeric ID of the ad group.
      *   `:adId` (*type:* `String.t`) - Numeric ID of the ad.
      *   `:campaignId` (*type:* `String.t`) - Numeric ID of the campaign.
      *   `:criterionId` (*type:* `String.t`) - Numeric ID of the criterion.
      *   `:customerId` (*type:* `String.t`) - Customer ID of a client account in the new Search Ads 360 experience.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.DoubleClickSearch.V2.Model.ConversionList{}}` on success
  *   `{:error, info}` on failure
  """
  @spec doubleclicksearch_conversion_get(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          integer(),
          integer(),
          integer(),
          integer(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.DoubleClickSearch.V2.Model.ConversionList.t()}
          | {:ok, Tesla.Env.t()}
          | {:ok, list()}
          | {:error, any()}
  def doubleclicksearch_conversion_get(
        connection,
        agency_id,
        advertiser_id,
        engine_account_id,
        end_date,
        row_count,
        start_date,
        start_row,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :uploadType => :query,
      :upload_protocol => :query,
      :adGroupId => :query,
      :adId => :query,
      :campaignId => :query,
      :criterionId => :query,
      :customerId => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url(
        "/doubleclicksearch/v2/agency/{agencyId}/advertiser/{advertiserId}/engine/{engineAccountId}/conversion",
        %{
          "agencyId" => URI.encode(agency_id, &URI.char_unreserved?/1),
          "advertiserId" => URI.encode(advertiser_id, &URI.char_unreserved?/1),
          "engineAccountId" => URI.encode(engine_account_id, &URI.char_unreserved?/1)
        }
      )
      |> Request.add_param(:query, :endDate, end_date)
      |> Request.add_param(:query, :rowCount, row_count)
      |> Request.add_param(:query, :startDate, start_date)
      |> Request.add_param(:query, :startRow, start_row)
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.DoubleClickSearch.V2.Model.ConversionList{}])
  end

  @doc """
  Inserts a batch of new conversions into DoubleClick Search.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.DoubleClickSearch.V2.Connection.t`) - Connection to server
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:"$.xgafv"` (*type:* `String.t`) - V1 error format.
      *   `:access_token` (*type:* `String.t`) - OAuth access token.
      *   `:alt` (*type:* `String.t`) - Data format for response.
      *   `:callback` (*type:* `String.t`) - JSONP
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
      *   `:uploadType` (*type:* `String.t`) - Legacy upload protocol for media (e.g. "media", "multipart").
      *   `:upload_protocol` (*type:* `String.t`) - Upload protocol for media (e.g. "raw", "multipart").
      *   `:body` (*type:* `GoogleApi.DoubleClickSearch.V2.Model.ConversionList.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.DoubleClickSearch.V2.Model.ConversionList{}}` on success
  *   `{:error, info}` on failure
  """
  @spec doubleclicksearch_conversion_insert(Tesla.Env.client(), keyword(), keyword()) ::
          {:ok, GoogleApi.DoubleClickSearch.V2.Model.ConversionList.t()}
          | {:ok, Tesla.Env.t()}
          | {:ok, list()}
          | {:error, any()}
  def doubleclicksearch_conversion_insert(connection, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :uploadType => :query,
      :upload_protocol => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/doubleclicksearch/v2/conversion", %{})
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.DoubleClickSearch.V2.Model.ConversionList{}])
  end

  @doc """
  Updates a batch of conversions in DoubleClick Search.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.DoubleClickSearch.V2.Connection.t`) - Connection to server
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:"$.xgafv"` (*type:* `String.t`) - V1 error format.
      *   `:access_token` (*type:* `String.t`) - OAuth access token.
      *   `:alt` (*type:* `String.t`) - Data format for response.
      *   `:callback` (*type:* `String.t`) - JSONP
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
      *   `:uploadType` (*type:* `String.t`) - Legacy upload protocol for media (e.g. "media", "multipart").
      *   `:upload_protocol` (*type:* `String.t`) - Upload protocol for media (e.g. "raw", "multipart").
      *   `:body` (*type:* `GoogleApi.DoubleClickSearch.V2.Model.ConversionList.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.DoubleClickSearch.V2.Model.ConversionList{}}` on success
  *   `{:error, info}` on failure
  """
  @spec doubleclicksearch_conversion_update(Tesla.Env.client(), keyword(), keyword()) ::
          {:ok, GoogleApi.DoubleClickSearch.V2.Model.ConversionList.t()}
          | {:ok, Tesla.Env.t()}
          | {:ok, list()}
          | {:error, any()}
  def doubleclicksearch_conversion_update(connection, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :uploadType => :query,
      :upload_protocol => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:put)
      |> Request.url("/doubleclicksearch/v2/conversion", %{})
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.DoubleClickSearch.V2.Model.ConversionList{}])
  end

  @doc """
  Updates the availabilities of a batch of floodlight activities in DoubleClick Search.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.DoubleClickSearch.V2.Connection.t`) - Connection to server
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:"$.xgafv"` (*type:* `String.t`) - V1 error format.
      *   `:access_token` (*type:* `String.t`) - OAuth access token.
      *   `:alt` (*type:* `String.t`) - Data format for response.
      *   `:callback` (*type:* `String.t`) - JSONP
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
      *   `:uploadType` (*type:* `String.t`) - Legacy upload protocol for media (e.g. "media", "multipart").
      *   `:upload_protocol` (*type:* `String.t`) - Upload protocol for media (e.g. "raw", "multipart").
      *   `:body` (*type:* `GoogleApi.DoubleClickSearch.V2.Model.UpdateAvailabilityRequest.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.DoubleClickSearch.V2.Model.UpdateAvailabilityResponse{}}` on success
  *   `{:error, info}` on failure
  """
  @spec doubleclicksearch_conversion_update_availability(Tesla.Env.client(), keyword(), keyword()) ::
          {:ok, GoogleApi.DoubleClickSearch.V2.Model.UpdateAvailabilityResponse.t()}
          | {:ok, Tesla.Env.t()}
          | {:ok, list()}
          | {:error, any()}
  def doubleclicksearch_conversion_update_availability(
        connection,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :uploadType => :query,
      :upload_protocol => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/doubleclicksearch/v2/conversion/updateAvailability", %{})
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.DoubleClickSearch.V2.Model.UpdateAvailabilityResponse{}]
    )
  end
end
