# typed: strong

module Langfuse
  module Models
    module API
      module Public
        class Trace < Langfuse::BaseModel
          sig { returns(String) }
          def id
          end

          sig { params(_: String).returns(String) }
          def id=(_)
          end

          sig { returns(Time) }
          def timestamp
          end

          sig { params(_: Time).returns(Time) }
          def timestamp=(_)
          end

          sig { returns(T.nilable(String)) }
          def environment
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def environment=(_)
          end

          sig { returns(T.nilable(T.anything)) }
          def input
          end

          sig { params(_: T.anything).returns(T.anything) }
          def input=(_)
          end

          sig { returns(T.nilable(T.anything)) }
          def metadata
          end

          sig { params(_: T.anything).returns(T.anything) }
          def metadata=(_)
          end

          sig { returns(T.nilable(String)) }
          def name
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def name=(_)
          end

          sig { returns(T.nilable(T.anything)) }
          def output
          end

          sig { params(_: T.anything).returns(T.anything) }
          def output=(_)
          end

          sig { returns(T.nilable(T::Boolean)) }
          def public
          end

          sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def public=(_)
          end

          sig { returns(T.nilable(String)) }
          def release
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def release=(_)
          end

          sig { returns(T.nilable(String)) }
          def session_id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def session_id=(_)
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

          sig { returns(T.nilable(String)) }
          def version
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def version=(_)
          end

          sig do
            params(
              id: String,
              timestamp: Time,
              environment: T.nilable(String),
              input: T.anything,
              metadata: T.anything,
              name: T.nilable(String),
              output: T.anything,
              public: T.nilable(T::Boolean),
              release: T.nilable(String),
              session_id: T.nilable(String),
              tags: T.nilable(T::Array[String]),
              user_id: T.nilable(String),
              version: T.nilable(String)
            )
              .returns(T.attached_class)
          end
          def self.new(
            id:,
            timestamp:,
            environment: nil,
            input: nil,
            metadata: nil,
            name: nil,
            output: nil,
            public: nil,
            release: nil,
            session_id: nil,
            tags: nil,
            user_id: nil,
            version: nil
          )
          end

          sig do
            override
              .returns(
                {
                  id: String,
                  timestamp: Time,
                  environment: T.nilable(String),
                  input: T.anything,
                  metadata: T.anything,
                  name: T.nilable(String),
                  output: T.anything,
                  public: T.nilable(T::Boolean),
                  release: T.nilable(String),
                  session_id: T.nilable(String),
                  tags: T.nilable(T::Array[String]),
                  user_id: T.nilable(String),
                  version: T.nilable(String)
                }
              )
          end
          def to_hash
          end
        end
      end
    end
  end
end
