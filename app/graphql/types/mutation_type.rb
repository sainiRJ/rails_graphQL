module Types
  class MutationType < Types::BaseObject
    # field :login, [UserType], null: false, description: "login user" do
    #   argument :email, String, required: true
    #   argument :password, String, required: true
    # end
    # def login(email:, password:)
    #   account = Account.find_by(email: email)
    #   if account.authenticate(password)
    #     account
    #   else
    #     raise GraphQL::ExecutionError.new("Invalid email or password")
    #   end
    # end

    field :signup, mutation: Mutations::SignupMutation
    field :login, mutation: Mutations::LoginMutation
    field :deleteUser, mutation: Mutations::DeleteUserMutation
  end
end
