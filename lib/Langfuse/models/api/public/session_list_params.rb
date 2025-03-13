# frozen_string_literal: true

module Langfuse
  module Models
    module API
      module Public
        class SessionListParams < Langfuse::BaseModel
          # @!parse
          #   extend Langfuse::RequestParameters::Converter
          include Langfuse::RequestParameters

          # @!attribute [r] environment
          #   Optional filter for sessions where the environment is one of the provided
          #     values.
          #
          #   @return [Array<String, nil>, nil]
          optional :environment, Langfuse::ArrayOf[String, nil?: true]

          # @!parse
          #   # @return [Array<String, nil>]
          #   attr_writer :environment

          # @!attribute from_timestamp
          #   Optional filter to only include sessions created on or after a certain datetime
          #     (ISO 8601)
          #
          #   @return [Time, nil]
          optional :from_timestamp, Time, api_name: :fromTimestamp, nil?: true

          # @!attribute limit
          #   Limit of items per page. If you encounter api issues due to too large page
          #     sizes, try to reduce the limit.
          #
          #   @return [Integer, nil]
          optional :limit, Integer, nil?: true

          # @!attribute page
          #   Page number, starts at 1
          #
          #   @return [Integer, nil]
          optional :page, Integer, nil?: true

          # @!attribute to_timestamp
          #   Optional filter to only include sessions created before a certain datetime
          #     (ISO 8601)
          #
          #   @return [Time, nil]
          optional :to_timestamp, Time, api_name: :toTimestamp, nil?: true

          # @!parse
          #   # @param environment [Array<String, nil>]
          #   # @param from_timestamp [Time, nil]
          #   # @param limit [Integer, nil]
          #   # @param page [Integer, nil]
          #   # @param to_timestamp [Time, nil]
          #   # @param request_options [Langfuse::RequestOptions, Hash{Symbol=>Object}]
          #   #
          #   def initialize(environment: nil, from_timestamp: nil, limit: nil, page: nil, to_timestamp: nil, request_options: {}, **) = super

          # def initialize: (Hash | Langfuse::BaseModel) -> void
        end
      end
    end
  end
end
