class UsersController < ApplicationController
  before_action :admin_user, only: [:new, :index, :edit, :update, :destroy]

  def index
    @users = User.paginate(page: params[:page])
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
   @user = User.new(user_params)
   if @user.save
     flash[:success] = "Participante registrado"
     redirect_to @user
   else
     render 'new'
   end
 end

 def edit
   @user = User.find(params[:id])
 end

 def update
   @user = User.find(params[:id])
   if @user.update_attributes(user_params)
     flash[:success] = "Participante actualizado"
     redirect_to @user
   else
     render 'edit'
   end
 end

 def destroy
   User.find(params[:id]).destroy
   flash[:success] = "User deleted"
   redirect_to users_url
 end

    private

      def user_params
        params.require(:user).permit(:condo, :depto, :password,
                                     :password_confirmation)
      end

      def admin_user
        redirect_to(root_url) unless current_user.admin?
      end
end
