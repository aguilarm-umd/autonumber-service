class AutoNumbersController < ApplicationController
  before_action :set_auto_number, only: [:show, :edit, :update, :destroy]

  def index
    @q = AutoNumber.ransack(params[:q])
    @q.sorts = 'id asc' if @q.sorts.empty?
    @auto_numbers = @q.result.page(params[:page])
  end

  def show
  end

  def new
    @auto_number = AutoNumber.new
    @auto_number.name = Name.new
    @auto_number.repository = Repository.new
  end

  def edit
  end

  def create
    @auto_number = AutoNumber.new(auto_number_params)

    respond_to do |format|
      if @auto_number.save
        format.html { redirect_to @auto_number, notice: "Created new number: #{@auto_number.file_name}" }
        format.json { render :show, status: :created, location: @auto_number }
      else
        format.html { render :new }
        format.json { render json: @auto_number.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @auto_number.update(auto_number_params)
        format.html { redirect_to @auto_number, notice: 'Autonumber was successfully updated.' }
        format.json { render :show, status: :ok, location: @auto_number }
      else
        format.html { render :edit }
        format.json { render json: @auto_number.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @auto_number.destroy
    respond_to do |format|
      format.html { redirect_to auto_numbers_url, notice: 'Autonumber was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_auto_number
      @auto_number = AutoNumber.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def known_params
      params.require(:auto_number).permit(:entry_date)
    end

    def auto_number_params
      repository = Repository.find_or_create_by(name: params[:auto_number][:repository][:name].downcase)
      name = Name.find_or_create_by(initials: params[:auto_number][:name][:initials].downcase)
      known_params.merge repository: repository, name: name
    end

end
