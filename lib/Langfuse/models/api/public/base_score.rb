# frozen_string_literal: true

module Langfuse
  module Models
    module API
      module Public
        class BaseScore < Langfuse::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute created_at
          #
          #   @return [Time]
          required :created_at, Time, api_name: :createdAt

          # @!attribute name
          #
          #   @return [String]
          required :name, String

          # @!attribute source
          #
          #   @return [Symbol, Langfuse::Models::API::Public::ScoreSource]
          required :source, enum: -> { Langfuse::Models::API::Public::ScoreSource }

          # @!attribute timestamp
          #
          #   @return [Time]
          required :timestamp, Time

          # @!attribute trace_id
          #
          #   @return [String]
          required :trace_id, String, api_name: :traceId

          # @!attribute updated_at
          #
          #   @return [Time]
          required :updated_at, Time, api_name: :updatedAt

          # @!attribute author_user_id
          #
          #   @return [String, nil]
          optional :author_user_id, String, api_name: :authorUserId, nil?: true

          # @!attribute comment
          #
          #   @return [String, nil]
          optional :comment, String, nil?: true

          # @!attribute config_id
          #   Reference a score config on a score. When set, config and score name must be
          #     equal and value must comply to optionally defined numerical range
          #
          #   @return [String, nil]
          optional :config_id, String, api_name: :configId, nil?: true

          # @!attribute environment
          #   The environment from which this score originated. Can be any lowercase
          #     alphanumeric string with hyphens and underscores that does not start with
          #     'langfuse'.
          #
          #   @return [String, nil]
          optional :environment, String, nil?: true

          # @!attribute observation_id
          #
          #   @return [String, nil]
          optional :observation_id, String, api_name: :observationId, nil?: true

          # @!attribute queue_id
          #   Reference an annotation queue on a score. Populated if the score was initially
          #     created in an annotation queue.
          #
          #   @return [String, nil]
          optional :queue_id, String, api_name: :queueId, nil?: true

          # @!parse
          #   # @param id [String]
          #   # @param created_at [Time]
          #   # @param name [String]
          #   # @param source [Symbol, Langfuse::Models::API::Public::ScoreSource]
          #   # @param timestamp [Time]
          #   # @param trace_id [String]
          #   # @param updated_at [Time]
          #   # @param author_user_id [String, nil]
          #   # @param comment [String, nil]
          #   # @param config_id [String, nil]
          #   # @param environment [String, nil]
          #   # @param observation_id [String, nil]
          #   # @param queue_id [String, nil]
          #   #
          #   def initialize(
          #     id:,
          #     created_at:,
          #     name:,
          #     source:,
          #     timestamp:,
          #     trace_id:,
          #     updated_at:,
          #     author_user_id: nil,
          #     comment: nil,
          #     config_id: nil,
          #     environment: nil,
          #     observation_id: nil,
          #     queue_id: nil,
          #     **
          #   )
          #     super
          #   end

          # def initialize: (Hash | Langfuse::BaseModel) -> void
        end
      end
    end
  end
end
