class SearchController < ApplicationController
  def index
    @query = Vacancy.ransack(params[:q])
    @vacancies = @query.result(distinct: true)
  end
end
