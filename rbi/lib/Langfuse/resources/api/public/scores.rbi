# typed: strong

module Langfuse
  module Resources
    class API
      class Public
        class Scores
          sig do
            params(
              name: String,
              trace_id: String,
              value: T.any(Float, String),
              id: T.nilable(String),
              comment: T.nilable(String),
              config_id: T.nilable(String),
              data_type: T.nilable(Symbol),
              environment: T.nilable(String),
              observation_id: T.nilable(String),
              request_options: T.nilable(T.any(Langfuse::RequestOptions, T::Hash[Symbol, T.anything]))
            )
              .returns(Langfuse::Models::API::Public::ScoreCreateResponse)
          end
          def create(
            name:,
            trace_id:,
            value:,
            id: nil,
            comment: nil,
            config_id: nil,
            data_type: nil,
            environment: nil,
            observation_id: nil,
            request_options: {}
          )
          end

          sig do
            params(
              score_id: String,
              request_options: T.nilable(T.any(Langfuse::RequestOptions, T::Hash[Symbol, T.anything]))
            )
              .returns(
                T.any(
                  Langfuse::Models::API::Public::Score::UnionMember0,
                  Langfuse::Models::API::Public::Score::UnionMember1,
                  Langfuse::Models::API::Public::Score::UnionMember2
                )
              )
          end
          def retrieve(score_id, request_options: {})
          end

          sig do
            params(
              config_id: T.nilable(String),
              data_type: T.nilable(Symbol),
              environment: T::Array[T.nilable(String)],
              from_timestamp: T.nilable(Time),
              limit: T.nilable(Integer),
              name: T.nilable(String),
              operator: T.nilable(String),
              page: T.nilable(Integer),
              queue_id: T.nilable(String),
              score_ids: T.nilable(String),
              source: T.nilable(Symbol),
              to_timestamp: T.nilable(Time),
              trace_tags: T::Array[T.nilable(String)],
              user_id: T.nilable(String),
              value: T.nilable(Float),
              request_options: T.nilable(T.any(Langfuse::RequestOptions, T::Hash[Symbol, T.anything]))
            )
              .returns(Langfuse::Models::API::Public::ScoreListResponse)
          end
          def list(
            config_id: nil,
            data_type: nil,
            environment: nil,
            from_timestamp: nil,
            limit: nil,
            name: nil,
            operator: nil,
            page: nil,
            queue_id: nil,
            score_ids: nil,
            source: nil,
            to_timestamp: nil,
            trace_tags: nil,
            user_id: nil,
            value: nil,
            request_options: {}
          )
          end

          sig do
            params(
              score_id: String,
              request_options: T.nilable(T.any(Langfuse::RequestOptions, T::Hash[Symbol, T.anything]))
            )
              .void
          end
          def delete(score_id, request_options: {})
          end

          sig { params(client: Langfuse::Client).returns(T.attached_class) }
          def self.new(client:)
          end
        end
      end
    end
  end
end
