# typed: strong

module Langfuse
  module Models
    module API
      class OptionalObservationBody < Langfuse::BaseModel
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

        sig { returns(T.nilable(String)) }
        def version
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def version=(_)
        end

        sig do
          params(
            environment: T.nilable(String),
            input: T.anything,
            level: T.nilable(Symbol),
            metadata: T.anything,
            name: T.nilable(String),
            output: T.anything,
            parent_observation_id: T.nilable(String),
            start_time: T.nilable(Time),
            status_message: T.nilable(String),
            trace_id: T.nilable(String),
            version: T.nilable(String)
          )
            .returns(T.attached_class)
        end
        def self.new(
          environment: nil,
          input: nil,
          level: nil,
          metadata: nil,
          name: nil,
          output: nil,
          parent_observation_id: nil,
          start_time: nil,
          status_message: nil,
          trace_id: nil,
          version: nil
        )
        end

        sig do
          override
            .returns(
              {
                environment: T.nilable(String),
                input: T.anything,
                level: T.nilable(Symbol),
                metadata: T.anything,
                name: T.nilable(String),
                output: T.anything,
                parent_observation_id: T.nilable(String),
                start_time: T.nilable(Time),
                status_message: T.nilable(String),
                trace_id: T.nilable(String),
                version: T.nilable(String)
              }
            )
        end
        def to_hash
        end
      end
    end
  end
end
