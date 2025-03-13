# typed: strong

module Langfuse
  module Models
    module API
      class PublicBatchIngestionParams < Langfuse::BaseModel
        extend Langfuse::RequestParameters::Converter
        include Langfuse::RequestParameters

        sig do
          returns(
            T::Array[
            T.any(
              Langfuse::Models::API::PublicBatchIngestionParams::Batch::UnionMember0,
              Langfuse::Models::API::PublicBatchIngestionParams::Batch::UnionMember1,
              Langfuse::Models::API::PublicBatchIngestionParams::Batch::UnionMember2,
              Langfuse::Models::API::PublicBatchIngestionParams::Batch::UnionMember3,
              Langfuse::Models::API::PublicBatchIngestionParams::Batch::UnionMember4,
              Langfuse::Models::API::PublicBatchIngestionParams::Batch::UnionMember5,
              Langfuse::Models::API::PublicBatchIngestionParams::Batch::UnionMember6,
              Langfuse::Models::API::PublicBatchIngestionParams::Batch::UnionMember7,
              Langfuse::Models::API::PublicBatchIngestionParams::Batch::UnionMember8,
              Langfuse::Models::API::PublicBatchIngestionParams::Batch::UnionMember9
            )
            ]
          )
        end
        def batch
        end

        sig do
          params(
            _: T::Array[
            T.any(
              Langfuse::Models::API::PublicBatchIngestionParams::Batch::UnionMember0,
              Langfuse::Models::API::PublicBatchIngestionParams::Batch::UnionMember1,
              Langfuse::Models::API::PublicBatchIngestionParams::Batch::UnionMember2,
              Langfuse::Models::API::PublicBatchIngestionParams::Batch::UnionMember3,
              Langfuse::Models::API::PublicBatchIngestionParams::Batch::UnionMember4,
              Langfuse::Models::API::PublicBatchIngestionParams::Batch::UnionMember5,
              Langfuse::Models::API::PublicBatchIngestionParams::Batch::UnionMember6,
              Langfuse::Models::API::PublicBatchIngestionParams::Batch::UnionMember7,
              Langfuse::Models::API::PublicBatchIngestionParams::Batch::UnionMember8,
              Langfuse::Models::API::PublicBatchIngestionParams::Batch::UnionMember9
            )
            ]
          )
            .returns(
              T::Array[
              T.any(
                Langfuse::Models::API::PublicBatchIngestionParams::Batch::UnionMember0,
                Langfuse::Models::API::PublicBatchIngestionParams::Batch::UnionMember1,
                Langfuse::Models::API::PublicBatchIngestionParams::Batch::UnionMember2,
                Langfuse::Models::API::PublicBatchIngestionParams::Batch::UnionMember3,
                Langfuse::Models::API::PublicBatchIngestionParams::Batch::UnionMember4,
                Langfuse::Models::API::PublicBatchIngestionParams::Batch::UnionMember5,
                Langfuse::Models::API::PublicBatchIngestionParams::Batch::UnionMember6,
                Langfuse::Models::API::PublicBatchIngestionParams::Batch::UnionMember7,
                Langfuse::Models::API::PublicBatchIngestionParams::Batch::UnionMember8,
                Langfuse::Models::API::PublicBatchIngestionParams::Batch::UnionMember9
              )
              ]
            )
        end
        def batch=(_)
        end

        sig { returns(T.nilable(T.anything)) }
        def metadata
        end

        sig { params(_: T.anything).returns(T.anything) }
        def metadata=(_)
        end

        sig do
          params(
            batch: T::Array[
            T.any(
              Langfuse::Models::API::PublicBatchIngestionParams::Batch::UnionMember0,
              Langfuse::Models::API::PublicBatchIngestionParams::Batch::UnionMember1,
              Langfuse::Models::API::PublicBatchIngestionParams::Batch::UnionMember2,
              Langfuse::Models::API::PublicBatchIngestionParams::Batch::UnionMember3,
              Langfuse::Models::API::PublicBatchIngestionParams::Batch::UnionMember4,
              Langfuse::Models::API::PublicBatchIngestionParams::Batch::UnionMember5,
              Langfuse::Models::API::PublicBatchIngestionParams::Batch::UnionMember6,
              Langfuse::Models::API::PublicBatchIngestionParams::Batch::UnionMember7,
              Langfuse::Models::API::PublicBatchIngestionParams::Batch::UnionMember8,
              Langfuse::Models::API::PublicBatchIngestionParams::Batch::UnionMember9
            )
            ],
            metadata: T.anything,
            request_options: T.any(Langfuse::RequestOptions, T::Hash[Symbol, T.anything])
          )
            .returns(T.attached_class)
        end
        def self.new(batch:, metadata: nil, request_options: {})
        end

        sig do
          override
            .returns(
              {
                batch: T::Array[
                T.any(
                  Langfuse::Models::API::PublicBatchIngestionParams::Batch::UnionMember0,
                  Langfuse::Models::API::PublicBatchIngestionParams::Batch::UnionMember1,
                  Langfuse::Models::API::PublicBatchIngestionParams::Batch::UnionMember2,
                  Langfuse::Models::API::PublicBatchIngestionParams::Batch::UnionMember3,
                  Langfuse::Models::API::PublicBatchIngestionParams::Batch::UnionMember4,
                  Langfuse::Models::API::PublicBatchIngestionParams::Batch::UnionMember5,
                  Langfuse::Models::API::PublicBatchIngestionParams::Batch::UnionMember6,
                  Langfuse::Models::API::PublicBatchIngestionParams::Batch::UnionMember7,
                  Langfuse::Models::API::PublicBatchIngestionParams::Batch::UnionMember8,
                  Langfuse::Models::API::PublicBatchIngestionParams::Batch::UnionMember9
                )
                ],
                metadata: T.anything,
                request_options: Langfuse::RequestOptions
              }
            )
        end
        def to_hash
        end

        class Batch < Langfuse::Union
          abstract!

          class UnionMember0 < Langfuse::Models::API::BaseEvent
            sig { returns(T.nilable(Symbol)) }
            def type
            end

            sig { params(_: Symbol).returns(Symbol) }
            def type=(_)
            end

            sig { params(type: Symbol).returns(T.attached_class) }
            def self.new(type: nil)
            end

            sig { override.returns({type: Symbol}) }
            def to_hash
            end

            class Type < Langfuse::Enum
              abstract!

              TRACE_CREATE = :"trace-create"

              class << self
                sig { override.returns(T::Array[Symbol]) }
                def values
                end
              end
            end
          end

          class UnionMember1 < Langfuse::Models::API::BaseEvent
            sig { returns(T.nilable(Symbol)) }
            def type
            end

            sig { params(_: Symbol).returns(Symbol) }
            def type=(_)
            end

            sig { params(type: Symbol).returns(T.attached_class) }
            def self.new(type: nil)
            end

            sig { override.returns({type: Symbol}) }
            def to_hash
            end

            class Type < Langfuse::Enum
              abstract!

              SCORE_CREATE = :"score-create"

              class << self
                sig { override.returns(T::Array[Symbol]) }
                def values
                end
              end
            end
          end

          class UnionMember2 < Langfuse::Models::API::BaseEvent
            sig { returns(T.nilable(Symbol)) }
            def type
            end

            sig { params(_: Symbol).returns(Symbol) }
            def type=(_)
            end

            sig { params(type: Symbol).returns(T.attached_class) }
            def self.new(type: nil)
            end

            sig { override.returns({type: Symbol}) }
            def to_hash
            end

            class Type < Langfuse::Enum
              abstract!

              SPAN_CREATE = :"span-create"

              class << self
                sig { override.returns(T::Array[Symbol]) }
                def values
                end
              end
            end
          end

          class UnionMember3 < Langfuse::Models::API::BaseEvent
            sig { returns(T.nilable(Symbol)) }
            def type
            end

            sig { params(_: Symbol).returns(Symbol) }
            def type=(_)
            end

            sig { params(type: Symbol).returns(T.attached_class) }
            def self.new(type: nil)
            end

            sig { override.returns({type: Symbol}) }
            def to_hash
            end

            class Type < Langfuse::Enum
              abstract!

              SPAN_UPDATE = :"span-update"

              class << self
                sig { override.returns(T::Array[Symbol]) }
                def values
                end
              end
            end
          end

          class UnionMember4 < Langfuse::Models::API::BaseEvent
            sig { returns(T.nilable(Symbol)) }
            def type
            end

            sig { params(_: Symbol).returns(Symbol) }
            def type=(_)
            end

            sig { params(type: Symbol).returns(T.attached_class) }
            def self.new(type: nil)
            end

            sig { override.returns({type: Symbol}) }
            def to_hash
            end

            class Type < Langfuse::Enum
              abstract!

              GENERATION_CREATE = :"generation-create"

              class << self
                sig { override.returns(T::Array[Symbol]) }
                def values
                end
              end
            end
          end

          class UnionMember5 < Langfuse::Models::API::BaseEvent
            sig { returns(T.nilable(Symbol)) }
            def type
            end

            sig { params(_: Symbol).returns(Symbol) }
            def type=(_)
            end

            sig { params(type: Symbol).returns(T.attached_class) }
            def self.new(type: nil)
            end

            sig { override.returns({type: Symbol}) }
            def to_hash
            end

            class Type < Langfuse::Enum
              abstract!

              GENERATION_UPDATE = :"generation-update"

              class << self
                sig { override.returns(T::Array[Symbol]) }
                def values
                end
              end
            end
          end

          class UnionMember6 < Langfuse::Models::API::BaseEvent
            sig { returns(T.nilable(Symbol)) }
            def type
            end

            sig { params(_: Symbol).returns(Symbol) }
            def type=(_)
            end

            sig { params(type: Symbol).returns(T.attached_class) }
            def self.new(type: nil)
            end

            sig { override.returns({type: Symbol}) }
            def to_hash
            end

            class Type < Langfuse::Enum
              abstract!

              EVENT_CREATE = :"event-create"

              class << self
                sig { override.returns(T::Array[Symbol]) }
                def values
                end
              end
            end
          end

          class UnionMember7 < Langfuse::Models::API::BaseEvent
            sig { returns(T.nilable(Symbol)) }
            def type
            end

            sig { params(_: Symbol).returns(Symbol) }
            def type=(_)
            end

            sig { params(type: Symbol).returns(T.attached_class) }
            def self.new(type: nil)
            end

            sig { override.returns({type: Symbol}) }
            def to_hash
            end

            class Type < Langfuse::Enum
              abstract!

              SDK_LOG = :"sdk-log"

              class << self
                sig { override.returns(T::Array[Symbol]) }
                def values
                end
              end
            end
          end

          class UnionMember8 < Langfuse::Models::API::BaseEvent
            sig { returns(T.nilable(Symbol)) }
            def type
            end

            sig { params(_: Symbol).returns(Symbol) }
            def type=(_)
            end

            sig { params(type: Symbol).returns(T.attached_class) }
            def self.new(type: nil)
            end

            sig { override.returns({type: Symbol}) }
            def to_hash
            end

            class Type < Langfuse::Enum
              abstract!

              OBSERVATION_CREATE = :"observation-create"

              class << self
                sig { override.returns(T::Array[Symbol]) }
                def values
                end
              end
            end
          end

          class UnionMember9 < Langfuse::Models::API::BaseEvent
            sig { returns(T.nilable(Symbol)) }
            def type
            end

            sig { params(_: Symbol).returns(Symbol) }
            def type=(_)
            end

            sig { params(type: Symbol).returns(T.attached_class) }
            def self.new(type: nil)
            end

            sig { override.returns({type: Symbol}) }
            def to_hash
            end

            class Type < Langfuse::Enum
              abstract!

              OBSERVATION_UPDATE = :"observation-update"

              class << self
                sig { override.returns(T::Array[Symbol]) }
                def values
                end
              end
            end
          end

          class << self
            sig do
              override
                .returns(
                  [[NilClass, Langfuse::Models::API::PublicBatchIngestionParams::Batch::UnionMember0], [NilClass, Langfuse::Models::API::PublicBatchIngestionParams::Batch::UnionMember1], [NilClass, Langfuse::Models::API::PublicBatchIngestionParams::Batch::UnionMember2], [NilClass, Langfuse::Models::API::PublicBatchIngestionParams::Batch::UnionMember3], [NilClass, Langfuse::Models::API::PublicBatchIngestionParams::Batch::UnionMember4], [NilClass, Langfuse::Models::API::PublicBatchIngestionParams::Batch::UnionMember5], [NilClass, Langfuse::Models::API::PublicBatchIngestionParams::Batch::UnionMember6], [NilClass, Langfuse::Models::API::PublicBatchIngestionParams::Batch::UnionMember7], [NilClass, Langfuse::Models::API::PublicBatchIngestionParams::Batch::UnionMember8], [NilClass, Langfuse::Models::API::PublicBatchIngestionParams::Batch::UnionMember9]]
                )
            end
            private def variants
            end
          end
        end
      end
    end
  end
end
