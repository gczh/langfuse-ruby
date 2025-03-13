# typed: strong

module Langfuse
  module Models
    module API
      class BaseEvent < Langfuse::BaseModel
        sig { returns(String) }
        def id
        end

        sig { params(_: String).returns(String) }
        def id=(_)
        end

        sig { returns(String) }
        def timestamp
        end

        sig { params(_: String).returns(String) }
        def timestamp=(_)
        end

        sig { returns(T.nilable(T.anything)) }
        def metadata
        end

        sig { params(_: T.anything).returns(T.anything) }
        def metadata=(_)
        end

        sig { params(id: String, timestamp: String, metadata: T.anything).returns(T.attached_class) }
        def self.new(id:, timestamp:, metadata: nil)
        end

        sig { override.returns({id: String, timestamp: String, metadata: T.anything}) }
        def to_hash
        end
      end
    end
  end
end
