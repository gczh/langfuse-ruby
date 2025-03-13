# typed: strong

module Langfuse
  module Models
    module API
      module Public
        class MetricGetDailyResponse < Langfuse::BaseModel
          sig { returns(T::Array[Langfuse::Models::API::Public::MetricGetDailyResponse::Data]) }
          def data
          end

          sig do
            params(_: T::Array[Langfuse::Models::API::Public::MetricGetDailyResponse::Data])
              .returns(T::Array[Langfuse::Models::API::Public::MetricGetDailyResponse::Data])
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
              data: T::Array[Langfuse::Models::API::Public::MetricGetDailyResponse::Data],
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
                  data: T::Array[Langfuse::Models::API::Public::MetricGetDailyResponse::Data],
                  meta: Langfuse::Models::API::Public::UtilsMetaResponse
                }
              )
          end
          def to_hash
          end

          class Data < Langfuse::BaseModel
            sig { returns(Integer) }
            def count_observations
            end

            sig { params(_: Integer).returns(Integer) }
            def count_observations=(_)
            end

            sig { returns(Integer) }
            def count_traces
            end

            sig { params(_: Integer).returns(Integer) }
            def count_traces=(_)
            end

            sig { returns(Date) }
            def date
            end

            sig { params(_: Date).returns(Date) }
            def date=(_)
            end

            sig { returns(Float) }
            def total_cost
            end

            sig { params(_: Float).returns(Float) }
            def total_cost=(_)
            end

            sig { returns(T::Array[Langfuse::Models::API::Public::MetricGetDailyResponse::Data::Usage]) }
            def usage
            end

            sig do
              params(_: T::Array[Langfuse::Models::API::Public::MetricGetDailyResponse::Data::Usage])
                .returns(T::Array[Langfuse::Models::API::Public::MetricGetDailyResponse::Data::Usage])
            end
            def usage=(_)
            end

            sig do
              params(
                count_observations: Integer,
                count_traces: Integer,
                date: Date,
                total_cost: Float,
                usage: T::Array[Langfuse::Models::API::Public::MetricGetDailyResponse::Data::Usage]
              )
                .returns(T.attached_class)
            end
            def self.new(count_observations:, count_traces:, date:, total_cost:, usage:)
            end

            sig do
              override
                .returns(
                  {
                    count_observations: Integer,
                    count_traces: Integer,
                    date: Date,
                    total_cost: Float,
                    usage: T::Array[Langfuse::Models::API::Public::MetricGetDailyResponse::Data::Usage]
                  }
                )
            end
            def to_hash
            end

            class Usage < Langfuse::BaseModel
              sig { returns(Integer) }
              def count_observations
              end

              sig { params(_: Integer).returns(Integer) }
              def count_observations=(_)
              end

              sig { returns(Integer) }
              def count_traces
              end

              sig { params(_: Integer).returns(Integer) }
              def count_traces=(_)
              end

              sig { returns(Integer) }
              def input_usage
              end

              sig { params(_: Integer).returns(Integer) }
              def input_usage=(_)
              end

              sig { returns(Integer) }
              def output_usage
              end

              sig { params(_: Integer).returns(Integer) }
              def output_usage=(_)
              end

              sig { returns(Float) }
              def total_cost
              end

              sig { params(_: Float).returns(Float) }
              def total_cost=(_)
              end

              sig { returns(Integer) }
              def total_usage
              end

              sig { params(_: Integer).returns(Integer) }
              def total_usage=(_)
              end

              sig { returns(T.nilable(String)) }
              def model
              end

              sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
              def model=(_)
              end

              sig do
                params(
                  count_observations: Integer,
                  count_traces: Integer,
                  input_usage: Integer,
                  output_usage: Integer,
                  total_cost: Float,
                  total_usage: Integer,
                  model: T.nilable(String)
                )
                  .returns(T.attached_class)
              end
              def self.new(count_observations:, count_traces:, input_usage:, output_usage:, total_cost:, total_usage:, model: nil)
              end

              sig do
                override
                  .returns(
                    {
                      count_observations: Integer,
                      count_traces: Integer,
                      input_usage: Integer,
                      output_usage: Integer,
                      total_cost: Float,
                      total_usage: Integer,
                      model: T.nilable(String)
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
end
