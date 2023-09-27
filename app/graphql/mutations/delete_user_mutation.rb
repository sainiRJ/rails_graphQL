# app/graphql/mutations/delete_user_mutation.rb
module Mutations
    class DeleteUserMutation < Mutations::BaseMutation
      argument :email, String, required: true

      field :success, Boolean, null: false
      field :errors, [String], null: true
  
      def resolve(email:)
        # Authenticate the user here, for example, by checking if they are logged in.
        user = User.find_by(email: email)
  
        if user.nil?
          return { success: false, errors: ['Authentication required'] }
        end
  
        if user.destroy
          { success: true, errors: [] }
        else
          { success: false, errors: user.errors.full_messages }
        end
      end
    end
  end
  