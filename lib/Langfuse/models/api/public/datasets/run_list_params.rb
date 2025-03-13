# frozen_string_literal: true

module Langfuse
  module Models
    module API
      module Public
        module Datasets
          class RunListParams < Langfuse::BaseModel
            # @!parse
            #   extend Langfuse::RequestParameters::Converter
            include Langfuse::RequestParameters

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
end
