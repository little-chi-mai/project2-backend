class AttendantsController < ApplicationController

def index
  @attendants = Attendant.all
end

def show
  @attendant = Attendant.find params [:id]
end

def create
  @attendant = Attendant.create attendant_params
end

def destroy
  attendant = Attendant.find params [:id];
  attendant.destroy
end


private
def attendant_params
  params.require(:attendant).permit(:user, :event)
end

end
