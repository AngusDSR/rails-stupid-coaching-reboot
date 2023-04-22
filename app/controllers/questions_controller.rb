# Questions controller
class QuestionsController < ApplicationController
  def ask; end

  def answer
    @question = params[:question]
    if @question.blank?
      @answer = "I can't hear you!"
      @emoji = '🧏'
    elsif @question =~ /i am going to work/i
      @answer = 'Great!'
      @emoji = '😀'
    else
      @answer = "I don't care, get dressed and go to work!"
      @emoji = '😠'
    end
  end
end
