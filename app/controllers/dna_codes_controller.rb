class DnaCodesController < ApplicationController
  before_action :set_dna_code, only: %i[ show edit update destroy ]
  skip_verify_authorized

  # GET /dna_codes
  def index
    @dna_codes = DnaCode.all
  end

  # GET /dna_codes/1
  def show
    base_pairs = params[:base_pairs]
    unless base_pairs.blank?
      end_range = base_pairs.to_i - 1
      @dna_array = @dna_code.raw.chars.each_with_index.map { |v,i| @dna_code.raw[i..i+end_range] }
    end
      respond_to do |format|
        format.xlsx {
          response.headers[
            'Content-Disposition'
          ] = "attachment; filename=dna.xlsx"
        }
        format.html { render :show }
      end


  end

  # GET /dna_codes/new
  def new
    @dna_code = DnaCode.new
  end

  # GET /dna_codes/1/edit
  def edit
  end

  # POST /dna_codes
  def create
    @dna_code = DnaCode.new(dna_code_params)

    if @dna_code.save
      redirect_to @dna_code, notice: "Dna code was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /dna_codes/1
  def update
    if @dna_code.update(dna_code_params)
      redirect_to @dna_code, notice: "Dna code was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /dna_codes/1
  def destroy
    @dna_code.destroy
    redirect_to dna_codes_url, notice: "Dna code was successfully destroyed."
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dna_code
      @dna_code = DnaCode.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def dna_code_params
      params.require(:dna_code).permit(:raw, :account_id, :entity_id, :base_pairs, :id)
    end
end
