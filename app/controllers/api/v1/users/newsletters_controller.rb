class Api::V1::Users::NewslettersController < ApplicationController
  before_action :authenticate_user

  def index
    if @sorted_newsletters = Newsletter.order_by_creation
      render json: @sorted_newsletters
    else
      render json: @sorted_newsletters.errors, status: :bad_request
    end
  end

  def create
    @newsletter = Newsletter.new(newsletter_params)
    if @newsletter.save
      render json: @newsletter
    else
      render json: @newsletter.errors, status: :bad_request
    end
  end

  def destroy
    @newsletter = Newsletter.find(newsletter_params[:id])
    if @newsletter.delete
      render status: :no_content
    else
      render json: @newsleter.errors, status: :bad_request
    end
  end

private

  def newsletter_params
    params.permit(:id,:name, :location, :user)
  end
end
