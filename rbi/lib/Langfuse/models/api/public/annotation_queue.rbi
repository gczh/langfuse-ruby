# typed: strong

module Langfuse
  module Models
    module API
      module Public
        class AnnotationQueue < Langfuse::BaseModel
          sig { returns(String) }
          def id
          end

          sig { params(_: String).returns(String) }
          def id=(_)
          end

          sig { returns(Time) }
          def created_at
          end

          sig { params(_: Time).returns(Time) }
          def created_at=(_)
          end

          sig { returns(String) }
          def name
          end

          sig { params(_: String).returns(String) }
          def name=(_)
          end

          sig { returns(T::Array[String]) }
          def score_config_ids
          end

          sig { params(_: T::Array[String]).returns(T::Array[String]) }
          def score_config_ids=(_)
          end

          sig { returns(Time) }
          def updated_at
          end

          sig { params(_: Time).returns(Time) }
          def updated_at=(_)
          end

          sig { returns(T.nilable(String)) }
          def description
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def description=(_)
          end

          sig do
            params(
              id: String,
              created_at: Time,
              name: String,
              score_config_ids: T::Array[String],
              updated_at: Time,
              description: T.nilable(String)
            )
              .returns(T.attached_class)
          end
          def self.new(id:, created_at:, name:, score_config_ids:, updated_at:, description: nil)
          end

          sig do
            override
              .returns(
                {
                  id: String,
                  created_at: Time,
                  name: String,
                  score_config_ids: T::Array[String],
                  updated_at: Time,
                  description: T.nilable(String)
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
