# typed: strong

module Langfuse
  module Models
    module API
      module Public
        class ScoreConfig < Langfuse::BaseModel
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

          sig { returns(Symbol) }
          def data_type
          end

          sig { params(_: Symbol).returns(Symbol) }
          def data_type=(_)
          end

          sig { returns(T::Boolean) }
          def is_archived
          end

          sig { params(_: T::Boolean).returns(T::Boolean) }
          def is_archived=(_)
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

          sig { returns(T.nilable(T::Array[Langfuse::Models::API::Public::ConfigCategory])) }
          def categories
          end

          sig do
            params(_: T.nilable(T::Array[Langfuse::Models::API::Public::ConfigCategory]))
              .returns(T.nilable(T::Array[Langfuse::Models::API::Public::ConfigCategory]))
          end
          def categories=(_)
          end

          sig { returns(T.nilable(String)) }
          def description
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def description=(_)
          end

          sig { returns(T.nilable(Float)) }
          def max_value
          end

          sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
          def max_value=(_)
          end

          sig { returns(T.nilable(Float)) }
          def min_value
          end

          sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
          def min_value=(_)
          end

          sig do
            params(
              id: String,
              created_at: Time,
              data_type: Symbol,
              is_archived: T::Boolean,
              name: String,
              project_id: String,
              updated_at: Time,
              categories: T.nilable(T::Array[Langfuse::Models::API::Public::ConfigCategory]),
              description: T.nilable(String),
              max_value: T.nilable(Float),
              min_value: T.nilable(Float)
            )
              .returns(T.attached_class)
          end
          def self.new(
            id:,
            created_at:,
            data_type:,
            is_archived:,
            name:,
            project_id:,
            updated_at:,
            categories: nil,
            description: nil,
            max_value: nil,
            min_value: nil
          )
          end

          sig do
            override
              .returns(
                {
                  id: String,
                  created_at: Time,
                  data_type: Symbol,
                  is_archived: T::Boolean,
                  name: String,
                  project_id: String,
                  updated_at: Time,
                  categories: T.nilable(T::Array[Langfuse::Models::API::Public::ConfigCategory]),
                  description: T.nilable(String),
                  max_value: T.nilable(Float),
                  min_value: T.nilable(Float)
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
