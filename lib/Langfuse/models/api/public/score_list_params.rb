# frozen_string_literal: true

module Langfuse
  module Models
    module API
      module Public
        class ScoreListParams < Langfuse::BaseModel
          # @!parse
          #   extend Langfuse::RequestParameters::Converter
          include Langfuse::RequestParameters

          # @!attribute config_id
          #   Retrieve only scores with a specific configId.
          #
          #   @return [String, nil]
          optional :config_id, String, api_name: :configId, nil?: true

          # @!attribute data_type
          #   Retrieve only scores with a specific dataType.
          #
          #   @return [Symbol, Langfuse::Models::API::Public::ScoreDataType, nil]
          optional :data_type,
                   enum: -> { Langfuse::Models::API::Public::ScoreDataType },
                   api_name: :dataType,
                   nil?: true

          # @!attribute [r] environment
          #   Optional filter for scores where the environment is one of the provided values.
          #
          #   @return [Array<String, nil>, nil]
          optional :environment, Langfuse::ArrayOf[String, nil?: true]

          # @!parse
          #   # @return [Array<String, nil>]
          #   attr_writer :environment

          # @!attribute from_timestamp
          #   Optional filter to only include scores created on or after a certain datetime
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

          # @!attribute name
          #   Retrieve only scores with this name.
          #
          #   @return [String, nil]
          optional :name, String, nil?: true

          # @!attribute operator
          #   Retrieve only scores with <operator> value.
          #
          #   @return [String, nil]
          optional :operator, String, nil?: true

          # @!attribute page
          #   Page number, starts at 1.
          #
          #   @return [Integer, nil]
          optional :page, Integer, nil?: true

          # @!attribute queue_id
          #   Retrieve only scores with a specific annotation queueId.
          #
          #   @return [String, nil]
          optional :queue_id, String, api_name: :queueId, nil?: true

          # @!attribute score_ids
          #   Comma-separated list of score IDs to limit the results to.
          #
          #   @return [String, nil]
          optional :score_ids, String, api_name: :scoreIds, nil?: true

          # @!attribute source
          #   Retrieve only scores from a specific source.
          #
          #   @return [Symbol, Langfuse::Models::API::Public::ScoreSource, nil]
          optional :source, enum: -> { Langfuse::Models::API::Public::ScoreSource }, nil?: true

          # @!attribute to_timestamp
          #   Optional filter to only include scores created before a certain datetime
          #     (ISO 8601)
          #
          #   @return [Time, nil]
          optional :to_timestamp, Time, api_name: :toTimestamp, nil?: true

          # @!attribute [r] trace_tags
          #   Only scores linked to traces that include all of these tags will be returned.
          #
          #   @return [Array<String, nil>, nil]
          optional :trace_tags, Langfuse::ArrayOf[String, nil?: true], api_name: :traceTags

          # @!parse
          #   # @return [Array<String, nil>]
          #   attr_writer :trace_tags

          # @!attribute user_id
          #   Retrieve only scores with this userId associated to the trace.
          #
          #   @return [String, nil]
          optional :user_id, String, api_name: :userId, nil?: true

          # @!attribute value
          #   Retrieve only scores with <operator> value.
          #
          #   @return [Float, nil]
          optional :value, Float, nil?: true

          # @!parse
          #   # @param config_id [String, nil]
          #   # @param data_type [Symbol, Langfuse::Models::API::Public::ScoreDataType, nil]
          #   # @param environment [Array<String, nil>]
          #   # @param from_timestamp [Time, nil]
          #   # @param limit [Integer, nil]
          #   # @param name [String, nil]
          #   # @param operator [String, nil]
          #   # @param page [Integer, nil]
          #   # @param queue_id [String, nil]
          #   # @param score_ids [String, nil]
          #   # @param source [Symbol, Langfuse::Models::API::Public::ScoreSource, nil]
          #   # @param to_timestamp [Time, nil]
          #   # @param trace_tags [Array<String, nil>]
          #   # @param user_id [String, nil]
          #   # @param value [Float, nil]
          #   # @param request_options [Langfuse::RequestOptions, Hash{Symbol=>Object}]
          #   #
          #   def initialize(
          #     config_id: nil,
          #     data_type: nil,
          #     environment: nil,
          #     from_timestamp: nil,
          #     limit: nil,
          #     name: nil,
          #     operator: nil,
          #     page: nil,
          #     queue_id: nil,
          #     score_ids: nil,
          #     source: nil,
          #     to_timestamp: nil,
          #     trace_tags: nil,
          #     user_id: nil,
          #     value: nil,
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
