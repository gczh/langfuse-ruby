# typed: strong

module Langfuse
  module Models
    module API
      module Public
        AnnotationQueueItem = T.type_alias { AnnotationQueues::AnnotationQueueItem }

        module AnnotationQueues
          class AnnotationQueueItem < Langfuse::BaseModel
            sig { returns(String) }
            def id
            end

            sig { params(_: String).returns(String) }
            def id=(_)
            end

            sig { returns(Time) }
            def created_at
            end

            sig { params(_: Time).returns(Time) }
            def created_at=(_)
            end

            sig { returns(String) }
            def object_id_
            end

            sig { params(_: String).returns(String) }
            def object_id_=(_)
            end

            sig { returns(Symbol) }
            def object_type
            end

            sig { params(_: Symbol).returns(Symbol) }
            def object_type=(_)
            end

            sig { returns(String) }
            def queue_id
            end

            sig { params(_: String).returns(String) }
            def queue_id=(_)
            end

            sig { returns(Symbol) }
            def status
            end

            sig { params(_: Symbol).returns(Symbol) }
            def status=(_)
            end

            sig { returns(Time) }
            def updated_at
            end

            sig { params(_: Time).returns(Time) }
            def updated_at=(_)
            end

            sig { returns(T.nilable(Time)) }
            def completed_at
            end

            sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
            def completed_at=(_)
            end

            sig do
              params(
                id: String,
                created_at: Time,
                object_id_: String,
                object_type: Symbol,
                queue_id: String,
                status: Symbol,
                updated_at: Time,
                completed_at: T.nilable(Time)
              )
                .returns(T.attached_class)
            end
            def self.new(id:, created_at:, object_id_:, object_type:, queue_id:, status:, updated_at:, completed_at: nil)
            end

            sig do
              override
                .returns(
                  {
                    id: String,
                    created_at: Time,
                    object_id_: String,
                    object_type: Symbol,
                    queue_id: String,
                    status: Symbol,
                    updated_at: Time,
                    completed_at: T.nilable(Time)
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
