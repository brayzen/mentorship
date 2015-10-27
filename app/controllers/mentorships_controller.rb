class MentorshipsController < ApplicationController
  before_action :set_mentorship, only: [:show, :edit, :update, :destroy]

  # GET /mentorships
  # GET /mentorships.json
  def index
    @mentorships = Mentorship.all
  end

  # GET /mentorships/1
  # GET /mentorships/1.json
  def show
  end

  # GET /mentorships/new
  def new
    @mentorship = Mentorship.new
  end

  # GET /mentorships/1/edit
  def edit
  end

  # POST /mentorships
  # POST /mentorships.json
  def create
    @mentorship = Mentorship.new(mentorship_params)

    respond_to do |format|
      if @mentorship.save
        format.html { redirect_to @mentorship, notice: 'Mentorship was successfully created.' }
        format.json { render :show, status: :created, location: @mentorship }
      else
        format.html { render :new }
        format.json { render json: @mentorship.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mentorships/1
  # PATCH/PUT /mentorships/1.json
  def update
    respond_to do |format|
      if @mentorship.update(mentorship_params)
        format.html { redirect_to @mentorship, notice: 'Mentorship was successfully updated.' }
        format.json { render :show, status: :ok, location: @mentorship }
      else
        format.html { render :edit }
        format.json { render json: @mentorship.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mentorships/1
  # DELETE /mentorships/1.json
  def destroy
    @mentorship.destroy
    respond_to do |format|
      format.html { redirect_to mentorships_url, notice: 'Mentorship was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mentorship
      @mentorship = Mentorship.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mentorship_params
      params[:mentorship]
    end
end
