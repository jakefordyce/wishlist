class CollabRequestsController < ApplicationController
  before_action :set_collab_request, only: [:show, :edit, :update, :destroy]

  # GET /collab_requests
  # GET /collab_requests.json
  def index
    @collab_requests = CollabRequest.joins(:list).where(lists: {user_id: current_user.id})
  end

  # GET /collab_requests/1
  # GET /collab_requests/1.json
  def show
  end

  # GET /collab_requests/new
  def new
    @collab_request = CollabRequest.new
  end

  # GET /collab_requests/1/edit
  def edit
  end

  # POST /collab_requests
  # POST /collab_requests.json
  def create
    @collab_request = CollabRequest.new(collab_request_params)

    respond_to do |format|
      if @collab_request.save
        format.html { redirect_to list_path(@collab_request.list_id), notice: 'Collab request was successfully created.' }
      else
        format.html { render :new }
        format.json { render json: @collab_request.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /collab_requests/1
  # PATCH/PUT /collab_requests/1.json
  def update
    respond_to do |format|
      if @collab_request.update(collab_request_params)
        format.html { redirect_to @collab_request, notice: 'Collab request was successfully updated.' }
        format.json { render :show, status: :ok, location: @collab_request }
      else
        format.html { render :edit }
        format.json { render json: @collab_request.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /collab_requests/1
  # DELETE /collab_requests/1.json
  def destroy
    @collab_request.destroy
    respond_to do |format|
      format.html { redirect_to collab_requests_url, notice: 'Collab request was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_collab_request
      @collab_request = CollabRequest.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def collab_request_params
      puts "params here: " + params.inspect
      params.require(:collab_request).permit(:user_id, :list_id, :from_owner)
    end
end
