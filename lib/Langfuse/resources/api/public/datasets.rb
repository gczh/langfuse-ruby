# frozen_string_literal: true

module Langfuse
  module Resources
    class API
      class Public
        class Datasets
          # @return [Langfuse::Resources::API::Public::Datasets::Runs]
          attr_reader :runs

          # @param client [Langfuse::Client]
          #
          def initialize(client:)
            @client = client
            @runs = Langfuse::Resources::API::Public::Datasets::Runs.new(client: client)
          end
        end
      end
    end
  end
end
