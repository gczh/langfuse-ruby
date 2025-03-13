# typed: strong

module Langfuse
  module Models
    module API
      module Public
        class TraceListResponse < Langfuse::BaseModel
          sig { returns(T::Array[Langfuse::Models::API::Public::TraceListResponse::Data]) }
          def data
          end

          sig do
            params(_: T::Array[Langfuse::Models::API::Public::TraceListResponse::Data])
              .returns(T::Array[Langfuse::Models::API::Public::TraceListResponse::Data])
          end
          def data=(_)
          end

          sig { returns(Langfuse::Models::API::Public::UtilsMetaResponse) }
          def meta
          end

          sig do
            params(_: Langfuse::Models::API::Public::UtilsMetaResponse)
              .returns(Langfuse::Models::API::Public::UtilsMetaResponse)
          end
          def meta=(_)
          end

          sig do
            params(
              data: T::Array[Langfuse::Models::API::Public::TraceListResponse::Data],
              meta: Langfuse::Models::API::Public::UtilsMetaResponse
            )
              .returns(T.attached_class)
          end
          def self.new(data:, meta:)
          end

          sig do
            override
              .returns(
                {
                  data: T::Array[Langfuse::Models::API::Public::TraceListResponse::Data],
                  meta: Langfuse::Models::API::Public::UtilsMetaResponse
                }
              )
          end
          def to_hash
          end

          class Data < Langfuse::Models::API::Public::Trace
            sig { returns(String) }
            def html_path
            end

            sig { params(_: String).returns(String) }
            def html_path=(_)
            end

            sig { returns(Float) }
            def latency
            end

            sig { params(_: Float).returns(Float) }
            def latency=(_)
            end

            sig { returns(T::Array[String]) }
            def observations
            end

            sig { params(_: T::Array[String]).returns(T::Array[String]) }
            def observations=(_)
            end

            sig { returns(T::Array[String]) }
            def scores
            end

            sig { params(_: T::Array[String]).returns(T::Array[String]) }
            def scores=(_)
            end

            sig { returns(Float) }
            def total_cost
            end

            sig { params(_: Float).returns(Float) }
            def total_cost=(_)
            end

            sig do
              params(
                html_path: String,
                latency: Float,
                observations: T::Array[String],
                scores: T::Array[String],
                total_cost: Float
              )
                .returns(T.attached_class)
            end
            def self.new(html_path:, latency:, observations:, scores:, total_cost:)
            end

            sig do
              override
                .returns(
                  {
                    html_path: String,
                    latency: Float,
                    observations: T::Array[String],
                    scores: T::Array[String],
                    total_cost: Float
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
