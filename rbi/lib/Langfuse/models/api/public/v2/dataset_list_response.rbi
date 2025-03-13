# typed: strong

module Langfuse
  module Models
    module API
      module Public
        module V2
          class DatasetListResponse < Langfuse::BaseModel
            sig { returns(T::Array[Langfuse::Models::API::Public::V2::Dataset]) }
            def data
            end

            sig do
              params(_: T::Array[Langfuse::Models::API::Public::V2::Dataset])
                .returns(T::Array[Langfuse::Models::API::Public::V2::Dataset])
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
                data: T::Array[Langfuse::Models::API::Public::V2::Dataset],
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
                    data: T::Array[Langfuse::Models::API::Public::V2::Dataset],
                    meta: Langfuse::Models::API::Public::UtilsMetaResponse
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
