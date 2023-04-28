module Mutations
    class DeleteEdge < BaseMutation
      argument :id, ID, required: true
  
      field :success, Boolean, null: false
      field :errors, [String], null: false
  
      def resolve(id:)
        edge = Edge.find(id)
        if edge.destroy
          { success: true, errors: [] }
        else
          { success: false, errors: 'error happened.' }
        end
      end
    end
  end