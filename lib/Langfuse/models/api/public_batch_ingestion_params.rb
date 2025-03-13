# frozen_string_literal: true

module Langfuse
  module Models
    module API
      class PublicBatchIngestionParams < Langfuse::BaseModel
        # @!parse
        #   extend Langfuse::RequestParameters::Converter
        include Langfuse::RequestParameters

        # @!attribute batch
        #   Batch of tracing events to be ingested. Discriminated by attribute `type`.
        #
        #   @return [Array<Langfuse::Models::API::PublicBatchIngestionParams::Batch::UnionMember0, Langfuse::Models::API::PublicBatchIngestionParams::Batch::UnionMember1, Langfuse::Models::API::PublicBatchIngestionParams::Batch::UnionMember2, Langfuse::Models::API::PublicBatchIngestionParams::Batch::UnionMember3, Langfuse::Models::API::PublicBatchIngestionParams::Batch::UnionMember4, Langfuse::Models::API::PublicBatchIngestionParams::Batch::UnionMember5, Langfuse::Models::API::PublicBatchIngestionParams::Batch::UnionMember6, Langfuse::Models::API::PublicBatchIngestionParams::Batch::UnionMember7, Langfuse::Models::API::PublicBatchIngestionParams::Batch::UnionMember8, Langfuse::Models::API::PublicBatchIngestionParams::Batch::UnionMember9>]
        required :batch, -> { Langfuse::ArrayOf[union: Langfuse::Models::API::PublicBatchIngestionParams::Batch] }

        # @!attribute [r] metadata
        #   Optional. Metadata field used by the Langfuse SDKs for debugging.
        #
        #   @return [Object, nil]
        optional :metadata, Langfuse::Unknown

        # @!parse
        #   # @return [Object]
        #   attr_writer :metadata

        # @!parse
        #   # @param batch [Array<Langfuse::Models::API::PublicBatchIngestionParams::Batch::UnionMember0, Langfuse::Models::API::PublicBatchIngestionParams::Batch::UnionMember1, Langfuse::Models::API::PublicBatchIngestionParams::Batch::UnionMember2, Langfuse::Models::API::PublicBatchIngestionParams::Batch::UnionMember3, Langfuse::Models::API::PublicBatchIngestionParams::Batch::UnionMember4, Langfuse::Models::API::PublicBatchIngestionParams::Batch::UnionMember5, Langfuse::Models::API::PublicBatchIngestionParams::Batch::UnionMember6, Langfuse::Models::API::PublicBatchIngestionParams::Batch::UnionMember7, Langfuse::Models::API::PublicBatchIngestionParams::Batch::UnionMember8, Langfuse::Models::API::PublicBatchIngestionParams::Batch::UnionMember9>]
        #   # @param metadata [Object]
        #   # @param request_options [Langfuse::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(batch:, metadata: nil, request_options: {}, **) = super

        # def initialize: (Hash | Langfuse::BaseModel) -> void

        # @abstract
        #
        class Batch < Langfuse::Union
          variant -> { Langfuse::Models::API::PublicBatchIngestionParams::Batch::UnionMember0 }

          variant -> { Langfuse::Models::API::PublicBatchIngestionParams::Batch::UnionMember1 }

          variant -> { Langfuse::Models::API::PublicBatchIngestionParams::Batch::UnionMember2 }

          variant -> { Langfuse::Models::API::PublicBatchIngestionParams::Batch::UnionMember3 }

          variant -> { Langfuse::Models::API::PublicBatchIngestionParams::Batch::UnionMember4 }

          variant -> { Langfuse::Models::API::PublicBatchIngestionParams::Batch::UnionMember5 }

          variant -> { Langfuse::Models::API::PublicBatchIngestionParams::Batch::UnionMember6 }

          variant -> { Langfuse::Models::API::PublicBatchIngestionParams::Batch::UnionMember7 }

          variant -> { Langfuse::Models::API::PublicBatchIngestionParams::Batch::UnionMember8 }

          variant -> { Langfuse::Models::API::PublicBatchIngestionParams::Batch::UnionMember9 }

          class UnionMember0 < Langfuse::Models::API::BaseEvent
            # @!attribute [r] type
            #
            #   @return [Symbol, Langfuse::Models::API::PublicBatchIngestionParams::Batch::UnionMember0::Type, nil]
            optional :type, enum: -> { Langfuse::Models::API::PublicBatchIngestionParams::Batch::UnionMember0::Type }

            # @!parse
            #   # @return [Symbol, Langfuse::Models::API::PublicBatchIngestionParams::Batch::UnionMember0::Type]
            #   attr_writer :type

            # @!parse
            #   # @param type [Symbol, Langfuse::Models::API::PublicBatchIngestionParams::Batch::UnionMember0::Type]
            #   #
            #   def initialize(type: nil, **) = super

            # def initialize: (Hash | Langfuse::BaseModel) -> void

            # @abstract
            #
            class Type < Langfuse::Enum
              TRACE_CREATE = :"trace-create"

              finalize!
            end
          end

          class UnionMember1 < Langfuse::Models::API::BaseEvent
            # @!attribute [r] type
            #
            #   @return [Symbol, Langfuse::Models::API::PublicBatchIngestionParams::Batch::UnionMember1::Type, nil]
            optional :type, enum: -> { Langfuse::Models::API::PublicBatchIngestionParams::Batch::UnionMember1::Type }

            # @!parse
            #   # @return [Symbol, Langfuse::Models::API::PublicBatchIngestionParams::Batch::UnionMember1::Type]
            #   attr_writer :type

            # @!parse
            #   # @param type [Symbol, Langfuse::Models::API::PublicBatchIngestionParams::Batch::UnionMember1::Type]
            #   #
            #   def initialize(type: nil, **) = super

            # def initialize: (Hash | Langfuse::BaseModel) -> void

            # @abstract
            #
            class Type < Langfuse::Enum
              SCORE_CREATE = :"score-create"

              finalize!
            end
          end

          class UnionMember2 < Langfuse::Models::API::BaseEvent
            # @!attribute [r] type
            #
            #   @return [Symbol, Langfuse::Models::API::PublicBatchIngestionParams::Batch::UnionMember2::Type, nil]
            optional :type, enum: -> { Langfuse::Models::API::PublicBatchIngestionParams::Batch::UnionMember2::Type }

            # @!parse
            #   # @return [Symbol, Langfuse::Models::API::PublicBatchIngestionParams::Batch::UnionMember2::Type]
            #   attr_writer :type

            # @!parse
            #   # @param type [Symbol, Langfuse::Models::API::PublicBatchIngestionParams::Batch::UnionMember2::Type]
            #   #
            #   def initialize(type: nil, **) = super

            # def initialize: (Hash | Langfuse::BaseModel) -> void

            # @abstract
            #
            class Type < Langfuse::Enum
              SPAN_CREATE = :"span-create"

              finalize!
            end
          end

          class UnionMember3 < Langfuse::Models::API::BaseEvent
            # @!attribute [r] type
            #
            #   @return [Symbol, Langfuse::Models::API::PublicBatchIngestionParams::Batch::UnionMember3::Type, nil]
            optional :type, enum: -> { Langfuse::Models::API::PublicBatchIngestionParams::Batch::UnionMember3::Type }

            # @!parse
            #   # @return [Symbol, Langfuse::Models::API::PublicBatchIngestionParams::Batch::UnionMember3::Type]
            #   attr_writer :type

            # @!parse
            #   # @param type [Symbol, Langfuse::Models::API::PublicBatchIngestionParams::Batch::UnionMember3::Type]
            #   #
            #   def initialize(type: nil, **) = super

            # def initialize: (Hash | Langfuse::BaseModel) -> void

            # @abstract
            #
            class Type < Langfuse::Enum
              SPAN_UPDATE = :"span-update"

              finalize!
            end
          end

          class UnionMember4 < Langfuse::Models::API::BaseEvent
            # @!attribute [r] type
            #
            #   @return [Symbol, Langfuse::Models::API::PublicBatchIngestionParams::Batch::UnionMember4::Type, nil]
            optional :type, enum: -> { Langfuse::Models::API::PublicBatchIngestionParams::Batch::UnionMember4::Type }

            # @!parse
            #   # @return [Symbol, Langfuse::Models::API::PublicBatchIngestionParams::Batch::UnionMember4::Type]
            #   attr_writer :type

            # @!parse
            #   # @param type [Symbol, Langfuse::Models::API::PublicBatchIngestionParams::Batch::UnionMember4::Type]
            #   #
            #   def initialize(type: nil, **) = super

            # def initialize: (Hash | Langfuse::BaseModel) -> void

            # @abstract
            #
            class Type < Langfuse::Enum
              GENERATION_CREATE = :"generation-create"

              finalize!
            end
          end

          class UnionMember5 < Langfuse::Models::API::BaseEvent
            # @!attribute [r] type
            #
            #   @return [Symbol, Langfuse::Models::API::PublicBatchIngestionParams::Batch::UnionMember5::Type, nil]
            optional :type, enum: -> { Langfuse::Models::API::PublicBatchIngestionParams::Batch::UnionMember5::Type }

            # @!parse
            #   # @return [Symbol, Langfuse::Models::API::PublicBatchIngestionParams::Batch::UnionMember5::Type]
            #   attr_writer :type

            # @!parse
            #   # @param type [Symbol, Langfuse::Models::API::PublicBatchIngestionParams::Batch::UnionMember5::Type]
            #   #
            #   def initialize(type: nil, **) = super

            # def initialize: (Hash | Langfuse::BaseModel) -> void

            # @abstract
            #
            class Type < Langfuse::Enum
              GENERATION_UPDATE = :"generation-update"

              finalize!
            end
          end

          class UnionMember6 < Langfuse::Models::API::BaseEvent
            # @!attribute [r] type
            #
            #   @return [Symbol, Langfuse::Models::API::PublicBatchIngestionParams::Batch::UnionMember6::Type, nil]
            optional :type, enum: -> { Langfuse::Models::API::PublicBatchIngestionParams::Batch::UnionMember6::Type }

            # @!parse
            #   # @return [Symbol, Langfuse::Models::API::PublicBatchIngestionParams::Batch::UnionMember6::Type]
            #   attr_writer :type

            # @!parse
            #   # @param type [Symbol, Langfuse::Models::API::PublicBatchIngestionParams::Batch::UnionMember6::Type]
            #   #
            #   def initialize(type: nil, **) = super

            # def initialize: (Hash | Langfuse::BaseModel) -> void

            # @abstract
            #
            class Type < Langfuse::Enum
              EVENT_CREATE = :"event-create"

              finalize!
            end
          end

          class UnionMember7 < Langfuse::Models::API::BaseEvent
            # @!attribute [r] type
            #
            #   @return [Symbol, Langfuse::Models::API::PublicBatchIngestionParams::Batch::UnionMember7::Type, nil]
            optional :type, enum: -> { Langfuse::Models::API::PublicBatchIngestionParams::Batch::UnionMember7::Type }

            # @!parse
            #   # @return [Symbol, Langfuse::Models::API::PublicBatchIngestionParams::Batch::UnionMember7::Type]
            #   attr_writer :type

            # @!parse
            #   # @param type [Symbol, Langfuse::Models::API::PublicBatchIngestionParams::Batch::UnionMember7::Type]
            #   #
            #   def initialize(type: nil, **) = super

            # def initialize: (Hash | Langfuse::BaseModel) -> void

            # @abstract
            #
            class Type < Langfuse::Enum
              SDK_LOG = :"sdk-log"

              finalize!
            end
          end

          class UnionMember8 < Langfuse::Models::API::BaseEvent
            # @!attribute [r] type
            #
            #   @return [Symbol, Langfuse::Models::API::PublicBatchIngestionParams::Batch::UnionMember8::Type, nil]
            optional :type, enum: -> { Langfuse::Models::API::PublicBatchIngestionParams::Batch::UnionMember8::Type }

            # @!parse
            #   # @return [Symbol, Langfuse::Models::API::PublicBatchIngestionParams::Batch::UnionMember8::Type]
            #   attr_writer :type

            # @!parse
            #   # @param type [Symbol, Langfuse::Models::API::PublicBatchIngestionParams::Batch::UnionMember8::Type]
            #   #
            #   def initialize(type: nil, **) = super

            # def initialize: (Hash | Langfuse::BaseModel) -> void

            # @abstract
            #
            class Type < Langfuse::Enum
              OBSERVATION_CREATE = :"observation-create"

              finalize!
            end
          end

          class UnionMember9 < Langfuse::Models::API::BaseEvent
            # @!attribute [r] type
            #
            #   @return [Symbol, Langfuse::Models::API::PublicBatchIngestionParams::Batch::UnionMember9::Type, nil]
            optional :type, enum: -> { Langfuse::Models::API::PublicBatchIngestionParams::Batch::UnionMember9::Type }

            # @!parse
            #   # @return [Symbol, Langfuse::Models::API::PublicBatchIngestionParams::Batch::UnionMember9::Type]
            #   attr_writer :type

            # @!parse
            #   # @param type [Symbol, Langfuse::Models::API::PublicBatchIngestionParams::Batch::UnionMember9::Type]
            #   #
            #   def initialize(type: nil, **) = super

            # def initialize: (Hash | Langfuse::BaseModel) -> void

            # @abstract
            #
            class Type < Langfuse::Enum
              OBSERVATION_UPDATE = :"observation-update"

              finalize!
            end
          end
        end
      end
    end
  end
end
