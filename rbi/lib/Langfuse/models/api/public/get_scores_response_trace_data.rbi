# typed: strong

module Langfuse
  module Models
    module API
      module Public
        class GetScoresResponseTraceData < Langfuse::BaseModel
          sig { returns(T.nilable(String)) }
          def environment
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def environment=(_)
          end

          sig { returns(T.nilable(T::Array[String])) }
          def tags
          end

          sig { params(_: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
          def tags=(_)
          end

          sig { returns(T.nilable(String)) }
          def user_id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def user_id=(_)
          end

          sig do
            params(
              environment: T.nilable(String),
              tags: T.nilable(T::Array[String]),
              user_id: T.nilable(String)
            )
              .returns(T.attached_class)
          end
          def self.new(environment: nil, tags: nil, user_id: nil)
          end

          sig do
            override
              .returns({
                         environment: T.nilable(String),
                         tags: T.nilable(T::Array[String]),
                         user_id: T.nilable(String)
                       })
          end
          def to_hash
          end
        end
      end
    end
  end
end
