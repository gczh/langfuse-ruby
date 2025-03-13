# frozen_string_literal: true

module Langfuse
  module Models
    module API
      module Public
        module V2
          class PromptListParams < Langfuse::BaseModel
            # @!parse
            #   extend Langfuse::RequestParameters::Converter
            include Langfuse::RequestParameters

            # @!attribute from_updated_at
            #   Optional filter to only include prompt versions created/updated on or after a
            #     certain datetime (ISO 8601)
            #
            #   @return [Time, nil]
            optional :from_updated_at, Time, api_name: :fromUpdatedAt, nil?: true

            # @!attribute label
            #
            #   @return [String, nil]
            optional :label, String, nil?: true

            # @!attribute limit
            #   limit of items per page
            #
            #   @return [Integer, nil]
            optional :limit, Integer, nil?: true

            # @!attribute name
            #
            #   @return [String, nil]
            optional :name, String, nil?: true

            # @!attribute page
            #   page number, starts at 1
            #
            #   @return [Integer, nil]
            optional :page, Integer, nil?: true

            # @!attribute tag
            #
            #   @return [String, nil]
            optional :tag, String, nil?: true

            # @!attribute to_updated_at
            #   Optional filter to only include prompt versions created/updated before a certain
            #     datetime (ISO 8601)
            #
            #   @return [Time, nil]
            optional :to_updated_at, Time, api_name: :toUpdatedAt, nil?: true

            # @!parse
            #   # @param from_updated_at [Time, nil]
            #   # @param label [String, nil]
            #   # @param limit [Integer, nil]
            #   # @param name [String, nil]
            #   # @param page [Integer, nil]
            #   # @param tag [String, nil]
            #   # @param to_updated_at [Time, nil]
            #   # @param request_options [Langfuse::RequestOptions, Hash{Symbol=>Object}]
            #   #
            #   def initialize(
            #     from_updated_at: nil,
            #     label: nil,
            #     limit: nil,
            #     name: nil,
            #     page: nil,
            #     tag: nil,
            #     to_updated_at: nil,
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
end
