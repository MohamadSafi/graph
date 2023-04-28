module Mutations
    class DeleteNode < BaseMutation
      argument :id, ID, required: true
  
      field :success, Boolean, null: false
      field :errors, [String], null: false
  
      def resolve(id:)
        node = Node.find(id)
        if node.destroy
          { success: true, errors: [] }
        else
          { success: false, errors: 'error happened.' }
        end
      end
    end
  end