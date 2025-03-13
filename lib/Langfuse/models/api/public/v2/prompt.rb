# frozen_string_literal: true

module Langfuse
  module Models
    module API
      module Public
        module V2
          # @abstract
          #
          class Prompt < Langfuse::Union
            variant -> { Langfuse::Models::API::Public::V2::Prompt::UnionMember0 }

            variant -> { Langfuse::Models::API::Public::V2::Prompt::UnionMember1 }

            class UnionMember0 < Langfuse::Models::API::Public::V2::BasePrompt
              # @!attribute [r] type
              #
              #   @return [Symbol, Langfuse::Models::API::Public::V2::Prompt::UnionMember0::Type, nil]
              optional :type, enum: -> { Langfuse::Models::API::Public::V2::Prompt::UnionMember0::Type }

              # @!parse
              #   # @return [Symbol, Langfuse::Models::API::Public::V2::Prompt::UnionMember0::Type]
              #   attr_writer :type

              # @!parse
              #   # @param type [Symbol, Langfuse::Models::API::Public::V2::Prompt::UnionMember0::Type]
              #   #
              #   def initialize(type: nil, **) = super

              # def initialize: (Hash | Langfuse::BaseModel) -> void

              # @abstract
              #
              class Type < Langfuse::Enum
                CHAT = :chat

                finalize!
              end
            end

            class UnionMember1 < Langfuse::Models::API::Public::V2::BasePrompt
              # @!attribute [r] type
              #
              #   @return [Symbol, Langfuse::Models::API::Public::V2::Prompt::UnionMember1::Type, nil]
              optional :type, enum: -> { Langfuse::Models::API::Public::V2::Prompt::UnionMember1::Type }

              # @!parse
              #   # @return [Symbol, Langfuse::Models::API::Public::V2::Prompt::UnionMember1::Type]
              #   attr_writer :type

              # @!parse
              #   # @param type [Symbol, Langfuse::Models::API::Public::V2::Prompt::UnionMember1::Type]
              #   #
              #   def initialize(type: nil, **) = super

              # def initialize: (Hash | Langfuse::BaseModel) -> void

              # @abstract
              #
              class Type < Langfuse::Enum
                TEXT = :text

                finalize!
              end
            end
          end
        end
      end
    end
  end
end
