class Admin::NewslettersController < Admin::BaseController
  def index
    @newsletters= Newsletter.all.reverse
  end
end
