class SportClubsController < ApplicationController
  # GET /sport_clubs
  # GET /sport_clubs.json
  def index
    @sport_clubs = SportClub.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @sport_clubs }
    end
  end

  # GET /sport_clubs/1
  # GET /sport_clubs/1.json
  def show
    @sport_club = SportClub.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @sport_club }
    end
  end

  # GET /sport_clubs/new
  # GET /sport_clubs/new.json
  def new
    @sport_club = SportClub.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @sport_club }
    end
  end

  # GET /sport_clubs/1/edit
  def edit
    @sport_club = SportClub.find(params[:id])
  end

  # POST /sport_clubs
  # POST /sport_clubs.json
  def create
    @sport_club = SportClub.new(params[:sport_club])

    respond_to do |format|
      if @sport_club.save
        format.html { redirect_to @sport_club, notice: 'Sport club was successfully created.' }
        format.json { render json: @sport_club, status: :created, location: @sport_club }
      else
        format.html { render action: "new" }
        format.json { render json: @sport_club.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /sport_clubs/1
  # PUT /sport_clubs/1.json
  def update
    @sport_club = SportClub.find(params[:id])

    respond_to do |format|
      if @sport_club.update_attributes(params[:sport_club])
        format.html { redirect_to @sport_club, notice: 'Sport club was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @sport_club.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sport_clubs/1
  # DELETE /sport_clubs/1.json
  def destroy
    @sport_club = SportClub.find(params[:id])
    @sport_club.destroy

    respond_to do |format|
      format.html { redirect_to sport_clubs_url }
      format.json { head :no_content }
    end
  end
end
