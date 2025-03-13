# typed: strong

module Langfuse
  module Models
    module API
      class PublicRetrieveProjectsResponse < Langfuse::BaseModel
        sig { returns(T::Array[Langfuse::Models::API::PublicRetrieveProjectsResponse::Data]) }
        def data
        end

        sig do
          params(_: T::Array[Langfuse::Models::API::PublicRetrieveProjectsResponse::Data])
            .returns(T::Array[Langfuse::Models::API::PublicRetrieveProjectsResponse::Data])
        end
        def data=(_)
        end

        sig do
          params(data: T::Array[Langfuse::Models::API::PublicRetrieveProjectsResponse::Data])
            .returns(T.attached_class)
        end
        def self.new(data:)
        end

        sig { override.returns({data: T::Array[Langfuse::Models::API::PublicRetrieveProjectsResponse::Data]}) }
        def to_hash
        end

        class Data < Langfuse::BaseModel
          sig { returns(String) }
          def id
          end

          sig { params(_: String).returns(String) }
          def id=(_)
          end

          sig { returns(String) }
          def name
          end

          sig { params(_: String).returns(String) }
          def name=(_)
          end

          sig { params(id: String, name: String).returns(T.attached_class) }
          def self.new(id:, name:)
          end

          sig { override.returns({id: String, name: String}) }
          def to_hash
          end
        end
      end
    end
  end
end
