class SportDoctorsController < ApplicationController
  # GET /sport_doctors
  # GET /sport_doctors.json
  def index
    @sport_doctors = SportDoctor.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @sport_doctors }
    end
  end

  # GET /sport_doctors/1
  # GET /sport_doctors/1.json
  def show
    @sport_doctor = SportDoctor.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @sport_doctor }
    end
  end

  # GET /sport_doctors/new
  # GET /sport_doctors/new.json
  def new
    @sport_doctor = SportDoctor.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @sport_doctor }
    end
  end

  # GET /sport_doctors/1/edit
  def edit
    @sport_doctor = SportDoctor.find(params[:id])
  end

  # POST /sport_doctors
  # POST /sport_doctors.json
  def create
    @sport_doctor = SportDoctor.new(params[:sport_doctor])

    respond_to do |format|
      if @sport_doctor.save
        format.html { redirect_to @sport_doctor, notice: 'Sport doctor was successfully created.' }
        format.json { render json: @sport_doctor, status: :created, location: @sport_doctor }
      else
        format.html { render action: "new" }
        format.json { render json: @sport_doctor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /sport_doctors/1
  # PUT /sport_doctors/1.json
  def update
    @sport_doctor = SportDoctor.find(params[:id])

    respond_to do |format|
      if @sport_doctor.update_attributes(params[:sport_doctor])
        format.html { redirect_to @sport_doctor, notice: 'Sport doctor was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @sport_doctor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sport_doctors/1
  # DELETE /sport_doctors/1.json
  def destroy
    @sport_doctor = SportDoctor.find(params[:id])
    @sport_doctor.destroy

    respond_to do |format|
      format.html { redirect_to sport_doctors_url }
      format.json { head :no_content }
    end
  end
end
