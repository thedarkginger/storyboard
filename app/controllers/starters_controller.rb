class StartersController < ApplicationController
  before_action :set_starter, only: [:show, :edit, :update, :destroy]

  # GET /starters
  # GET /starters.json
  def index
    @starters = Starter.all
  end

  # GET /starters/1
  # GET /starters/1.json
  def show
  end

  # GET /starters/new
  def new
    @starter = Starter.new
  end

  # GET /starters/1/edit
  def edit
  end

  # POST /starters
  # POST /starters.json
  def create
    @starter = Starter.new(starter_params)

    respond_to do |format|
      if @starter.save
        format.html { redirect_to @starter, notice: 'Starter was successfully created.' }
        format.json { render :show, status: :created, location: @starter }
      else
        format.html { render :new }
        format.json { render json: @starter.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /starters/1
  # PATCH/PUT /starters/1.json
  def update
    respond_to do |format|
      if @starter.update(starter_params)
        format.html { redirect_to @starter, notice: 'Starter was successfully updated.' }
        format.json { render :show, status: :ok, location: @starter }
      else
        format.html { render :edit }
        format.json { render json: @starter.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /starters/1
  # DELETE /starters/1.json
  def destroy
    @starter.destroy
    respond_to do |format|
      format.html { redirect_to starters_url, notice: 'Starter was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_starter
      @starter = Starter.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def starter_params
      params.require(:starter).permit(:headline, :author, :body, :pay)
    end
end
