class SportFacilitiesController < ApplicationController
  # GET /sport_facilities
  # GET /sport_facilities.json
  def index
    @sport_facilities = SportFacility.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @sport_facilities }
    end
  end

  # GET /sport_facilities/1
  # GET /sport_facilities/1.json
  def show
    @sport_facility = SportFacility.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @sport_facility }
    end
  end

  # GET /sport_facilities/new
  # GET /sport_facilities/new.json
  def new
    @sport_facility = SportFacility.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @sport_facility }
    end
  end

  # GET /sport_facilities/1/edit
  def edit
    @sport_facility = SportFacility.find(params[:id])
  end

  # POST /sport_facilities
  # POST /sport_facilities.json
  def create
    @sport_facility = SportFacility.new(params[:sport_facility])

    respond_to do |format|
      if @sport_facility.save
        format.html { redirect_to @sport_facility, notice: 'Sport facility was successfully created.' }
        format.json { render json: @sport_facility, status: :created, location: @sport_facility }
      else
        format.html { render action: "new" }
        format.json { render json: @sport_facility.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /sport_facilities/1
  # PUT /sport_facilities/1.json
  def update
    @sport_facility = SportFacility.find(params[:id])

    respond_to do |format|
      if @sport_facility.update_attributes(params[:sport_facility])
        format.html { redirect_to @sport_facility, notice: 'Sport facility was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @sport_facility.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sport_facilities/1
  # DELETE /sport_facilities/1.json
  def destroy
    @sport_facility = SportFacility.find(params[:id])
    @sport_facility.destroy

    respond_to do |format|
      format.html { redirect_to sport_facilities_url }
      format.json { head :no_content }
    end
  end
end
