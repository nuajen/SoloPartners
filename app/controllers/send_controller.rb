class SendController < ApplicationController
  def contact
  end
  def create 
    @params= params
    ContactMailer.contact_send(params).deliver
    flash[:notice]= “mensaje enviado”
    redirect_to send_path
   end
end
