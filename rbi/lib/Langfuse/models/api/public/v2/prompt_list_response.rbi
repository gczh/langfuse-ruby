# typed: strong

module Langfuse
  module Models
    module API
      module Public
        module V2
          class PromptListResponse < Langfuse::BaseModel
            sig { returns(T::Array[Langfuse::Models::API::Public::V2::PromptListResponse::Data]) }
            def data
            end

            sig do
              params(_: T::Array[Langfuse::Models::API::Public::V2::PromptListResponse::Data])
                .returns(T::Array[Langfuse::Models::API::Public::V2::PromptListResponse::Data])
            end
            def data=(_)
            end

            sig { returns(Langfuse::Models::API::Public::UtilsMetaResponse) }
            def meta
            end

            sig do
              params(_: Langfuse::Models::API::Public::UtilsMetaResponse)
                .returns(Langfuse::Models::API::Public::UtilsMetaResponse)
            end
            def meta=(_)
            end

            sig do
              params(
                data: T::Array[Langfuse::Models::API::Public::V2::PromptListResponse::Data],
                meta: Langfuse::Models::API::Public::UtilsMetaResponse
              )
                .returns(T.attached_class)
            end
            def self.new(data:, meta:)
            end

            sig do
              override
                .returns(
                  {
                    data: T::Array[Langfuse::Models::API::Public::V2::PromptListResponse::Data],
                    meta: Langfuse::Models::API::Public::UtilsMetaResponse
                  }
                )
            end
            def to_hash
            end

            class Data < Langfuse::BaseModel
              sig { returns(T::Array[String]) }
              def labels
              end

              sig { params(_: T::Array[String]).returns(T::Array[String]) }
              def labels=(_)
              end

              sig { returns(T.anything) }
              def last_config
              end

              sig { params(_: T.anything).returns(T.anything) }
              def last_config=(_)
              end

              sig { returns(Time) }
              def last_updated_at
              end

              sig { params(_: Time).returns(Time) }
              def last_updated_at=(_)
              end

              sig { returns(String) }
              def name
              end

              sig { params(_: String).returns(String) }
              def name=(_)
              end

              sig { returns(T::Array[String]) }
              def tags
              end

              sig { params(_: T::Array[String]).returns(T::Array[String]) }
              def tags=(_)
              end

              sig { returns(T::Array[Integer]) }
              def versions
              end

              sig { params(_: T::Array[Integer]).returns(T::Array[Integer]) }
              def versions=(_)
              end

              sig do
                params(
                  labels: T::Array[String],
                  last_config: T.anything,
                  last_updated_at: Time,
                  name: String,
                  tags: T::Array[String],
                  versions: T::Array[Integer]
                )
                  .returns(T.attached_class)
              end
              def self.new(labels:, last_config:, last_updated_at:, name:, tags:, versions:)
              end

              sig do
                override
                  .returns(
                    {
                      labels: T::Array[String],
                      last_config: T.anything,
                      last_updated_at: Time,
                      name: String,
                      tags: T::Array[String],
                      versions: T::Array[Integer]
                    }
                  )
              end
              def to_hash
              end
            end
          end
        end
      end
    end
  end
end
