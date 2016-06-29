class GeneralManagersController < ApplicationController
  before_action :set_general_manager, only: [:show, :edit, :update, :destroy]

  # GET /general_managers
  # GET /general_managers.json
  def index
    @general_managers = GeneralManager.all
  end

  # GET /general_managers/1
  # GET /general_managers/1.json
  def show
  end

  # GET /general_managers/new
  def new
    @general_manager = GeneralManager.new
  end

  # GET /general_managers/1/edit
  def edit
  end

  # POST /general_managers
  # POST /general_managers.json
  def create
    @general_manager = GeneralManager.new(general_manager_params)

    respond_to do |format|
      if @general_manager.save
        format.html { redirect_to @general_manager, notice: 'General manager was successfully created.' }
        format.json { render :show, status: :created, location: @general_manager }
      else
        format.html { render :new }
        format.json { render json: @general_manager.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /general_managers/1
  # PATCH/PUT /general_managers/1.json
  def update
    respond_to do |format|
      if @general_manager.update(general_manager_params)
        format.html { redirect_to @general_manager, notice: 'General manager was successfully updated.' }
        format.json { render :show, status: :ok, location: @general_manager }
      else
        format.html { render :edit }
        format.json { render json: @general_manager.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /general_managers/1
  # DELETE /general_managers/1.json
  def destroy
    @general_manager.destroy
    respond_to do |format|
      format.html { redirect_to general_managers_url, notice: 'General manager was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_general_manager
      @general_manager = GeneralManager.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def general_manager_params
      params.require(:general_manager).permit(:first_name, :last_name, :team_id, :notes, :active)
    end
end
