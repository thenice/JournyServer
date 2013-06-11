class JourniesController < ApplicationController
  # GET /journies
  # GET /journies.json
  def index
    @journies = Journy.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @journies }
    end
  end

  # GET /journies/1
  # GET /journies/1.json
  def show
    @journy = Journy.find(params[:id])
    @journy = @journy.attributes.merge({:entries => @journy.entries})
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @journy }
    end
  end

  # GET /journies/new
  # GET /journies/new.json
  def new
    @journy = Journy.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @journy }
    end
  end

  # GET /journies/1/edit
  def edit
    @journy = Journy.find(params[:id])
  end

  # POST /journies
  # POST /journies.json
  def create
    @journy = Journy.new(params[:journy])

    respond_to do |format|
      if @journy.save
        format.html { redirect_to @journy, notice: 'Journy was successfully created.' }
        format.json { render json: @journy, status: :created, location: @journy }
      else
        format.html { render action: "new" }
        format.json { render json: @journy.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /journies/1
  # PUT /journies/1.json
  def update
    @journy = Journy.find(params[:id])

    respond_to do |format|
      if @journy.update_attributes(params[:journy])
        format.html { redirect_to @journy, notice: 'Journy was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @journy.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /journies/1
  # DELETE /journies/1.json
  def destroy
    @journy = Journy.find(params[:id])
    @journy.destroy

    respond_to do |format|
      format.html { redirect_to journies_url }
      format.json { head :no_content }
    end
  end
end
