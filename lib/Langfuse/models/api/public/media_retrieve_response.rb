# frozen_string_literal: true

module Langfuse
  module Models
    module API
      module Public
        class MediaRetrieveResponse < Langfuse::BaseModel
          # @!attribute content_length
          #   The size of the media record in bytes
          #
          #   @return [Integer]
          required :content_length, Integer, api_name: :contentLength

          # @!attribute content_type
          #   The MIME type of the media record
          #
          #   @return [String]
          required :content_type, String, api_name: :contentType

          # @!attribute media_id
          #   The unique langfuse identifier of a media record
          #
          #   @return [String]
          required :media_id, String, api_name: :mediaId

          # @!attribute uploaded_at
          #   The date and time when the media record was uploaded
          #
          #   @return [Time]
          required :uploaded_at, Time, api_name: :uploadedAt

          # @!attribute url
          #   The download URL of the media record
          #
          #   @return [String]
          required :url, String

          # @!attribute url_expiry
          #   The expiry date and time of the media record download URL
          #
          #   @return [String]
          required :url_expiry, String, api_name: :urlExpiry

          # @!parse
          #   # @param content_length [Integer]
          #   # @param content_type [String]
          #   # @param media_id [String]
          #   # @param uploaded_at [Time]
          #   # @param url [String]
          #   # @param url_expiry [String]
          #   #
          #   def initialize(content_length:, content_type:, media_id:, uploaded_at:, url:, url_expiry:, **) = super

          # def initialize: (Hash | Langfuse::BaseModel) -> void
        end
      end
    end
  end
end
