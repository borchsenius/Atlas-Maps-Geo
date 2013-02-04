class GeoObjectsController < ApplicationController
  # GET /geo_objects
  # GET /geo_objects.json
  def index
    @geo_objects = GeoObject.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @geo_objects }
    end
  end

  # GET /geo_objects/1
  # GET /geo_objects/1.json
  def show
    @geo_object = GeoObject.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @geo_object }
    end
  end

  # GET /geo_objects/new
  # GET /geo_objects/new.json
  def new
    @geo_object = GeoObject.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @geo_object }
    end
  end

  # GET /geo_objects/1/edit
  def edit
    @geo_object = GeoObject.find(params[:id])
  end

  # POST /geo_objects
  # POST /geo_objects.json
  def create
    @geo_object = GeoObject.new(params[:geo_object])

    respond_to do |format|
      if @geo_object.save
        format.html { redirect_to @geo_object, notice: 'Geo object was successfully created.' }
        format.json { render json: @geo_object, status: :created, location: @geo_object }
      else
        format.html { render action: "new" }
        format.json { render json: @geo_object.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /geo_objects/1
  # PUT /geo_objects/1.json
  def update
    @geo_object = GeoObject.find(params[:id])

    respond_to do |format|
      if @geo_object.update_attributes(params[:geo_object])
        format.html { redirect_to @geo_object, notice: 'Geo object was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @geo_object.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /geo_objects/1
  # DELETE /geo_objects/1.json
  def destroy
    @geo_object = GeoObject.find(params[:id])
    @geo_object.destroy

    respond_to do |format|
      format.html { redirect_to geo_objects_url }
      format.json { head :no_content }
    end
  end
end
