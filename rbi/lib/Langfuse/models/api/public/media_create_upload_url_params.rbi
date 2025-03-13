# typed: strong

module Langfuse
  module Models
    module API
      module Public
        class MediaCreateUploadURLParams < Langfuse::BaseModel
          extend Langfuse::RequestParameters::Converter
          include Langfuse::RequestParameters

          sig { returns(Integer) }
          def content_length
          end

          sig { params(_: Integer).returns(Integer) }
          def content_length=(_)
          end

          sig { returns(Symbol) }
          def content_type
          end

          sig { params(_: Symbol).returns(Symbol) }
          def content_type=(_)
          end

          sig { returns(String) }
          def field
          end

          sig { params(_: String).returns(String) }
          def field=(_)
          end

          sig { returns(String) }
          def sha256_hash
          end

          sig { params(_: String).returns(String) }
          def sha256_hash=(_)
          end

          sig { returns(String) }
          def trace_id
          end

          sig { params(_: String).returns(String) }
          def trace_id=(_)
          end

          sig { returns(T.nilable(String)) }
          def observation_id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def observation_id=(_)
          end

          sig do
            params(
              content_length: Integer,
              content_type: Symbol,
              field: String,
              sha256_hash: String,
              trace_id: String,
              observation_id: T.nilable(String),
              request_options: T.any(Langfuse::RequestOptions, T::Hash[Symbol, T.anything])
            )
              .returns(T.attached_class)
          end
          def self.new(content_length:, content_type:, field:, sha256_hash:, trace_id:, observation_id: nil, request_options: {})
          end

          sig do
            override
              .returns(
                {
                  content_length: Integer,
                  content_type: Symbol,
                  field: String,
                  sha256_hash: String,
                  trace_id: String,
                  observation_id: T.nilable(String),
                  request_options: Langfuse::RequestOptions
                }
              )
          end
          def to_hash
          end

          class ContentType < Langfuse::Enum
            abstract!

            IMAGE_PNG = :"image/png"
            IMAGE_JPEG = :"image/jpeg"
            IMAGE_JPG = :"image/jpg"
            IMAGE_WEBP = :"image/webp"
            IMAGE_GIF = :"image/gif"
            IMAGE_SVG_XML = :"image/svg+xml"
            IMAGE_TIFF = :"image/tiff"
            IMAGE_BMP = :"image/bmp"
            AUDIO_MPEG = :"audio/mpeg"
            AUDIO_MP3 = :"audio/mp3"
            AUDIO_WAV = :"audio/wav"
            AUDIO_OGG = :"audio/ogg"
            AUDIO_OGA = :"audio/oga"
            AUDIO_AAC = :"audio/aac"
            AUDIO_MP4 = :"audio/mp4"
            AUDIO_FLAC = :"audio/flac"
            VIDEO_MP4 = :"video/mp4"
            VIDEO_WEBM = :"video/webm"
            TEXT_PLAIN = :"text/plain"
            TEXT_HTML = :"text/html"
            TEXT_CSS = :"text/css"
            TEXT_CSV = :"text/csv"
            APPLICATION_PDF = :"application/pdf"
            APPLICATION_MSWORD = :"application/msword"
            APPLICATION_VND_MS_EXCEL = :"application/vnd.ms-excel"
            APPLICATION_ZIP = :"application/zip"
            APPLICATION_JSON = :"application/json"
            APPLICATION_XML = :"application/xml"
            APPLICATION_OCTET_STREAM = :"application/octet-stream"

            class << self
              sig { override.returns(T::Array[Symbol]) }
              def values
              end
            end
          end
        end
      end
    end
  end
end
