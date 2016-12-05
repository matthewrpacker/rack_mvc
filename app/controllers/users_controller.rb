class UsersController < RackMvc::BaseController
  def index
    @users = User.all
    render
  end
end
