class ContactMailer < ApplicationMailer
    def contact_send(params) 
        @parameters=params mail(to:’tuemail@example.com’,subject:@parameters[:subject]) end
end
