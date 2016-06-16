class NewslettersController < ApplicationController
  def create
  @newsletter = Newsletter.new(newsletter_params)
  if @newsletter.save
    flash[:success] = 'Grazie per esserti registrato alla nostra newsletter'
    redirect_back(fallback_location: root_path)
  else
    flash[:danger] = 'Si è verificato un errore'
    redirect_back(fallback_location: root_path)
  end
end

private
  def newsletter_params
    params.require(:newsletter).permit(:email)
  end
end
