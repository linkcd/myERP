class LocationPropertiesController < ApplicationController
  # GET /location_properties
  # GET /location_properties.json
  def index
    @location_properties = LocationProperty.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @location_properties }
    end
  end

  # GET /location_properties/1
  # GET /location_properties/1.json
  def show
    @location_property = LocationProperty.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @location_property }
    end
  end

  # GET /location_properties/new
  # GET /location_properties/new.json
  def new
    @location_property = LocationProperty.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @location_property }
    end
  end

  # GET /location_properties/1/edit
  def edit
    @location_property = LocationProperty.find(params[:id])
  end

  # POST /location_properties
  # POST /location_properties.json
  def create
    @location_property = LocationProperty.new(params[:location_property])

    respond_to do |format|
      if @location_property.save
        format.html { redirect_to @location_property, notice: 'Location property was successfully created.' }
        format.json { render json: @location_property, status: :created, location: @location_property }
      else
        format.html { render action: "new" }
        format.json { render json: @location_property.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /location_properties/1
  # PUT /location_properties/1.json
  def update
    @location_property = LocationProperty.find(params[:id])

    respond_to do |format|
      if @location_property.update_attributes(params[:location_property])
        format.html { redirect_to @location_property, notice: 'Location property was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @location_property.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /location_properties/1
  # DELETE /location_properties/1.json
  def destroy
    @location_property = LocationProperty.find(params[:id])
    @location_property.destroy

    respond_to do |format|
      format.html { redirect_to location_properties_url }
      format.json { head :no_content }
    end
  end
end
