# typed: strong

module Langfuse
  module Models
    module API
      module Public
        class TraceRetrieveResponse < Langfuse::Models::API::Public::Trace
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

          sig { returns(T::Array[Langfuse::Models::API::Public::ObservationsView]) }
          def observations
          end

          sig do
            params(_: T::Array[Langfuse::Models::API::Public::ObservationsView])
              .returns(T::Array[Langfuse::Models::API::Public::ObservationsView])
          end
          def observations=(_)
          end

          sig do
            returns(
              T::Array[
              T.any(
                Langfuse::Models::API::Public::Score::UnionMember0,
                Langfuse::Models::API::Public::Score::UnionMember1,
                Langfuse::Models::API::Public::Score::UnionMember2
              )
              ]
            )
          end
          def scores
          end

          sig do
            params(
              _: T::Array[
              T.any(
                Langfuse::Models::API::Public::Score::UnionMember0,
                Langfuse::Models::API::Public::Score::UnionMember1,
                Langfuse::Models::API::Public::Score::UnionMember2
              )
              ]
            )
              .returns(
                T::Array[
                T.any(
                  Langfuse::Models::API::Public::Score::UnionMember0,
                  Langfuse::Models::API::Public::Score::UnionMember1,
                  Langfuse::Models::API::Public::Score::UnionMember2
                )
                ]
              )
          end
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
              observations: T::Array[Langfuse::Models::API::Public::ObservationsView],
              scores: T::Array[
              T.any(
                Langfuse::Models::API::Public::Score::UnionMember0,
                Langfuse::Models::API::Public::Score::UnionMember1,
                Langfuse::Models::API::Public::Score::UnionMember2
              )
              ],
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
                  observations: T::Array[Langfuse::Models::API::Public::ObservationsView],
                  scores: T::Array[
                  T.any(
                    Langfuse::Models::API::Public::Score::UnionMember0,
                    Langfuse::Models::API::Public::Score::UnionMember1,
                    Langfuse::Models::API::Public::Score::UnionMember2
                  )
                  ],
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
