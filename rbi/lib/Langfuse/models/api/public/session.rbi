# typed: strong

module Langfuse
  module Models
    module API
      module Public
        class Session < Langfuse::BaseModel
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
          def project_id
          end

          sig { params(_: String).returns(String) }
          def project_id=(_)
          end

          sig { returns(T.nilable(String)) }
          def environment
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def environment=(_)
          end

          sig do
            params(id: String, created_at: Time, project_id: String, environment: T.nilable(String))
              .returns(T.attached_class)
          end
          def self.new(id:, created_at:, project_id:, environment: nil)
          end

          sig do
            override.returns(
              {
                id: String,
                created_at: Time,
                project_id: String,
                environment: T.nilable(String)
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
