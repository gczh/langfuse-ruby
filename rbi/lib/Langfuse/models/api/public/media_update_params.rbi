# typed: strong

module Langfuse
  module Models
    module API
      module Public
        class MediaUpdateParams < Langfuse::BaseModel
          extend Langfuse::RequestParameters::Converter
          include Langfuse::RequestParameters

          sig { returns(Time) }
          def uploaded_at
          end

          sig { params(_: Time).returns(Time) }
          def uploaded_at=(_)
          end

          sig { returns(Integer) }
          def upload_http_status
          end

          sig { params(_: Integer).returns(Integer) }
          def upload_http_status=(_)
          end

          sig { returns(T.nilable(String)) }
          def upload_http_error
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def upload_http_error=(_)
          end

          sig { returns(T.nilable(Integer)) }
          def upload_time_ms
          end

          sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def upload_time_ms=(_)
          end

          sig do
            params(
              uploaded_at: Time,
              upload_http_status: Integer,
              upload_http_error: T.nilable(String),
              upload_time_ms: T.nilable(Integer),
              request_options: T.any(Langfuse::RequestOptions, T::Hash[Symbol, T.anything])
            )
              .returns(T.attached_class)
          end
          def self.new(uploaded_at:, upload_http_status:, upload_http_error: nil, upload_time_ms: nil, request_options: {})
          end

          sig do
            override
              .returns(
                {
                  uploaded_at: Time,
                  upload_http_status: Integer,
                  upload_http_error: T.nilable(String),
                  upload_time_ms: T.nilable(Integer),
                  request_options: Langfuse::RequestOptions
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
