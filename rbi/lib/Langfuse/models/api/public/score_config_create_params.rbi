# typed: strong

module Langfuse
  module Models
    module API
      module Public
        class ScoreConfigCreateParams < Langfuse::BaseModel
          extend Langfuse::RequestParameters::Converter
          include Langfuse::RequestParameters

          sig { returns(Symbol) }
          def data_type
          end

          sig { params(_: Symbol).returns(Symbol) }
          def data_type=(_)
          end

          sig { returns(String) }
          def name
          end

          sig { params(_: String).returns(String) }
          def name=(_)
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
              data_type: Symbol,
              name: String,
              categories: T.nilable(T::Array[Langfuse::Models::API::Public::ConfigCategory]),
              description: T.nilable(String),
              max_value: T.nilable(Float),
              min_value: T.nilable(Float),
              request_options: T.any(Langfuse::RequestOptions, T::Hash[Symbol, T.anything])
            )
              .returns(T.attached_class)
          end
          def self.new(data_type:, name:, categories: nil, description: nil, max_value: nil, min_value: nil, request_options: {})
          end

          sig do
            override
              .returns(
                {
                  data_type: Symbol,
                  name: String,
                  categories: T.nilable(T::Array[Langfuse::Models::API::Public::ConfigCategory]),
                  description: T.nilable(String),
                  max_value: T.nilable(Float),
                  min_value: T.nilable(Float),
                  request_options: Langfuse::RequestOptions
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
