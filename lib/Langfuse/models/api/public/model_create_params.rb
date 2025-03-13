# frozen_string_literal: true

module Langfuse
  module Models
    module API
      module Public
        class ModelCreateParams < Langfuse::BaseModel
          # @!parse
          #   extend Langfuse::RequestParameters::Converter
          include Langfuse::RequestParameters

          # @!attribute match_pattern
          #   Regex pattern which matches this model definition to generation.model. Useful in
          #     case of fine-tuned models. If you want to exact match, use `(?i)^modelname$`
          #
          #   @return [String]
          required :match_pattern, String, api_name: :matchPattern

          # @!attribute model_name
          #   Name of the model definition. If multiple with the same name exist, they are
          #     applied in the following order: (1) custom over built-in, (2) newest according
          #     to startTime where model.startTime<observation.startTime
          #
          #   @return [String]
          required :model_name, String, api_name: :modelName

          # @!attribute input_price
          #   Price (USD) per input unit
          #
          #   @return [Float, nil]
          optional :input_price, Float, api_name: :inputPrice, nil?: true

          # @!attribute output_price
          #   Price (USD) per output unit
          #
          #   @return [Float, nil]
          optional :output_price, Float, api_name: :outputPrice, nil?: true

          # @!attribute start_date
          #   Apply only to generations which are newer than this ISO date.
          #
          #   @return [Time, nil]
          optional :start_date, Time, api_name: :startDate, nil?: true

          # @!attribute [r] tokenizer_config
          #   Optional. Configuration for the selected tokenizer. Needs to be JSON. See docs
          #     for more details.
          #
          #   @return [Object, nil]
          optional :tokenizer_config, Langfuse::Unknown, api_name: :tokenizerConfig

          # @!parse
          #   # @return [Object]
          #   attr_writer :tokenizer_config

          # @!attribute tokenizer_id
          #   Optional. Tokenizer to be applied to observations which match to this model. See
          #     docs for more details.
          #
          #   @return [String, nil]
          optional :tokenizer_id, String, api_name: :tokenizerId, nil?: true

          # @!attribute total_price
          #   Price (USD) per total units. Cannot be set if input or output price is set.
          #
          #   @return [Float, nil]
          optional :total_price, Float, api_name: :totalPrice, nil?: true

          # @!attribute unit
          #   Unit used by this model.
          #
          #   @return [Symbol, Langfuse::Models::API::Public::ModelUsageUnit, nil]
          optional :unit, enum: -> { Langfuse::Models::API::Public::ModelUsageUnit }, nil?: true

          # @!parse
          #   # @param match_pattern [String]
          #   # @param model_name [String]
          #   # @param input_price [Float, nil]
          #   # @param output_price [Float, nil]
          #   # @param start_date [Time, nil]
          #   # @param tokenizer_config [Object]
          #   # @param tokenizer_id [String, nil]
          #   # @param total_price [Float, nil]
          #   # @param unit [Symbol, Langfuse::Models::API::Public::ModelUsageUnit, nil]
          #   # @param request_options [Langfuse::RequestOptions, Hash{Symbol=>Object}]
          #   #
          #   def initialize(
          #     match_pattern:,
          #     model_name:,
          #     input_price: nil,
          #     output_price: nil,
          #     start_date: nil,
          #     tokenizer_config: nil,
          #     tokenizer_id: nil,
          #     total_price: nil,
          #     unit: nil,
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
