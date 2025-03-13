# typed: strong

module Langfuse
  module Resources
    class API
      class Public
        class V2
          sig { returns(Langfuse::Resources::API::Public::V2::Datasets) }
          def datasets
          end

          sig { returns(Langfuse::Resources::API::Public::V2::Prompts) }
          def prompts
          end

          sig { params(client: Langfuse::Client).returns(T.attached_class) }
          def self.new(client:)
          end
        end
      end
    end
  end
end
