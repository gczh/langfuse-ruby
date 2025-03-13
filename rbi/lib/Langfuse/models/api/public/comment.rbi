# typed: strong

module Langfuse
  module Models
    module API
      module Public
        class Comment < Langfuse::BaseModel
          sig { returns(String) }
          def id
          end

          sig { params(_: String).returns(String) }
          def id=(_)
          end

          sig { returns(String) }
          def content
          end

          sig { params(_: String).returns(String) }
          def content=(_)
          end

          sig { returns(Time) }
          def created_at
          end

          sig { params(_: Time).returns(Time) }
          def created_at=(_)
          end

          sig { returns(String) }
          def object_id_
          end

          sig { params(_: String).returns(String) }
          def object_id_=(_)
          end

          sig { returns(Symbol) }
          def object_type
          end

          sig { params(_: Symbol).returns(Symbol) }
          def object_type=(_)
          end

          sig { returns(String) }
          def project_id
          end

          sig { params(_: String).returns(String) }
          def project_id=(_)
          end

          sig { returns(Time) }
          def updated_at
          end

          sig { params(_: Time).returns(Time) }
          def updated_at=(_)
          end

          sig { returns(T.nilable(String)) }
          def author_user_id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def author_user_id=(_)
          end

          sig do
            params(
              id: String,
              content: String,
              created_at: Time,
              object_id_: String,
              object_type: Symbol,
              project_id: String,
              updated_at: Time,
              author_user_id: T.nilable(String)
            )
              .returns(T.attached_class)
          end
          def self.new(id:, content:, created_at:, object_id_:, object_type:, project_id:, updated_at:, author_user_id: nil)
          end

          sig do
            override
              .returns(
                {
                  id: String,
                  content: String,
                  created_at: Time,
                  object_id_: String,
                  object_type: Symbol,
                  project_id: String,
                  updated_at: Time,
                  author_user_id: T.nilable(String)
                }
              )
          end
          def to_hash
          end

          class ObjectType < Langfuse::Enum
            abstract!

            TRACE = :TRACE
            OBSERVATION = :OBSERVATION
            SESSION = :SESSION
            PROMPT = :PROMPT

            class << self
              sig { override.returns(T::Array[Symbol]) }
              def values
              end
            end
          end
        end
      end
    end
  end
end
