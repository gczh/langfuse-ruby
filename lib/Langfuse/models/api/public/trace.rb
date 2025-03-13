# frozen_string_literal: true

module Langfuse
  module Models
    module API
      module Public
        class Trace < Langfuse::BaseModel
          # @!attribute id
          #   The unique identifier of a trace
          #
          #   @return [String]
          required :id, String

          # @!attribute timestamp
          #   The timestamp when the trace was created
          #
          #   @return [Time]
          required :timestamp, Time

          # @!attribute environment
          #   The environment from which this trace originated. Can be any lowercase
          #     alphanumeric string with hyphens and underscores that does not start with
          #     'langfuse'.
          #
          #   @return [String, nil]
          optional :environment, String, nil?: true

          # @!attribute [r] input
          #   The input data of the trace. Can be any JSON.
          #
          #   @return [Object, nil]
          optional :input, Langfuse::Unknown

          # @!parse
          #   # @return [Object]
          #   attr_writer :input

          # @!attribute [r] metadata
          #   The metadata associated with the trace. Can be any JSON.
          #
          #   @return [Object, nil]
          optional :metadata, Langfuse::Unknown

          # @!parse
          #   # @return [Object]
          #   attr_writer :metadata

          # @!attribute name
          #   The name of the trace
          #
          #   @return [String, nil]
          optional :name, String, nil?: true

          # @!attribute [r] output
          #   The output data of the trace. Can be any JSON.
          #
          #   @return [Object, nil]
          optional :output, Langfuse::Unknown

          # @!parse
          #   # @return [Object]
          #   attr_writer :output

          # @!attribute public
          #   Public traces are accessible via url without login
          #
          #   @return [Boolean, nil]
          optional :public, Langfuse::BooleanModel, nil?: true

          # @!attribute release
          #   The release version of the application when the trace was created
          #
          #   @return [String, nil]
          optional :release, String, nil?: true

          # @!attribute session_id
          #   The session identifier associated with the trace
          #
          #   @return [String, nil]
          optional :session_id, String, api_name: :sessionId, nil?: true

          # @!attribute tags
          #   The tags associated with the trace. Can be an array of strings or null.
          #
          #   @return [Array<String>, nil]
          optional :tags, Langfuse::ArrayOf[String], nil?: true

          # @!attribute user_id
          #   The user identifier associated with the trace
          #
          #   @return [String, nil]
          optional :user_id, String, api_name: :userId, nil?: true

          # @!attribute version
          #   The version of the trace
          #
          #   @return [String, nil]
          optional :version, String, nil?: true

          # @!parse
          #   # @param id [String]
          #   # @param timestamp [Time]
          #   # @param environment [String, nil]
          #   # @param input [Object]
          #   # @param metadata [Object]
          #   # @param name [String, nil]
          #   # @param output [Object]
          #   # @param public [Boolean, nil]
          #   # @param release [String, nil]
          #   # @param session_id [String, nil]
          #   # @param tags [Array<String>, nil]
          #   # @param user_id [String, nil]
          #   # @param version [String, nil]
          #   #
          #   def initialize(
          #     id:,
          #     timestamp:,
          #     environment: nil,
          #     input: nil,
          #     metadata: nil,
          #     name: nil,
          #     output: nil,
          #     public: nil,
          #     release: nil,
          #     session_id: nil,
          #     tags: nil,
          #     user_id: nil,
          #     version: nil,
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
