# typed: strong

module Langfuse
  module Models
    module API
      module Public
        class ObservationsView < Langfuse::BaseModel
          sig { returns(String) }
          def id
          end

          sig { params(_: String).returns(String) }
          def id=(_)
          end

          sig { returns(Symbol) }
          def level
          end

          sig { params(_: Symbol).returns(Symbol) }
          def level=(_)
          end

          sig { returns(Time) }
          def start_time
          end

          sig { params(_: Time).returns(Time) }
          def start_time=(_)
          end

          sig { returns(String) }
          def type
          end

          sig { params(_: String).returns(String) }
          def type=(_)
          end

          sig { returns(T.nilable(Float)) }
          def calculated_input_cost
          end

          sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
          def calculated_input_cost=(_)
          end

          sig { returns(T.nilable(Float)) }
          def calculated_output_cost
          end

          sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
          def calculated_output_cost=(_)
          end

          sig { returns(T.nilable(Float)) }
          def calculated_total_cost
          end

          sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
          def calculated_total_cost=(_)
          end

          sig { returns(T.nilable(Time)) }
          def completion_start_time
          end

          sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
          def completion_start_time=(_)
          end

          sig { returns(T.nilable(T::Hash[Symbol, Float])) }
          def cost_details
          end

          sig { params(_: T.nilable(T::Hash[Symbol, Float])).returns(T.nilable(T::Hash[Symbol, Float])) }
          def cost_details=(_)
          end

          sig { returns(T.nilable(Time)) }
          def end_time
          end

          sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
          def end_time=(_)
          end

          sig { returns(T.nilable(String)) }
          def environment
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def environment=(_)
          end

          sig { returns(T.nilable(T.anything)) }
          def input
          end

          sig { params(_: T.anything).returns(T.anything) }
          def input=(_)
          end

          sig { returns(T.nilable(Float)) }
          def input_price
          end

          sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
          def input_price=(_)
          end

          sig { returns(T.nilable(Float)) }
          def latency
          end

          sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
          def latency=(_)
          end

          sig { returns(T.nilable(T.anything)) }
          def metadata
          end

          sig { params(_: T.anything).returns(T.anything) }
          def metadata=(_)
          end

          sig { returns(T.nilable(String)) }
          def model
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def model=(_)
          end

          sig { returns(T.nilable(String)) }
          def model_id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def model_id=(_)
          end

          sig do
            returns(
              T.nilable(
                T::Hash[Symbol,
                        T.nilable(T.any(String, Integer, T::Boolean, T::Array[String]))]
              )
            )
          end
          def model_parameters
          end

          sig do
            params(
              _: T.nilable(
                T::Hash[Symbol,
                        T.nilable(T.any(String, Integer, T::Boolean, T::Array[String]))]
              )
            )
              .returns(T.nilable(
                         T::Hash[Symbol,
                                 T.nilable(T.any(String, Integer, T::Boolean, T::Array[String]))]
                       ))
          end
          def model_parameters=(_)
          end

          sig { returns(T.nilable(String)) }
          def name
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def name=(_)
          end

          sig { returns(T.nilable(T.anything)) }
          def output
          end

          sig { params(_: T.anything).returns(T.anything) }
          def output=(_)
          end

          sig { returns(T.nilable(Float)) }
          def output_price
          end

          sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
          def output_price=(_)
          end

          sig { returns(T.nilable(String)) }
          def parent_observation_id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def parent_observation_id=(_)
          end

          sig { returns(T.nilable(String)) }
          def prompt_id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def prompt_id=(_)
          end

          sig { returns(T.nilable(String)) }
          def prompt_name
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def prompt_name=(_)
          end

          sig { returns(T.nilable(Integer)) }
          def prompt_version
          end

          sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def prompt_version=(_)
          end

          sig { returns(T.nilable(String)) }
          def status_message
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def status_message=(_)
          end

          sig { returns(T.nilable(Float)) }
          def time_to_first_token
          end

          sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
          def time_to_first_token=(_)
          end

          sig { returns(T.nilable(Float)) }
          def total_price
          end

          sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
          def total_price=(_)
          end

          sig { returns(T.nilable(String)) }
          def trace_id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def trace_id=(_)
          end

          sig { returns(T.nilable(Langfuse::Models::API::Public::Usage)) }
          def usage
          end

          sig do
            params(_: T.nilable(Langfuse::Models::API::Public::Usage))
              .returns(T.nilable(Langfuse::Models::API::Public::Usage))
          end
          def usage=(_)
          end

          sig { returns(T.nilable(T::Hash[Symbol, Integer])) }
          def usage_details
          end

          sig { params(_: T.nilable(T::Hash[Symbol, Integer])).returns(T.nilable(T::Hash[Symbol, Integer])) }
          def usage_details=(_)
          end

          sig { returns(T.nilable(String)) }
          def version
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def version=(_)
          end

          sig do
            params(
              id: String,
              level: Symbol,
              start_time: Time,
              type: String,
              calculated_input_cost: T.nilable(Float),
              calculated_output_cost: T.nilable(Float),
              calculated_total_cost: T.nilable(Float),
              completion_start_time: T.nilable(Time),
              cost_details: T.nilable(T::Hash[Symbol, Float]),
              end_time: T.nilable(Time),
              environment: T.nilable(String),
              input: T.anything,
              input_price: T.nilable(Float),
              latency: T.nilable(Float),
              metadata: T.anything,
              model: T.nilable(String),
              model_id: T.nilable(String),
              model_parameters: T.nilable(
                T::Hash[Symbol,
                        T.nilable(
                          T.any(
                            String,
                            Integer,
                            T::Boolean,
                            T::Array[String]
                          )
                        )]
              ),
              name: T.nilable(String),
              output: T.anything,
              output_price: T.nilable(Float),
              parent_observation_id: T.nilable(String),
              prompt_id: T.nilable(String),
              prompt_name: T.nilable(String),
              prompt_version: T.nilable(Integer),
              status_message: T.nilable(String),
              time_to_first_token: T.nilable(Float),
              total_price: T.nilable(Float),
              trace_id: T.nilable(String),
              usage: T.nilable(Langfuse::Models::API::Public::Usage),
              usage_details: T.nilable(T::Hash[Symbol, Integer]),
              version: T.nilable(String)
            )
              .returns(T.attached_class)
          end
          def self.new(
            id:,
            level:,
            start_time:,
            type:,
            calculated_input_cost: nil,
            calculated_output_cost: nil,
            calculated_total_cost: nil,
            completion_start_time: nil,
            cost_details: nil,
            end_time: nil,
            environment: nil,
            input: nil,
            input_price: nil,
            latency: nil,
            metadata: nil,
            model: nil,
            model_id: nil,
            model_parameters: nil,
            name: nil,
            output: nil,
            output_price: nil,
            parent_observation_id: nil,
            prompt_id: nil,
            prompt_name: nil,
            prompt_version: nil,
            status_message: nil,
            time_to_first_token: nil,
            total_price: nil,
            trace_id: nil,
            usage: nil,
            usage_details: nil,
            version: nil
          )
          end

          sig do
            override
              .returns(
                {
                  id: String,
                  level: Symbol,
                  start_time: Time,
                  type: String,
                  calculated_input_cost: T.nilable(Float),
                  calculated_output_cost: T.nilable(Float),
                  calculated_total_cost: T.nilable(Float),
                  completion_start_time: T.nilable(Time),
                  cost_details: T.nilable(T::Hash[Symbol, Float]),
                  end_time: T.nilable(Time),
                  environment: T.nilable(String),
                  input: T.anything,
                  input_price: T.nilable(Float),
                  latency: T.nilable(Float),
                  metadata: T.anything,
                  model: T.nilable(String),
                  model_id: T.nilable(String),
                  model_parameters: T.nilable(
                    T::Hash[Symbol,
                            T.nilable(
                              T.any(
                                String,
                                Integer,
                                T::Boolean,
                                T::Array[String]
                              )
                            )]
                  ),
                  name: T.nilable(String),
                  output: T.anything,
                  output_price: T.nilable(Float),
                  parent_observation_id: T.nilable(String),
                  prompt_id: T.nilable(String),
                  prompt_name: T.nilable(String),
                  prompt_version: T.nilable(Integer),
                  status_message: T.nilable(String),
                  time_to_first_token: T.nilable(Float),
                  total_price: T.nilable(Float),
                  trace_id: T.nilable(String),
                  usage: T.nilable(Langfuse::Models::API::Public::Usage),
                  usage_details: T.nilable(T::Hash[Symbol, Integer]),
                  version: T.nilable(String)
                }
              )
          end
          def to_hash
          end

          class ModelParameter < Langfuse::Union
            abstract!

            StringArray = T.type_alias { T.nilable(T::Array[String]) }

            class << self
              sig do
                override
                  .returns([
                             [NilClass, String],
                             [NilClass, Integer],
                             [NilClass, T::Boolean],
                             [NilClass, T::Array[String]]
                           ])
              end
              private def variants
              end
            end
          end
        end
      end
    end
  end
end
