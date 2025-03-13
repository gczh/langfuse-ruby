# typed: strong

module Langfuse
  module Models
    module API
      class PublicCheckHealthResponse < Langfuse::BaseModel
        sig { returns(String) }
        def status
        end

        sig { params(_: String).returns(String) }
        def status=(_)
        end

        sig { returns(String) }
        def version
        end

        sig { params(_: String).returns(String) }
        def version=(_)
        end

        sig { params(status: String, version: String).returns(T.attached_class) }
        def self.new(status:, version:)
        end

        sig { override.returns({status: String, version: String}) }
        def to_hash
        end
      end
    end
  end
end
