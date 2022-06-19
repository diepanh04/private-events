class AttendancesController < ApplicationController 
    def new
        @attendance = Attendance.new
        #@event = Event.find(params[:attended_event_id])
        #@event.attendees
    end 

    def create 
        @attendance = Attendance.new(attendance_params)
        respond_to do |format|
            if @attended.save
              format.html { redirect_to @attendee.attended_event, notice: "You Are Attending The Event!" }
              format.json { render :show, status: :created, location: @attendee.attended_event }
            else
              format.html { redirect_to @attendee.attended_event, status: :unprocessable_entity }
              format.json { render json: @attendee.errors, status: :unprocessable_entity }
            end
          end
    end 

    def index 
      @attendees = Attendance.all 
    end 

    def update
      
    end 

    private 

    def attendance_params
        params.require(:attendee).permit(:attendee_id, :attended_event_id)
    end 
end 