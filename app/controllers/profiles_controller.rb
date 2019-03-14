class ProfilesController < ApplicationController
    before_action :set_current_user_profile, only: [:edit, :update]

    def edit
    end

    def update
        if @profile.update(profile_params)
            redirect_to @profile, notice: "Prof Updated!"
        else
            redirect_to edit_profile_path(@profile),
            alert: @profile.errors.full_messages.to_sentence
        end
    end

    def show
        @profile = Profile.find(params[:id])
    end

    private

    def set_current_user_profile
        @profile = current_user.profile
    end

    def profile_params
        params.require(:profile).permit(:name, :position)
    end

end