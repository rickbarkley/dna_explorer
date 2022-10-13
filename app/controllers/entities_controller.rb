class EntitiesController < ApplicationController
  before_action :set_entity, only: %i[ show edit update destroy ]

  # GET /entities
  def index
    @entities = Entity.all
  end

  # GET /entities/1
  def show
  end

  # GET /entities/new
  def new
    @entity = Entity.new
  end

  # GET /entities/1/edit
  def edit
  end

  # POST /entities
  def create
    @entity = Entity.new(entity_params)

    if @entity.save
      redirect_to @entity, notice: "Entity was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /entities/1
  def update
    if @entity.update(entity_params)
      redirect_to @entity, notice: "Entity was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /entities/1
  def destroy
    @entity.destroy
    redirect_to entities_url, notice: "Entity was successfully destroyed."
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_entity
      @entity = Entity.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def entity_params
      params.require(:entity).permit(:name, :ative)
    end
end
