class UnkoPositionsController < ApplicationController
  # GET /unko_positions
  # GET /unko_positions.json
  def index
    @unko_positions = UnkoPosition.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @unko_positions }
    end
  end

  # GET /unko_positions/1
  # GET /unko_positions/1.json
  def show
    @unko_position = UnkoPosition.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @unko_position }
    end
  end

  # GET /unko_positions/new
  # GET /unko_positions/new.json
  def new
    @unko_position = UnkoPosition.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @unko_position }
    end
  end

  # GET /unko_positions/1/edit
  def edit
    @unko_position = UnkoPosition.find(params[:id])
  end

  # POST /unko_positions
  # POST /unko_positions.json
  def create
    @unko_position = UnkoPosition.new(params[:unko_position])

    respond_to do |format|
      if @unko_position.save
        format.html { redirect_to @unko_position, notice: 'Unko position was successfully created.' }
        format.json { render json: @unko_position, status: :created, location: @unko_position }
      else
        format.html { render action: "new" }
        format.json { render json: @unko_position.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /unko_positions/1
  # PUT /unko_positions/1.json
  def update
    @unko_position = UnkoPosition.find(params[:id])

    respond_to do |format|
      if @unko_position.update_attributes(params[:unko_position])
        format.html { redirect_to @unko_position, notice: 'Unko position was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @unko_position.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /unko_positions/1
  # DELETE /unko_positions/1.json
  def destroy
    @unko_position = UnkoPosition.find(params[:id])
    @unko_position.destroy

    respond_to do |format|
      format.html { redirect_to unko_positions_url }
      format.json { head :no_content }
    end
  end
end
