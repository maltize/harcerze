class FeedbacksController < ApplicationController

  before_filter :default_page

  def new
    @feedback = Feedback.new
  end

  def create
    @feedback = Feedback.new(params[:feedback])

    if @feedback.save
      UserMailer.feedback_email(@feedback).deliver
      flash[:notice] = 'Wiadomość została wysłana. Dziękujemy.'
      redirect_to root_path
    else
      render :action => "new"
    end
  end

end
