# frozen_string_literal: true

module Langfuse
  module Models
    module API
      module Public
        class MetricGetDailyParams < Langfuse::BaseModel
          # @!parse
          #   extend Langfuse::RequestParameters::Converter
          include Langfuse::RequestParameters

          # @!attribute [r] environment
          #   Optional filter for metrics where events include any of these environments
          #
          #   @return [Array<String, nil>, nil]
          optional :environment, Langfuse::ArrayOf[String, nil?: true]

          # @!parse
          #   # @return [Array<String, nil>]
          #   attr_writer :environment

          # @!attribute from_timestamp
          #   Optional filter to only include traces and observations on or after a certain
          #     datetime (ISO 8601)
          #
          #   @return [Time, nil]
          optional :from_timestamp, Time, api_name: :fromTimestamp, nil?: true

          # @!attribute limit
          #   limit of items per page
          #
          #   @return [Integer, nil]
          optional :limit, Integer, nil?: true

          # @!attribute page
          #   page number, starts at 1
          #
          #   @return [Integer, nil]
          optional :page, Integer, nil?: true

          # @!attribute [r] tags
          #   Optional filter for metrics where traces include all of these tags
          #
          #   @return [Array<String, nil>, nil]
          optional :tags, Langfuse::ArrayOf[String, nil?: true]

          # @!parse
          #   # @return [Array<String, nil>]
          #   attr_writer :tags

          # @!attribute to_timestamp
          #   Optional filter to only include traces and observations before a certain
          #     datetime (ISO 8601)
          #
          #   @return [Time, nil]
          optional :to_timestamp, Time, api_name: :toTimestamp, nil?: true

          # @!attribute trace_name
          #   Optional filter by the name of the trace
          #
          #   @return [String, nil]
          optional :trace_name, String, api_name: :traceName, nil?: true

          # @!attribute user_id
          #   Optional filter by the userId associated with the trace
          #
          #   @return [String, nil]
          optional :user_id, String, api_name: :userId, nil?: true

          # @!parse
          #   # @param environment [Array<String, nil>]
          #   # @param from_timestamp [Time, nil]
          #   # @param limit [Integer, nil]
          #   # @param page [Integer, nil]
          #   # @param tags [Array<String, nil>]
          #   # @param to_timestamp [Time, nil]
          #   # @param trace_name [String, nil]
          #   # @param user_id [String, nil]
          #   # @param request_options [Langfuse::RequestOptions, Hash{Symbol=>Object}]
          #   #
          #   def initialize(
          #     environment: nil,
          #     from_timestamp: nil,
          #     limit: nil,
          #     page: nil,
          #     tags: nil,
          #     to_timestamp: nil,
          #     trace_name: nil,
          #     user_id: nil,
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
