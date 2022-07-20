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

defmodule GoogleApi.DFAReporting.V4.Api.InventoryItems do
  @moduledoc """
  API calls for all endpoints tagged `InventoryItems`.
  """

  alias GoogleApi.DFAReporting.V4.Connection
  alias GoogleApi.Gax.{Request, Response}

  @library_version Mix.Project.config() |> Keyword.get(:version, "")

  @doc """
  Gets one inventory item by ID.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.DFAReporting.V4.Connection.t`) - Connection to server
  *   `profile_id` (*type:* `String.t`) - User profile ID associated with this request.
  *   `project_id` (*type:* `String.t`) - Project ID for order documents.
  *   `id` (*type:* `String.t`) - Inventory item ID.
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
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.DFAReporting.V4.Model.InventoryItem{}}` on success
  *   `{:error, info}` on failure
  """
  @spec dfareporting_inventory_items_get(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.DFAReporting.V4.Model.InventoryItem.t()}
          | {:ok, Tesla.Env.t()}
          | {:ok, list()}
          | {:error, any()}
  def dfareporting_inventory_items_get(
        connection,
        profile_id,
        project_id,
        id,
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
      :upload_protocol => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url(
        "/dfareporting/v4/userprofiles/{profileId}/projects/{projectId}/inventoryItems/{id}",
        %{
          "profileId" => URI.encode(profile_id, &URI.char_unreserved?/1),
          "projectId" => URI.encode(project_id, &URI.char_unreserved?/1),
          "id" => URI.encode(id, &(URI.char_unreserved?(&1) || &1 == ?/))
        }
      )
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.DFAReporting.V4.Model.InventoryItem{}])
  end

  @doc """
  Retrieves a list of inventory items, possibly filtered. This method supports paging.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.DFAReporting.V4.Connection.t`) - Connection to server
  *   `profile_id` (*type:* `String.t`) - User profile ID associated with this request.
  *   `project_id` (*type:* `String.t`) - Project ID for order documents.
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
      *   `:ids` (*type:* `list(String.t)`) - Select only inventory items with these IDs.
      *   `:inPlan` (*type:* `boolean()`) - Select only inventory items that are in plan.
      *   `:maxResults` (*type:* `integer()`) - Maximum number of results to return.
      *   `:orderId` (*type:* `list(String.t)`) - Select only inventory items that belong to specified orders.
      *   `:pageToken` (*type:* `String.t`) - Value of the nextPageToken from the previous result page.
      *   `:siteId` (*type:* `list(String.t)`) - Select only inventory items that are associated with these sites.
      *   `:sortField` (*type:* `String.t`) - Field by which to sort the list.
      *   `:sortOrder` (*type:* `String.t`) - Order of sorted results.
      *   `:type` (*type:* `String.t`) - Select only inventory items with this type.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.DFAReporting.V4.Model.InventoryItemsListResponse{}}` on success
  *   `{:error, info}` on failure
  """
  @spec dfareporting_inventory_items_list(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.DFAReporting.V4.Model.InventoryItemsListResponse.t()}
          | {:ok, Tesla.Env.t()}
          | {:ok, list()}
          | {:error, any()}
  def dfareporting_inventory_items_list(
        connection,
        profile_id,
        project_id,
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
      :ids => :query,
      :inPlan => :query,
      :maxResults => :query,
      :orderId => :query,
      :pageToken => :query,
      :siteId => :query,
      :sortField => :query,
      :sortOrder => :query,
      :type => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url(
        "/dfareporting/v4/userprofiles/{profileId}/projects/{projectId}/inventoryItems",
        %{
          "profileId" => URI.encode(profile_id, &URI.char_unreserved?/1),
          "projectId" => URI.encode(project_id, &URI.char_unreserved?/1)
        }
      )
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.DFAReporting.V4.Model.InventoryItemsListResponse{}]
    )
  end
end