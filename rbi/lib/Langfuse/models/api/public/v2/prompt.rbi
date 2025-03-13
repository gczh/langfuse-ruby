# typed: strong

module Langfuse
  module Models
    module API
      module Public
        module V2
          class Prompt < Langfuse::Union
            abstract!

            class UnionMember0 < Langfuse::Models::API::Public::V2::BasePrompt
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

                CHAT = :chat

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end
            end

            class UnionMember1 < Langfuse::Models::API::Public::V2::BasePrompt
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

                TEXT = :text

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
                    [[NilClass, Langfuse::Models::API::Public::V2::Prompt::UnionMember0], [NilClass, Langfuse::Models::API::Public::V2::Prompt::UnionMember1]]
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
end
