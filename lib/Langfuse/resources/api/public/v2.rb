# frozen_string_literal: true

module Langfuse
  module Resources
    class API
      class Public
        class V2
          # @return [Langfuse::Resources::API::Public::V2::Datasets]
          attr_reader :datasets

          # @return [Langfuse::Resources::API::Public::V2::Prompts]
          attr_reader :prompts

          # @param client [Langfuse::Client]
          #
          def initialize(client:)
            @client = client
            @datasets = Langfuse::Resources::API::Public::V2::Datasets.new(client: client)
            @prompts = Langfuse::Resources::API::Public::V2::Prompts.new(client: client)
          end
        end
      end
    end
  end
end
