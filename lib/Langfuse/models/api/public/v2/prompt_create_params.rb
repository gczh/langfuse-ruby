# frozen_string_literal: true

module Langfuse
  module Models
    module API
      module Public
        module V2
          class PromptCreateParams < Langfuse::BaseModel
            # @!parse
            #   extend Langfuse::RequestParameters::Converter
            include Langfuse::RequestParameters

            # @!attribute name
            #
            #   @return [String]
            required :name, String

            # @!attribute prompt
            #
            #   @return [String]
            required :prompt, String

            # @!attribute commit_message
            #   Commit message for this prompt version.
            #
            #   @return [String, nil]
            optional :commit_message, String, api_name: :commitMessage, nil?: true

            # @!attribute [r] config
            #
            #   @return [Object, nil]
            optional :config, Langfuse::Unknown

            # @!parse
            #   # @return [Object]
            #   attr_writer :config

            # @!attribute labels
            #   List of deployment labels of this prompt version.
            #
            #   @return [Array<String>, nil]
            optional :labels, Langfuse::ArrayOf[String], nil?: true

            # @!attribute tags
            #   List of tags to apply to all versions of this prompt.
            #
            #   @return [Array<String>, nil]
            optional :tags, Langfuse::ArrayOf[String], nil?: true

            # @!attribute [r] type
            #
            #   @return [Symbol, Langfuse::Models::API::Public::V2::PromptCreateParams::Type, nil]
            optional :type, enum: -> { Langfuse::Models::API::Public::V2::PromptCreateParams::Type }

            # @!parse
            #   # @return [Symbol, Langfuse::Models::API::Public::V2::PromptCreateParams::Type]
            #   attr_writer :type

            # @!parse
            #   # @param name [String]
            #   # @param prompt [String]
            #   # @param commit_message [String, nil]
            #   # @param config [Object]
            #   # @param labels [Array<String>, nil]
            #   # @param tags [Array<String>, nil]
            #   # @param type [Symbol, Langfuse::Models::API::Public::V2::PromptCreateParams::Type]
            #   # @param request_options [Langfuse::RequestOptions, Hash{Symbol=>Object}]
            #   #
            #   def initialize(
            #     name:,
            #     prompt:,
            #     commit_message: nil,
            #     config: nil,
            #     labels: nil,
            #     tags: nil,
            #     type: nil,
            #     request_options: {},
            #     **
            #   )
            #     super
            #   end

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
