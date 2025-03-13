# typed: strong

module Langfuse
  module Models
    module API
      module Public
        module V2
          class Dataset < Langfuse::BaseModel
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
            def description
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def description=(_)
            end

            sig { returns(T.nilable(T.anything)) }
            def metadata
            end

            sig { params(_: T.anything).returns(T.anything) }
            def metadata=(_)
            end

            sig do
              params(
                id: String,
                created_at: Time,
                name: String,
                project_id: String,
                updated_at: Time,
                description: T.nilable(String),
                metadata: T.anything
              )
                .returns(T.attached_class)
            end
            def self.new(id:, created_at:, name:, project_id:, updated_at:, description: nil, metadata: nil)
            end

            sig do
              override
                .returns(
                  {
                    id: String,
                    created_at: Time,
                    name: String,
                    project_id: String,
                    updated_at: Time,
                    description: T.nilable(String),
                    metadata: T.anything
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
end
