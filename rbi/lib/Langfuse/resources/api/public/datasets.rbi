# typed: strong

module Langfuse
  module Resources
    class API
      class Public
        class Datasets
          sig { returns(Langfuse::Resources::API::Public::Datasets::Runs) }
          def runs
          end

          sig { params(client: Langfuse::Client).returns(T.attached_class) }
          def self.new(client:)
          end
        end
      end
    end
  end
end
