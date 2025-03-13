# typed: strong

module Langfuse
  module Models
    module API
      module Public
        module V2
          class ChatMessage < Langfuse::BaseModel
            sig { returns(String) }
            def content
            end

            sig { params(_: String).returns(String) }
            def content=(_)
            end

            sig { returns(String) }
            def role
            end

            sig { params(_: String).returns(String) }
            def role=(_)
            end

            sig { params(content: String, role: String).returns(T.attached_class) }
            def self.new(content:, role:)
            end

            sig { override.returns({content: String, role: String}) }
            def to_hash
            end
          end
        end
      end
    end
  end
end
