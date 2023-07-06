class Authors::UsersController < ApplicationController
  before_action :set_authors_user, only: %i[ show edit update destroy ]

  # GET /authors/users or /authors/users.json
  def index
    @authors_users = Authors::User.all
  end

  # GET /authors/users/1 or /authors/users/1.json
  def show
  end

  # GET /authors/users/new
  def new
    @authors_user = Authors::User.new
  end

  # GET /authors/users/1/edit
  def edit
  end

  # POST /authors/users or /authors/users.json
  def create
    @authors_user = Authors::User.new(authors_user_params)

    respond_to do |format|
      if @authors_user.save
        format.html { redirect_to authors_user_url(@authors_user), notice: "User was successfully created." }
        format.json { render :show, status: :created, location: @authors_user }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @authors_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /authors/users/1 or /authors/users/1.json
  def update
    respond_to do |format|
      if @authors_user.update(authors_user_params)
        format.html { redirect_to authors_user_url(@authors_user), notice: "User was successfully updated." }
        format.json { render :show, status: :ok, location: @authors_user }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @authors_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /authors/users/1 or /authors/users/1.json
  def destroy
    @authors_user.destroy!

    respond_to do |format|
      format.html { redirect_to authors_users_url, notice: "User was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_authors_user
      @authors_user = Authors::User.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def authors_user_params
      params.require(:authors_user).permit(:full_name, :email)
    end
end
