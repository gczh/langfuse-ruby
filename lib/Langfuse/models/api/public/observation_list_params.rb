# frozen_string_literal: true

module Langfuse
  module Models
    module API
      module Public
        class ObservationListParams < Langfuse::BaseModel
          # @!parse
          #   extend Langfuse::RequestParameters::Converter
          include Langfuse::RequestParameters

          # @!attribute [r] environment
          #   Optional filter for observations where the environment is one of the provided
          #     values.
          #
          #   @return [Array<String, nil>, nil]
          optional :environment, Langfuse::ArrayOf[String, nil?: true]

          # @!parse
          #   # @return [Array<String, nil>]
          #   attr_writer :environment

          # @!attribute from_start_time
          #   Retrieve only observations with a start_time or or after this datetime (ISO
          #     8601).
          #
          #   @return [Time, nil]
          optional :from_start_time, Time, api_name: :fromStartTime, nil?: true

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

          # @!attribute page
          #   Page number, starts at 1.
          #
          #   @return [Integer, nil]
          optional :page, Integer, nil?: true

          # @!attribute parent_observation_id
          #
          #   @return [String, nil]
          optional :parent_observation_id, String, api_name: :parentObservationId, nil?: true

          # @!attribute to_start_time
          #   Retrieve only observations with a start_time before this datetime (ISO 8601).
          #
          #   @return [Time, nil]
          optional :to_start_time, Time, api_name: :toStartTime, nil?: true

          # @!attribute trace_id
          #
          #   @return [String, nil]
          optional :trace_id, String, api_name: :traceId, nil?: true

          # @!attribute type
          #
          #   @return [String, nil]
          optional :type, String, nil?: true

          # @!attribute user_id
          #
          #   @return [String, nil]
          optional :user_id, String, api_name: :userId, nil?: true

          # @!attribute version
          #   Optional filter to only include observations with a certain version.
          #
          #   @return [String, nil]
          optional :version, String, nil?: true

          # @!parse
          #   # @param environment [Array<String, nil>]
          #   # @param from_start_time [Time, nil]
          #   # @param limit [Integer, nil]
          #   # @param name [String, nil]
          #   # @param page [Integer, nil]
          #   # @param parent_observation_id [String, nil]
          #   # @param to_start_time [Time, nil]
          #   # @param trace_id [String, nil]
          #   # @param type [String, nil]
          #   # @param user_id [String, nil]
          #   # @param version [String, nil]
          #   # @param request_options [Langfuse::RequestOptions, Hash{Symbol=>Object}]
          #   #
          #   def initialize(
          #     environment: nil,
          #     from_start_time: nil,
          #     limit: nil,
          #     name: nil,
          #     page: nil,
          #     parent_observation_id: nil,
          #     to_start_time: nil,
          #     trace_id: nil,
          #     type: nil,
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
