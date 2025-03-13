# frozen_string_literal: true

module Langfuse
  module Models
    module API
      class PublicRetrieveProjectsResponse < Langfuse::BaseModel
        # @!attribute data
        #
        #   @return [Array<Langfuse::Models::API::PublicRetrieveProjectsResponse::Data>]
        required :data, -> { Langfuse::ArrayOf[Langfuse::Models::API::PublicRetrieveProjectsResponse::Data] }

        # @!parse
        #   # @param data [Array<Langfuse::Models::API::PublicRetrieveProjectsResponse::Data>]
        #   #
        #   def initialize(data:, **) = super

        # def initialize: (Hash | Langfuse::BaseModel) -> void

        class Data < Langfuse::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute name
          #
          #   @return [String]
          required :name, String

          # @!parse
          #   # @param id [String]
          #   # @param name [String]
          #   #
          #   def initialize(id:, name:, **) = super

          # def initialize: (Hash | Langfuse::BaseModel) -> void
        end
      end
    end
  end
end
