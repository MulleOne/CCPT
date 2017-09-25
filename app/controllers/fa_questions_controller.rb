class FaQuestionsController < ApplicationController
  before_action :set_fa_question, only: [:show, :edit, :update, :destroy]

  # GET /fa_questions
  # GET /fa_questions.json
  def index
    @fa_questions = FaQuestion.all
  end

  # GET /fa_questions/1
  # GET /fa_questions/1.json
  def show
  end

  # GET /fa_questions/new
  def new
    @fa_question = FaQuestion.new
  end

  # GET /fa_questions/1/edit
  def edit
  end

  # POST /fa_questions
  # POST /fa_questions.json
  def create
    @fa_question = FaQuestion.new(fa_question_params)

    respond_to do |format|
      if @fa_question.save
        format.html { redirect_to @fa_question, notice: 'Fa question was successfully created.' }
        format.json { render :show, status: :created, location: @fa_question }
      else
        format.html { render :new }
        format.json { render json: @fa_question.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fa_questions/1
  # PATCH/PUT /fa_questions/1.json
  def update
    respond_to do |format|
      if @fa_question.update(fa_question_params)
        format.html { redirect_to @fa_question, notice: 'Fa question was successfully updated.' }
        format.json { render :show, status: :ok, location: @fa_question }
      else
        format.html { render :edit }
        format.json { render json: @fa_question.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fa_questions/1
  # DELETE /fa_questions/1.json
  def destroy
    @fa_question.destroy
    respond_to do |format|
      format.html { redirect_to fa_questions_url, notice: 'Fa question was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fa_question
      @fa_question = FaQuestion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fa_question_params
      params.require(:fa_question).permit(:question, :answer)
    end
end
