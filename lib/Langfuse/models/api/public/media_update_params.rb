# frozen_string_literal: true

module Langfuse
  module Models
    module API
      module Public
        class MediaUpdateParams < Langfuse::BaseModel
          # @!parse
          #   extend Langfuse::RequestParameters::Converter
          include Langfuse::RequestParameters

          # @!attribute uploaded_at
          #   The date and time when the media record was uploaded
          #
          #   @return [Time]
          required :uploaded_at, Time, api_name: :uploadedAt

          # @!attribute upload_http_status
          #   The HTTP status code of the upload
          #
          #   @return [Integer]
          required :upload_http_status, Integer, api_name: :uploadHttpStatus

          # @!attribute upload_http_error
          #   The HTTP error message of the upload
          #
          #   @return [String, nil]
          optional :upload_http_error, String, api_name: :uploadHttpError, nil?: true

          # @!attribute upload_time_ms
          #   The time in milliseconds it took to upload the media record
          #
          #   @return [Integer, nil]
          optional :upload_time_ms, Integer, api_name: :uploadTimeMs, nil?: true

          # @!parse
          #   # @param uploaded_at [Time]
          #   # @param upload_http_status [Integer]
          #   # @param upload_http_error [String, nil]
          #   # @param upload_time_ms [Integer, nil]
          #   # @param request_options [Langfuse::RequestOptions, Hash{Symbol=>Object}]
          #   #
          #   def initialize(uploaded_at:, upload_http_status:, upload_http_error: nil, upload_time_ms: nil, request_options: {}, **) = super

          # def initialize: (Hash | Langfuse::BaseModel) -> void
        end
      end
    end
  end
end
