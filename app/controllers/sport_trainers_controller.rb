class SportTrainersController < ApplicationController
  # GET /sport_trainers
  # GET /sport_trainers.json
  def index
    @sport_trainers = SportTrainer.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @sport_trainers }
    end
  end

  # GET /sport_trainers/1
  # GET /sport_trainers/1.json
  def show
    @sport_trainer = SportTrainer.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @sport_trainer }
    end
  end

  # GET /sport_trainers/new
  # GET /sport_trainers/new.json
  def new
    @sport_trainer = SportTrainer.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @sport_trainer }
    end
  end

  # GET /sport_trainers/1/edit
  def edit
    @sport_trainer = SportTrainer.find(params[:id])
  end

  # POST /sport_trainers
  # POST /sport_trainers.json
  def create
    @sport_trainer = SportTrainer.new(params[:sport_trainer])

    respond_to do |format|
      if @sport_trainer.save
        format.html { redirect_to @sport_trainer, notice: 'Sport trainer was successfully created.' }
        format.json { render json: @sport_trainer, status: :created, location: @sport_trainer }
      else
        format.html { render action: "new" }
        format.json { render json: @sport_trainer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /sport_trainers/1
  # PUT /sport_trainers/1.json
  def update
    @sport_trainer = SportTrainer.find(params[:id])

    respond_to do |format|
      if @sport_trainer.update_attributes(params[:sport_trainer])
        format.html { redirect_to @sport_trainer, notice: 'Sport trainer was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @sport_trainer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sport_trainers/1
  # DELETE /sport_trainers/1.json
  def destroy
    @sport_trainer = SportTrainer.find(params[:id])
    @sport_trainer.destroy

    respond_to do |format|
      format.html { redirect_to sport_trainers_url }
      format.json { head :no_content }
    end
  end
end
