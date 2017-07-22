class UsersController < ApplicationController
  before_action :admin_user, only: [:new, :index, :edit, :update, :destroy] # »»» los 'users' también deben poder 'update', 'edit'«««

  def index
    @users = User.paginate(page: params[:page])
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = @place.users.build #ajustado para la nueva asociación con 'Place'
  end

  def create
   @user = @place.users.build(user_params) #actualizado para la asociación con 'Place'
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
      def set_place
        @place = Place.find(params[:place_id])
      end

      def set_user
        @user = @place.users.find(params[:id])
      end

      def user_params
        params.require(:user).permit(:condo, :depto, :password, # »»» agregar el 'account_attr' a los user_params «««
                                     :password_confirmation)
      end

      def admin_user
        redirect_to(root_url) unless current_user.admin?
      end
end
