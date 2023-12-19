class VacanciesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_vacancy, only: %i[ show edit update destroy ]

  def index
    @vacancies = current_user.vacancies
  end

  def show
  end

  def new
    @vacancy = Vacancy.new
  end

  def edit
  end

  def create
    @vacancy = Vacancy.new(vacancy_params)
    @vacancy.user = current_user

    respond_to do |format|
      if @vacancy.save
        format.html { redirect_to vacancy_url(@vacancy), notice: "Vacancy was successfully created." }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @vacancy.update(vacancy_params)
        format.html { redirect_to vacancy_url(@vacancy), notice: "Vacancy was successfully updated." }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @vacancy.destroy

    respond_to do |format|
      format.html { redirect_to vacancies_url, notice: "Vacancy was successfully destroyed." }
    end
  end

  private
    def set_vacancy
      @vacancy = Vacancy.find(params[:id])
    end

    def vacancy_params
      params.require(:vacancy).permit(:position, :location, :description, :latitude, :longitude, :salary, :company_logo, :logo, :company)
    end
end
