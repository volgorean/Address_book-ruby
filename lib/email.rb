class Email
  @@emails = []
  def initialize(email)
    @email = email
    @@emails << email
  end
  def Email.all
    @@emails
  end
  def Email.clear
    @@emails = []
  end

  def email_out
    @email
  end
end
