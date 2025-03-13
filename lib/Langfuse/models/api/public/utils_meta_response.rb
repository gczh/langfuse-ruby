# frozen_string_literal: true

module Langfuse
  module Models
    module API
      module Public
        class UtilsMetaResponse < Langfuse::BaseModel
          # @!attribute limit
          #   number of items per page
          #
          #   @return [Integer]
          required :limit, Integer

          # @!attribute page
          #   current page number
          #
          #   @return [Integer]
          required :page, Integer

          # @!attribute total_items
          #   number of total items given the current filters/selection (if any)
          #
          #   @return [Integer]
          required :total_items, Integer, api_name: :totalItems

          # @!attribute total_pages
          #   number of total pages given the current limit
          #
          #   @return [Integer]
          required :total_pages, Integer, api_name: :totalPages

          # @!parse
          #   # @param limit [Integer]
          #   # @param page [Integer]
          #   # @param total_items [Integer]
          #   # @param total_pages [Integer]
          #   #
          #   def initialize(limit:, page:, total_items:, total_pages:, **) = super

          # def initialize: (Hash | Langfuse::BaseModel) -> void
        end
      end
    end
  end
end
