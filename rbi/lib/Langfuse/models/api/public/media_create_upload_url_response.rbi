# typed: strong

module Langfuse
  module Models
    module API
      module Public
        class MediaCreateUploadURLResponse < Langfuse::BaseModel
          sig { returns(String) }
          def media_id
          end

          sig { params(_: String).returns(String) }
          def media_id=(_)
          end

          sig { returns(T.nilable(String)) }
          def upload_url
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def upload_url=(_)
          end

          sig { params(media_id: String, upload_url: T.nilable(String)).returns(T.attached_class) }
          def self.new(media_id:, upload_url: nil)
          end

          sig { override.returns({media_id: String, upload_url: T.nilable(String)}) }
          def to_hash
          end
        end
      end
    end
  end
end
