class MembershipsController < ApplicationController
    def create
        membership = Membership.new(membership_params)
        gym_check = Membership.find_by(gym_id: params[:gym_id])
        if membership.gym_id != gym_check.gym_id
            Membership.create(membership_params)
            render json: membership, status: :created
        else
            render json: {error: 'Client has membership to this gym.'}, status: :unprocessable_entity
        end        
    end

    private

    def membership_params
        params.permit(:gym_id, :client_id, :charge)
    end
end