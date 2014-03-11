class AddressBook
  @@contacts = []

  def initialize
  end

  def add_contact(name)
    new_contact = Contact.new(name)
    @@contacts << new_contact.all
  end

end
