class FieldTripsController < ApplicationController
  # GET /field_trips
  # GET /field_trips.json
  def index
    @field_trips = FieldTrip.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @field_trips }
    end
  end

  # GET /field_trips/1
  # GET /field_trips/1.json
  def show
    @field_trip = FieldTrip.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @field_trip }
    end
  end

  # GET /field_trips/new
  # GET /field_trips/new.json
  def new
    @field_trip = FieldTrip.new
    @schools = School.order(:name).all

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @field_trip }
    end
  end

  # GET /field_trips/1/edit
  def edit
    @field_trip = FieldTrip.find(params[:id])
    @schools = School.order(:name).all
  end

  # POST /field_trips
  # POST /field_trips.json
  def create
    @field_trip = FieldTrip.new(params[:field_trip])

    respond_to do |format|
      if @field_trip.save
        format.html { redirect_to @field_trip, notice: 'Field trip was successfully created.' }
        format.json { render json: @field_trip, status: :created, location: @field_trip }
      else
        format.html { render action: "new" }
        format.json { render json: @field_trip.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /field_trips/1
  # PUT /field_trips/1.json
  def update
    @field_trip = FieldTrip.find(params[:id])

    respond_to do |format|
      if @field_trip.update_attributes(params[:field_trip])
        format.html { redirect_to @field_trip, notice: 'Field trip was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @field_trip.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /field_trips/1
  # DELETE /field_trips/1.json
  def destroy
    @field_trip = FieldTrip.find(params[:id])
    @field_trip.destroy

    respond_to do |format|
      format.html { redirect_to field_trips_url }
      format.json { head :no_content }
    end
  end
end
