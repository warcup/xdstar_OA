class TempletsController < ApplicationController
  before_action :set_templet, only: [:show, :edit, :update, :destroy]

  # GET /templets
  # GET /templets.json
  def index
    @templets = Templet.all
  end

  # GET /templets/1
  # GET /templets/1.json
  def show
  end

  # GET /templets/new
  def new
    @templet = Templet.new
    @templet.flowpaths.build
  end

  # GET /templets/1/edit
  def edit
  end

  # POST /templets
  # POST /templets.json
  def create
    @templet = Templet.new(templet_params)
    @templet["stutus"] = 1
    respond_to do |format|
      if @templet.save
        format.html { redirect_to @templet, notice: 'Templet was successfully created.' }
        format.json { render :show, status: :created, location: @templet }
      else
        format.html {  render :new }
        format.json { render json: @templet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /templets/1
  # PATCH/PUT /templets/1.json
  def update
    respond_to do |format|
      if @templet.update(templet_params)
        format.html { redirect_to @templet, notice: 'Templet was successfully updated.' }
        format.json { render :show, status: :ok, location: @templet }
      else
        format.html { render :edit }
        format.json { render json: @templet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /templets/1
  # DELETE /templets/1.json
  def destroy
    respond_to do |format|
      if @templet.update(stutus: 2)
        format.html { redirect_to templets_url, notice: 'Templet was successfully destroyed.' }
        format.json { head :no_content }
      else
        format.html { render :edit }
        format.json { render json: @templet.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_templet
      @templet = Templet.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def templet_params
      params.require(:templet).permit(:typename, :stutus, flowpaths_attributes: [:user_id,:sequence])
    end  
end
