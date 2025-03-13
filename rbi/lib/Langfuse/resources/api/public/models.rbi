# typed: strong

module Langfuse
  module Resources
    class API
      class Public
        class Models
          sig do
            params(
              match_pattern: String,
              model_name: String,
              input_price: T.nilable(Float),
              output_price: T.nilable(Float),
              start_date: T.nilable(Time),
              tokenizer_config: T.anything,
              tokenizer_id: T.nilable(String),
              total_price: T.nilable(Float),
              unit: T.nilable(Symbol),
              request_options: T.nilable(T.any(Langfuse::RequestOptions, T::Hash[Symbol, T.anything]))
            )
              .returns(Langfuse::Models::API::Public::Model)
          end
          def create(
            match_pattern:,
            model_name:,
            input_price: nil,
            output_price: nil,
            start_date: nil,
            tokenizer_config: nil,
            tokenizer_id: nil,
            total_price: nil,
            unit: nil,
            request_options: {}
          )
          end

          sig do
            params(
              id: String,
              request_options: T.nilable(T.any(Langfuse::RequestOptions, T::Hash[Symbol, T.anything]))
            )
              .returns(Langfuse::Models::API::Public::Model)
          end
          def retrieve(id, request_options: {})
          end

          sig do
            params(
              limit: T.nilable(Integer),
              page: T.nilable(Integer),
              request_options: T.nilable(T.any(Langfuse::RequestOptions, T::Hash[Symbol, T.anything]))
            )
              .returns(Langfuse::Models::API::Public::ModelListResponse)
          end
          def list(limit: nil, page: nil, request_options: {})
          end

          sig do
            params(
              id: String,
              request_options: T.nilable(T.any(Langfuse::RequestOptions, T::Hash[Symbol, T.anything]))
            )
              .void
          end
          def delete(id, request_options: {})
          end

          sig { params(client: Langfuse::Client).returns(T.attached_class) }
          def self.new(client:)
          end
        end
      end
    end
  end
end
