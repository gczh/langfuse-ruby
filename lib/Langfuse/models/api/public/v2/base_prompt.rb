# frozen_string_literal: true

module Langfuse
  module Models
    module API
      module Public
        module V2
          class BasePrompt < Langfuse::BaseModel
            # @!attribute config
            #
            #   @return [Object]
            required :config, Langfuse::Unknown

            # @!attribute labels
            #   List of deployment labels of this prompt version.
            #
            #   @return [Array<String>]
            required :labels, Langfuse::ArrayOf[String]

            # @!attribute name
            #
            #   @return [String]
            required :name, String

            # @!attribute tags
            #   List of tags. Used to filter via UI and API. The same across versions of a
            #     prompt.
            #
            #   @return [Array<String>]
            required :tags, Langfuse::ArrayOf[String]

            # @!attribute version
            #
            #   @return [Integer]
            required :version, Integer

            # @!attribute commit_message
            #   Commit message for this prompt version.
            #
            #   @return [String, nil]
            optional :commit_message, String, api_name: :commitMessage, nil?: true

            # @!attribute resolution_graph
            #   The dependency resolution graph for the current prompt. Null if prompt has no
            #     dependencies.
            #
            #   @return [Hash{Symbol=>Object}, nil]
            optional :resolution_graph,
                     Langfuse::HashOf[Langfuse::Unknown],
                     api_name: :resolutionGraph,
                     nil?: true

            # @!parse
            #   # @param config [Object]
            #   # @param labels [Array<String>]
            #   # @param name [String]
            #   # @param tags [Array<String>]
            #   # @param version [Integer]
            #   # @param commit_message [String, nil]
            #   # @param resolution_graph [Hash{Symbol=>Object}, nil]
            #   #
            #   def initialize(config:, labels:, name:, tags:, version:, commit_message: nil, resolution_graph: nil, **) = super

            # def initialize: (Hash | Langfuse::BaseModel) -> void
          end
        end
      end
    end
  end
end
