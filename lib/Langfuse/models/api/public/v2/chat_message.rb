# frozen_string_literal: true

module Langfuse
  module Models
    module API
      module Public
        module V2
          class ChatMessage < Langfuse::BaseModel
            # @!attribute content
            #
            #   @return [String]
            required :content, String

            # @!attribute role
            #
            #   @return [String]
            required :role, String

            # @!parse
            #   # @param content [String]
            #   # @param role [String]
            #   #
            #   def initialize(content:, role:, **) = super

            # def initialize: (Hash | Langfuse::BaseModel) -> void
          end
        end
      end
    end
  end
end
