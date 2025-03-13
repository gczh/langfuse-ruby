# typed: strong

module Langfuse
  module Models
    module API
      class ObservationBody < Langfuse::BaseModel
        sig { returns(Symbol) }
        def type
        end

        sig { params(_: Symbol).returns(Symbol) }
        def type=(_)
        end

        sig { returns(T.nilable(String)) }
        def id
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def id=(_)
        end

        sig { returns(T.nilable(Time)) }
        def completion_start_time
        end

        sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
        def completion_start_time=(_)
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

        sig { returns(T.nilable(Symbol)) }
        def level
        end

        sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
        def level=(_)
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

        sig do
          returns(T.nilable(T::Hash[Symbol, T.nilable(T.any(String, Integer, T::Boolean, T::Array[String]))]))
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

        sig { returns(T.nilable(String)) }
        def parent_observation_id
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def parent_observation_id=(_)
        end

        sig { returns(T.nilable(Time)) }
        def start_time
        end

        sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
        def start_time=(_)
        end

        sig { returns(T.nilable(String)) }
        def status_message
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def status_message=(_)
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

        sig { returns(T.nilable(String)) }
        def version
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def version=(_)
        end

        sig do
          params(
            type: Symbol,
            id: T.nilable(String),
            completion_start_time: T.nilable(Time),
            end_time: T.nilable(Time),
            environment: T.nilable(String),
            input: T.anything,
            level: T.nilable(Symbol),
            metadata: T.anything,
            model: T.nilable(String),
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
            parent_observation_id: T.nilable(String),
            start_time: T.nilable(Time),
            status_message: T.nilable(String),
            trace_id: T.nilable(String),
            usage: T.nilable(Langfuse::Models::API::Public::Usage),
            version: T.nilable(String)
          )
            .returns(T.attached_class)
        end
        def self.new(
          type:,
          id: nil,
          completion_start_time: nil,
          end_time: nil,
          environment: nil,
          input: nil,
          level: nil,
          metadata: nil,
          model: nil,
          model_parameters: nil,
          name: nil,
          output: nil,
          parent_observation_id: nil,
          start_time: nil,
          status_message: nil,
          trace_id: nil,
          usage: nil,
          version: nil
        )
        end

        sig do
          override
            .returns(
              {
                type: Symbol,
                id: T.nilable(String),
                completion_start_time: T.nilable(Time),
                end_time: T.nilable(Time),
                environment: T.nilable(String),
                input: T.anything,
                level: T.nilable(Symbol),
                metadata: T.anything,
                model: T.nilable(String),
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
                parent_observation_id: T.nilable(String),
                start_time: T.nilable(Time),
                status_message: T.nilable(String),
                trace_id: T.nilable(String),
                usage: T.nilable(Langfuse::Models::API::Public::Usage),
                version: T.nilable(String)
              }
            )
        end
        def to_hash
        end

        class Type < Langfuse::Enum
          abstract!

          SPAN = :SPAN
          GENERATION = :GENERATION
          EVENT = :EVENT

          class << self
            sig { override.returns(T::Array[Symbol]) }
            def values
            end
          end
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
