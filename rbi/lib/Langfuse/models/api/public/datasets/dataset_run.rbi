# typed: strong

module Langfuse
  module Models
    module API
      module Public
        DatasetRun = T.type_alias { Datasets::DatasetRun }

        module Datasets
          class DatasetRun < Langfuse::BaseModel
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
            def dataset_id
            end

            sig { params(_: String).returns(String) }
            def dataset_id=(_)
            end

            sig { returns(String) }
            def dataset_name
            end

            sig { params(_: String).returns(String) }
            def dataset_name=(_)
            end

            sig { returns(String) }
            def name
            end

            sig { params(_: String).returns(String) }
            def name=(_)
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
                dataset_id: String,
                dataset_name: String,
                name: String,
                updated_at: Time,
                description: T.nilable(String),
                metadata: T.anything
              )
                .returns(T.attached_class)
            end
            def self.new(id:, created_at:, dataset_id:, dataset_name:, name:, updated_at:, description: nil, metadata: nil)
            end

            sig do
              override
                .returns(
                  {
                    id: String,
                    created_at: Time,
                    dataset_id: String,
                    dataset_name: String,
                    name: String,
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
