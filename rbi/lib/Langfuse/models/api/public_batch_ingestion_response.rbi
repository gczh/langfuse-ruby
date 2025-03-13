# typed: strong

module Langfuse
  module Models
    module API
      class PublicBatchIngestionResponse < Langfuse::BaseModel
        sig { returns(T::Array[Langfuse::Models::API::PublicBatchIngestionResponse::Error]) }
        def errors
        end

        sig do
          params(_: T::Array[Langfuse::Models::API::PublicBatchIngestionResponse::Error])
            .returns(T::Array[Langfuse::Models::API::PublicBatchIngestionResponse::Error])
        end
        def errors=(_)
        end

        sig { returns(T::Array[Langfuse::Models::API::PublicBatchIngestionResponse::Success]) }
        def successes
        end

        sig do
          params(_: T::Array[Langfuse::Models::API::PublicBatchIngestionResponse::Success])
            .returns(T::Array[Langfuse::Models::API::PublicBatchIngestionResponse::Success])
        end
        def successes=(_)
        end

        sig do
          params(
            errors: T::Array[Langfuse::Models::API::PublicBatchIngestionResponse::Error],
            successes: T::Array[Langfuse::Models::API::PublicBatchIngestionResponse::Success]
          )
            .returns(T.attached_class)
        end
        def self.new(errors:, successes:)
        end

        sig do
          override
            .returns(
              {
                errors: T::Array[Langfuse::Models::API::PublicBatchIngestionResponse::Error],
                successes: T::Array[Langfuse::Models::API::PublicBatchIngestionResponse::Success]
              }
            )
        end
        def to_hash
        end

        class Error < Langfuse::BaseModel
          sig { returns(String) }
          def id
          end

          sig { params(_: String).returns(String) }
          def id=(_)
          end

          sig { returns(Integer) }
          def status
          end

          sig { params(_: Integer).returns(Integer) }
          def status=(_)
          end

          sig { returns(T.nilable(T.anything)) }
          def error
          end

          sig { params(_: T.anything).returns(T.anything) }
          def error=(_)
          end

          sig { returns(T.nilable(String)) }
          def message
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def message=(_)
          end

          sig do
            params(id: String, status: Integer, error: T.anything, message: T.nilable(String))
              .returns(T.attached_class)
          end
          def self.new(id:, status:, error: nil, message: nil)
          end

          sig do
            override.returns({id: String, status: Integer, error: T.anything, message: T.nilable(String)})
          end
          def to_hash
          end
        end

        class Success < Langfuse::BaseModel
          sig { returns(String) }
          def id
          end

          sig { params(_: String).returns(String) }
          def id=(_)
          end

          sig { returns(Integer) }
          def status
          end

          sig { params(_: Integer).returns(Integer) }
          def status=(_)
          end

          sig { params(id: String, status: Integer).returns(T.attached_class) }
          def self.new(id:, status:)
          end

          sig { override.returns({id: String, status: Integer}) }
          def to_hash
          end
        end
      end
    end
  end
end
