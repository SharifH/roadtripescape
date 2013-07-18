class UsersController < ApplicationController


  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def newtrip
    binding.pry
    if params[:user_id].exists?
        u = User.where('id = ?', params[:user_id]).first
      end
      puts u
    end

  def update
    @user = User.find(params[:id])
    @user.update_attributes(params[:user])
    render :show
  end

  def destroy
    user = User.find(params[:id])
    user.delete
    redirect_to(user_path)
  end
  # POST /users
  # POST /users.json
  def create
    @user = User.new(params[:user])
    render :show
    respond_to do |format|
      if @user.save
        # Tell the UserMailer to send a welcome Email after save
        UserMailer.welcome_email(@user).deliver

        format.html { redirect_to(@user, notice: 'User was successfully created.') }
        format.json { render json: @user, status: :created, location: @user }
      else
        format.html { render action: 'new' }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end
end
end
