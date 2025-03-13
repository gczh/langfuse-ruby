# typed: strong

module Langfuse
  module Resources
    class API
      class Public
        class Media
          sig do
            params(
              media_id: String,
              request_options: T.nilable(T.any(Langfuse::RequestOptions, T::Hash[Symbol, T.anything]))
            )
              .returns(Langfuse::Models::API::Public::MediaRetrieveResponse)
          end
          def retrieve(media_id, request_options: {})
          end

          sig do
            params(
              media_id: String,
              uploaded_at: Time,
              upload_http_status: Integer,
              upload_http_error: T.nilable(String),
              upload_time_ms: T.nilable(Integer),
              request_options: T.nilable(T.any(Langfuse::RequestOptions, T::Hash[Symbol, T.anything]))
            )
              .void
          end
          def update(
            media_id,
            uploaded_at:,
            upload_http_status:,
            upload_http_error: nil,
            upload_time_ms: nil,
            request_options: {}
          )
          end

          sig do
            params(
              content_length: Integer,
              content_type: Symbol,
              field: String,
              sha256_hash: String,
              trace_id: String,
              observation_id: T.nilable(String),
              request_options: T.nilable(T.any(Langfuse::RequestOptions, T::Hash[Symbol, T.anything]))
            )
              .returns(Langfuse::Models::API::Public::MediaCreateUploadURLResponse)
          end
          def create_upload_url(
            content_length:,
            content_type:,
            field:,
            sha256_hash:,
            trace_id:,
            observation_id: nil,
            request_options: {}
          )
          end

          sig { params(client: Langfuse::Client).returns(T.attached_class) }
          def self.new(client:)
          end
        end
      end
    end
  end
end
