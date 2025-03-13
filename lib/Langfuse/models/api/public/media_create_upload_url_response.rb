# frozen_string_literal: true

module Langfuse
  module Models
    module API
      module Public
        class MediaCreateUploadURLResponse < Langfuse::BaseModel
          # @!attribute media_id
          #   The unique langfuse identifier of a media record
          #
          #   @return [String]
          required :media_id, String, api_name: :mediaId

          # @!attribute upload_url
          #   The presigned upload URL. If the asset is already uploaded, this will be null
          #
          #   @return [String, nil]
          optional :upload_url, String, api_name: :uploadUrl, nil?: true

          # @!parse
          #   # @param media_id [String]
          #   # @param upload_url [String, nil]
          #   #
          #   def initialize(media_id:, upload_url: nil, **) = super

          # def initialize: (Hash | Langfuse::BaseModel) -> void
        end
      end
    end
  end
end
