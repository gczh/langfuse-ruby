# typed: strong

module Langfuse
  module Models
    module API
      module Public
        class MediaRetrieveResponse < Langfuse::BaseModel
          sig { returns(Integer) }
          def content_length
          end

          sig { params(_: Integer).returns(Integer) }
          def content_length=(_)
          end

          sig { returns(String) }
          def content_type
          end

          sig { params(_: String).returns(String) }
          def content_type=(_)
          end

          sig { returns(String) }
          def media_id
          end

          sig { params(_: String).returns(String) }
          def media_id=(_)
          end

          sig { returns(Time) }
          def uploaded_at
          end

          sig { params(_: Time).returns(Time) }
          def uploaded_at=(_)
          end

          sig { returns(String) }
          def url
          end

          sig { params(_: String).returns(String) }
          def url=(_)
          end

          sig { returns(String) }
          def url_expiry
          end

          sig { params(_: String).returns(String) }
          def url_expiry=(_)
          end

          sig do
            params(
              content_length: Integer,
              content_type: String,
              media_id: String,
              uploaded_at: Time,
              url: String,
              url_expiry: String
            )
              .returns(T.attached_class)
          end
          def self.new(content_length:, content_type:, media_id:, uploaded_at:, url:, url_expiry:)
          end

          sig do
            override
              .returns(
                {
                  content_length: Integer,
                  content_type: String,
                  media_id: String,
                  uploaded_at: Time,
                  url: String,
                  url_expiry: String
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
