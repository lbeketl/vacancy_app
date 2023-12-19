class PagesController < ApplicationController
  def about
  end

  def pricing
  end

  def dashboard
    @vacancies = Vacancy.all
  end

  def contact
  end
end
