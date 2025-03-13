# frozen_string_literal: true

module Langfuse
  module Resources
    class API
      # @return [Langfuse::Resources::API::Public]
      attr_reader :public

      # @param client [Langfuse::Client]
      #
      def initialize(client:)
        @client = client
        @public = Langfuse::Resources::API::Public.new(client: client)
      end
    end
  end
end
