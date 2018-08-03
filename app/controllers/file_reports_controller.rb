class FileReportsController < ApplicationController
  def index
    @reports = Dir["public/reports/*"]
  end

  def create
    FileReportJob.perform_now
    flash[:notice] = "Estamos processando seu relatório \\o/"
    redirect_to '/file_reports'
  end
end
