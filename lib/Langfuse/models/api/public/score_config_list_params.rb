# frozen_string_literal: true

module Langfuse
  module Models
    module API
      module Public
        class ScoreConfigListParams < Langfuse::BaseModel
          # @!parse
          #   extend Langfuse::RequestParameters::Converter
          include Langfuse::RequestParameters

          # @!attribute limit
          #   Limit of items per page. If you encounter api issues due to too large page
          #     sizes, try to reduce the limit
          #
          #   @return [Integer, nil]
          optional :limit, Integer, nil?: true

          # @!attribute page
          #   Page number, starts at 1.
          #
          #   @return [Integer, nil]
          optional :page, Integer, nil?: true

          # @!parse
          #   # @param limit [Integer, nil]
          #   # @param page [Integer, nil]
          #   # @param request_options [Langfuse::RequestOptions, Hash{Symbol=>Object}]
          #   #
          #   def initialize(limit: nil, page: nil, request_options: {}, **) = super

          # def initialize: (Hash | Langfuse::BaseModel) -> void
        end
      end
    end
  end
end
