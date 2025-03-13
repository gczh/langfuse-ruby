# frozen_string_literal: true

module Langfuse
  module Models
    module API
      module Public
        class DatasetItemListParams < Langfuse::BaseModel
          # @!parse
          #   extend Langfuse::RequestParameters::Converter
          include Langfuse::RequestParameters

          # @!attribute dataset_name
          #
          #   @return [String, nil]
          optional :dataset_name, String, api_name: :datasetName, nil?: true

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

          # @!attribute source_observation_id
          #
          #   @return [String, nil]
          optional :source_observation_id, String, api_name: :sourceObservationId, nil?: true

          # @!attribute source_trace_id
          #
          #   @return [String, nil]
          optional :source_trace_id, String, api_name: :sourceTraceId, nil?: true

          # @!parse
          #   # @param dataset_name [String, nil]
          #   # @param limit [Integer, nil]
          #   # @param page [Integer, nil]
          #   # @param source_observation_id [String, nil]
          #   # @param source_trace_id [String, nil]
          #   # @param request_options [Langfuse::RequestOptions, Hash{Symbol=>Object}]
          #   #
          #   def initialize(
          #     dataset_name: nil,
          #     limit: nil,
          #     page: nil,
          #     source_observation_id: nil,
          #     source_trace_id: nil,
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
