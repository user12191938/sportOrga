class AdSchedulesController < ApplicationController
  # GET /ad_schedules
  # GET /ad_schedules.json
  def index
    @ad_schedules = AdSchedule.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @ad_schedules }
    end
  end

  # GET /ad_schedules/1
  # GET /ad_schedules/1.json
  def show
    @ad_schedule = AdSchedule.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @ad_schedule }
    end
  end

  # GET /ad_schedules/new
  # GET /ad_schedules/new.json
  def new
    @ad_schedule = AdSchedule.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @ad_schedule }
    end
  end

  # GET /ad_schedules/1/edit
  def edit
    @ad_schedule = AdSchedule.find(params[:id])
  end

  # POST /ad_schedules
  # POST /ad_schedules.json
  def create
    @ad_schedule = AdSchedule.new(params[:ad_schedule])

    respond_to do |format|
      if @ad_schedule.save
        format.html { redirect_to @ad_schedule, notice: 'Ad schedule was successfully created.' }
        format.json { render json: @ad_schedule, status: :created, location: @ad_schedule }
      else
        format.html { render action: "new" }
        format.json { render json: @ad_schedule.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /ad_schedules/1
  # PUT /ad_schedules/1.json
  def update
    @ad_schedule = AdSchedule.find(params[:id])

    respond_to do |format|
      if @ad_schedule.update_attributes(params[:ad_schedule])
        format.html { redirect_to @ad_schedule, notice: 'Ad schedule was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @ad_schedule.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ad_schedules/1
  # DELETE /ad_schedules/1.json
  def destroy
    @ad_schedule = AdSchedule.find(params[:id])
    @ad_schedule.destroy

    respond_to do |format|
      format.html { redirect_to ad_schedules_url }
      format.json { head :no_content }
    end
  end
end
