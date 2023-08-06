class TodoModelsController < ApplicationController
  before_action :set_todo_model, only: %i[ show edit update destroy ]

  # GET /todo_models or /todo_models.json
  def index
    @todo_models = TodoModel.all
  end

  # GET /todo_models/1 or /todo_models/1.json
  def show
  end

  # GET /todo_models/new
  def new
    @todo_model = TodoModel.new
  end

  # GET /todo_models/1/edit
  def edit
  end

  # POST /todo_models or /todo_models.json
  def create
    @todo_model = TodoModel.new(todo_model_params)

    respond_to do |format|
      if @todo_model.save
        format.html { redirect_to todo_model_url(@todo_model), notice: "Todo model was successfully created." }
        format.json { render :show, status: :created, location: @todo_model }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @todo_model.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /todo_models/1 or /todo_models/1.json
  def update
    respond_to do |format|
      if @todo_model.update(todo_model_params)
        format.html { redirect_to todo_model_url(@todo_model), notice: "Todo model was successfully updated." }
        format.json { render :show, status: :ok, location: @todo_model }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @todo_model.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /todo_models/1 or /todo_models/1.json
  def destroy
    @todo_model.destroy

    respond_to do |format|
      format.html { redirect_to todo_models_url, notice: "Todo model was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_todo_model
      @todo_model = TodoModel.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def todo_model_params
      params.require(:todo_model).permit(:task, :isCompleted)
    end
end
