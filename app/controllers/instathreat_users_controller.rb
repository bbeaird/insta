class InstathreatUsersController < ApplicationController
  before_action :set_instathreat_user, only: [:show, :edit, :update, :destroy]

  # GET /instathreat_users
  # GET /instathreat_users.json
  def index
    @instathreat_users = InstathreatUser.all
  end

  # GET /instathreat_users/1
  # GET /instathreat_users/1.json
  def show
  end

  # GET /instathreat_users/new
  def new
    @instathreat_user = InstathreatUser.new
  end

  # GET /instathreat_users/1/edit
  def edit
  end

  # POST /instathreat_users
  # POST /instathreat_users.json
  def create
    @instathreat_user = InstathreatUser.new(instathreat_user_params)

    respond_to do |format|
      if @instathreat_user.save
        format.html { redirect_to @instathreat_user, notice: 'Instathreat user was successfully created.' }
        format.json { render :show, status: :created, location: @instathreat_user }
      else
        format.html { render :new }
        format.json { render json: @instathreat_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /instathreat_users/1
  # PATCH/PUT /instathreat_users/1.json
  def update
    respond_to do |format|
      if @instathreat_user.update(instathreat_user_params)
        format.html { redirect_to @instathreat_user, notice: 'Instathreat user was successfully updated.' }
        format.json { render :show, status: :ok, location: @instathreat_user }
      else
        format.html { render :edit }
        format.json { render json: @instathreat_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /instathreat_users/1
  # DELETE /instathreat_users/1.json
  def destroy
    @instathreat_user.destroy
    respond_to do |format|
      format.html { redirect_to instathreat_users_url, notice: 'Instathreat user was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_instathreat_user
      @instathreat_user = InstathreatUser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def instathreat_user_params
      params.require(:instathreat_user).permit(:email, :phone_number, :why_owed_money)
    end
end
