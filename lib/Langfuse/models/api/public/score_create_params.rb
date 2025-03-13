# frozen_string_literal: true

module Langfuse
  module Models
    module API
      module Public
        class ScoreCreateParams < Langfuse::BaseModel
          # @!parse
          #   extend Langfuse::RequestParameters::Converter
          include Langfuse::RequestParameters

          # @!attribute name
          #
          #   @return [String]
          required :name, String

          # @!attribute trace_id
          #
          #   @return [String]
          required :trace_id, String, api_name: :traceId

          # @!attribute value
          #   The value of the score. Must be passed as string for categorical scores, and
          #     numeric for boolean and numeric scores. Boolean score values must equal either 1
          #     or 0 (true or false)
          #
          #   @return [Float, String]
          required :value, union: -> { Langfuse::Models::API::Public::CreateScoreValue }

          # @!attribute id
          #
          #   @return [String, nil]
          optional :id, String, nil?: true

          # @!attribute comment
          #
          #   @return [String, nil]
          optional :comment, String, nil?: true

          # @!attribute config_id
          #   Reference a score config on a score. The unique langfuse identifier of a score
          #     config. When passing this field, the dataType and stringValue fields are
          #     automatically populated.
          #
          #   @return [String, nil]
          optional :config_id, String, api_name: :configId, nil?: true

          # @!attribute data_type
          #   The data type of the score. When passing a configId this field is inferred.
          #     Otherwise, this field must be passed or will default to numeric.
          #
          #   @return [Symbol, Langfuse::Models::API::Public::ScoreDataType, nil]
          optional :data_type,
                   enum: -> { Langfuse::Models::API::Public::ScoreDataType },
                   api_name: :dataType,
                   nil?: true

          # @!attribute environment
          #   The environment of the score. Can be any lowercase alphanumeric string with
          #     hyphens and underscores that does not start with 'langfuse'.
          #
          #   @return [String, nil]
          optional :environment, String, nil?: true

          # @!attribute observation_id
          #
          #   @return [String, nil]
          optional :observation_id, String, api_name: :observationId, nil?: true

          # @!parse
          #   # @param name [String]
          #   # @param trace_id [String]
          #   # @param value [Float, String]
          #   # @param id [String, nil]
          #   # @param comment [String, nil]
          #   # @param config_id [String, nil]
          #   # @param data_type [Symbol, Langfuse::Models::API::Public::ScoreDataType, nil]
          #   # @param environment [String, nil]
          #   # @param observation_id [String, nil]
          #   # @param request_options [Langfuse::RequestOptions, Hash{Symbol=>Object}]
          #   #
          #   def initialize(
          #     name:,
          #     trace_id:,
          #     value:,
          #     id: nil,
          #     comment: nil,
          #     config_id: nil,
          #     data_type: nil,
          #     environment: nil,
          #     observation_id: nil,
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
