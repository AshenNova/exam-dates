class IndexController < ApplicationController
  def home
    redirect_to exam_dates_path
  end
end
