# typed: strong

module Langfuse
  module Resources
    class API
      sig { returns(Langfuse::Resources::API::Public) }
      def public
      end

      sig { params(client: Langfuse::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
