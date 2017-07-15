class AreaPrivata::BaseAreaPrivataController < ApplicationController
   before_action :authenticate_user!
end
