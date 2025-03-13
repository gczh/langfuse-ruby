# typed: strong

module Langfuse
  module Resources
    class API
      class Public
        class ScoreConfigs
          sig do
            params(
              data_type: Symbol,
              name: String,
              categories: T.nilable(T::Array[Langfuse::Models::API::Public::ConfigCategory]),
              description: T.nilable(String),
              max_value: T.nilable(Float),
              min_value: T.nilable(Float),
              request_options: T.nilable(T.any(Langfuse::RequestOptions, T::Hash[Symbol, T.anything]))
            )
              .returns(Langfuse::Models::API::Public::ScoreConfig)
          end
          def create(
            data_type:,
            name:,
            categories: nil,
            description: nil,
            max_value: nil,
            min_value: nil,
            request_options: {}
          )
          end

          sig do
            params(
              config_id: String,
              request_options: T.nilable(T.any(Langfuse::RequestOptions, T::Hash[Symbol, T.anything]))
            )
              .returns(Langfuse::Models::API::Public::ScoreConfig)
          end
          def retrieve(config_id, request_options: {})
          end

          sig do
            params(
              limit: T.nilable(Integer),
              page: T.nilable(Integer),
              request_options: T.nilable(T.any(Langfuse::RequestOptions, T::Hash[Symbol, T.anything]))
            )
              .returns(Langfuse::Models::API::Public::ScoreConfigListResponse)
          end
          def list(limit: nil, page: nil, request_options: {})
          end

          sig { params(client: Langfuse::Client).returns(T.attached_class) }
          def self.new(client:)
          end
        end
      end
    end
  end
end
