# Review the following code
# 'Self' is referenced in a few different places.
# Fill in the blanks

class Email 
    puts "#{self} will return Email Class"

    attr_accessor :sender, :receiver, :subject, :body

    def initialize(sender, receiver, subject, body)
        self.sender = sender
        self.receiver = receiver
        self.subject = subject
        self.body = body
        puts "#{self} will return Email Object(instance)"
    end 

    def print_signature 
        puts "Sincerely, #{self.sender}"
        puts "#{self} will return instance"
    end 

end

email = Email.new("s", "r", "su", "b")
email.print_signature