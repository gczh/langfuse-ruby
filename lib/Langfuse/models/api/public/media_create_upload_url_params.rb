# frozen_string_literal: true

module Langfuse
  module Models
    module API
      module Public
        class MediaCreateUploadURLParams < Langfuse::BaseModel
          # @!parse
          #   extend Langfuse::RequestParameters::Converter
          include Langfuse::RequestParameters

          # @!attribute content_length
          #   The size of the media record in bytes
          #
          #   @return [Integer]
          required :content_length, Integer, api_name: :contentLength

          # @!attribute content_type
          #   The MIME type of the media record
          #
          #   @return [Symbol, Langfuse::Models::API::Public::MediaCreateUploadURLParams::ContentType]
          required :content_type,
                   enum: -> { Langfuse::Models::API::Public::MediaCreateUploadURLParams::ContentType },
                   api_name: :contentType

          # @!attribute field
          #   The trace / observation field the media record is associated with. This can be
          #     one of `input`, `output`, `metadata`
          #
          #   @return [String]
          required :field, String

          # @!attribute sha256_hash
          #   The SHA-256 hash of the media record
          #
          #   @return [String]
          required :sha256_hash, String, api_name: :sha256Hash

          # @!attribute trace_id
          #   The trace ID associated with the media record
          #
          #   @return [String]
          required :trace_id, String, api_name: :traceId

          # @!attribute observation_id
          #   The observation ID associated with the media record. If the media record is
          #     associated directly with a trace, this will be null.
          #
          #   @return [String, nil]
          optional :observation_id, String, api_name: :observationId, nil?: true

          # @!parse
          #   # @param content_length [Integer]
          #   # @param content_type [Symbol, Langfuse::Models::API::Public::MediaCreateUploadURLParams::ContentType]
          #   # @param field [String]
          #   # @param sha256_hash [String]
          #   # @param trace_id [String]
          #   # @param observation_id [String, nil]
          #   # @param request_options [Langfuse::RequestOptions, Hash{Symbol=>Object}]
          #   #
          #   def initialize(
          #     content_length:,
          #     content_type:,
          #     field:,
          #     sha256_hash:,
          #     trace_id:,
          #     observation_id: nil,
          #     request_options: {},
          #     **
          #   )
          #     super
          #   end

          # def initialize: (Hash | Langfuse::BaseModel) -> void

          # @abstract
          #
          # The MIME type of the media record
          class ContentType < Langfuse::Enum
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

            finalize!
          end
        end
      end
    end
  end
end
