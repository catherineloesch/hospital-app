class PatientsController < ApplicationController
    def index
        @patients = Patient.all
    end

    def show
        @patient = Patient.find(params[:id])
    end

    def new
        @patient = Patient.new()
    end

    def create
        Patient.create(params.require(:patient).permit(:first_name, :last_name, :diagnosis, :born_on))
        redirect_to patients_path
    end

    def edit
        @patient = Patient.find(params[:id])
    end
end
