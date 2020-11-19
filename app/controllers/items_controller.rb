class ItemsController < ApplicationController
  before_action :set_item, only: [:show, :edit, :destroy]
  include ListsHelper
  # GET /items
  # GET /items.json
  def index
    @items = Item.all
  end

  # GET /items/1
  # GET /items/1.json
  def show
  end

  # GET /items/new
  def new
    @item = Item.new
    @list = List.find(params[:list_id])
  end

  # GET /items/1/edit
  def edit
    @list = @item.list
  end

  # POST /items
  # POST /items.json
  def create
    @item = Item.new(item_params)
    @item.url = helpers.full_url(@item.url)

    respond_to do |format|
      if @item.save
        format.html { redirect_to list_path(@item.list_id), notice: 'Item was successfully created.' }
        format.json { render :show, status: :created, location: @item }
      else
        @list = List.find(@item.list_id)
        format.html { render :new }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /items/1
  # PATCH/PUT /items/1.json
  def update
    @item = Item.find(params[:item_id])
    if(user_can_participate?(@item.list) || list_belongs_to_user?(@item.list))
      respond_to do |format|
        if @item.update(item_params)
          format.html { redirect_to list_path(@item.list.id), notice: 'Item was successfully updated.' }
          format.json { render :show, status: :ok, location: @item }
        else
          format.html { render :edit }
          format.json { render json: @item.errors, status: :unprocessable_entity }
        end
      end
    end
  end

  # DELETE /items/1
  # DELETE /items/1.json
  def destroy
    list_id = @item.list_id
    @item.destroy

    respond_to do |format|
      format.html { redirect_to list_path(list_id), notice: 'Item was successfully destroyed.' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_item
      @item = Item.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def item_params
      params.require(:item).permit(:name, :url, :instructions, :hidden_from_owner, :list_id, :purchaser_id)
    end
end
