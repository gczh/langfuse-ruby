# frozen_string_literal: true

module Langfuse
  module Models
    module API
      module Public
        class TraceListParams < Langfuse::BaseModel
          # @!parse
          #   extend Langfuse::RequestParameters::Converter
          include Langfuse::RequestParameters

          # @!attribute [r] environment
          #   Optional filter for traces where the environment is one of the provided values.
          #
          #   @return [Array<String, nil>, nil]
          optional :environment, Langfuse::ArrayOf[String, nil?: true]

          # @!parse
          #   # @return [Array<String, nil>]
          #   attr_writer :environment

          # @!attribute from_timestamp
          #   Optional filter to only include traces with a trace.timestamp on or after a
          #     certain datetime (ISO 8601)
          #
          #   @return [Time, nil]
          optional :from_timestamp, Time, api_name: :fromTimestamp, nil?: true

          # @!attribute limit
          #   Limit of items per page. If you encounter api issues due to too large page
          #     sizes, try to reduce the limit.
          #
          #   @return [Integer, nil]
          optional :limit, Integer, nil?: true

          # @!attribute name
          #
          #   @return [String, nil]
          optional :name, String, nil?: true

          # @!attribute order_by
          #   Format of the string [field].[asc/desc]. Fields: id, timestamp, name, userId,
          #     release, version, public, bookmarked, sessionId. Example: timestamp.asc
          #
          #   @return [String, nil]
          optional :order_by, String, api_name: :orderBy, nil?: true

          # @!attribute page
          #   Page number, starts at 1
          #
          #   @return [Integer, nil]
          optional :page, Integer, nil?: true

          # @!attribute release
          #   Optional filter to only include traces with a certain release.
          #
          #   @return [String, nil]
          optional :release, String, nil?: true

          # @!attribute session_id
          #
          #   @return [String, nil]
          optional :session_id, String, api_name: :sessionId, nil?: true

          # @!attribute [r] tags
          #   Only traces that include all of these tags will be returned.
          #
          #   @return [Array<String, nil>, nil]
          optional :tags, Langfuse::ArrayOf[String, nil?: true]

          # @!parse
          #   # @return [Array<String, nil>]
          #   attr_writer :tags

          # @!attribute to_timestamp
          #   Optional filter to only include traces with a trace.timestamp before a certain
          #     datetime (ISO 8601)
          #
          #   @return [Time, nil]
          optional :to_timestamp, Time, api_name: :toTimestamp, nil?: true

          # @!attribute user_id
          #
          #   @return [String, nil]
          optional :user_id, String, api_name: :userId, nil?: true

          # @!attribute version
          #   Optional filter to only include traces with a certain version.
          #
          #   @return [String, nil]
          optional :version, String, nil?: true

          # @!parse
          #   # @param environment [Array<String, nil>]
          #   # @param from_timestamp [Time, nil]
          #   # @param limit [Integer, nil]
          #   # @param name [String, nil]
          #   # @param order_by [String, nil]
          #   # @param page [Integer, nil]
          #   # @param release [String, nil]
          #   # @param session_id [String, nil]
          #   # @param tags [Array<String, nil>]
          #   # @param to_timestamp [Time, nil]
          #   # @param user_id [String, nil]
          #   # @param version [String, nil]
          #   # @param request_options [Langfuse::RequestOptions, Hash{Symbol=>Object}]
          #   #
          #   def initialize(
          #     environment: nil,
          #     from_timestamp: nil,
          #     limit: nil,
          #     name: nil,
          #     order_by: nil,
          #     page: nil,
          #     release: nil,
          #     session_id: nil,
          #     tags: nil,
          #     to_timestamp: nil,
          #     user_id: nil,
          #     version: nil,
          #     request_options: {},
          #     **
          #   )
          #     super
          #   end

          # def initialize: (Hash | Langfuse::BaseModel) -> void
        end
      end
    end
  end
end
