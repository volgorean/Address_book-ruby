require 'rspec'
require 'contact'

describe Contact do
  it 'stores an array of contact information' do
    new_contact = Contact.new("Dustin Brown")
    new_contact.add_address("32344 1st street")
    new_contact.add_address("32344 1st street")
    new_contact.add_phone("9443453")
    new_contact.add_email("dustin@epicodus.com")
    new_contact.save
    Contact.all.should eq ["Dustin Brown", ["32344 1st street", "32344 1st street"], ["9443453"], ["dustin@epicodus.com"]]
  end

  it 'stores more than one contact' do
    Contact.clear
    new_contact = Contact.new("Dustin Brown")
    new_contact.add_address("32344 1st street")
    new_contact.add_address("32344 1st street")
    new_contact.add_phone("9443453")
    new_contact.add_email("dustin@epicodus.com")
    new_contact.save
    new_contact = Contact.new("James Madison")
    new_contact.add_address("1st madison ave")
    new_contact.add_phone("3444353")
    new_contact.add_email("Mickyjs@hipster.com")
    new_contact.save
    Contact.all.should eq ["Dustin Brown", ["32344 1st street", "32344 1st street"], ["9443453"], ["dustin@epicodus.com"],
    "James Madison", ["1st madison ave"], ["3444353"], ["Mickyjs@hipster.com"]]
  end
end
