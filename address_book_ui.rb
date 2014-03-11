require './lib/address_book'
require './lib/address'
require './lib/phone'
require './lib/email'
require './lib/contact'

@contacts =[]

def modify_contact
  system('clear')
  puts "******************************************"
  @contacts.each_with_index do |key, index|
    puts (index + 1).to_s + ". " + key.name
  end
  puts "******************************************"
  puts "* Commands                               *"
  puts "******************************************"
  puts "* add [name] = to add a contact name     *"
  puts "* mod [item #] = to modify/show contact  *"
  puts "* delete [item #] = delete contact       *"
  puts "* e = exit                               *"
  puts "******************************************"

  main_choice = gets.chomp.split
  if main_choice[0] == 'add'
    main_choice.delete_at(0)
    name = main_choice.join(" ")
    new_contact = Contact.new(name)
    @contacts << new_contact
    Contact.clear
    modify_contact
  elsif main_choice[0] == 'mod'
    main_choice.delete_at(0)
    mod_what = main_choice.join
    if mod_what.to_i <= @contacts.length && mod_what.to_i > 0
      modify_info(mod_what.to_i - 1)
    end
    modify_contact
  elsif main_choice[0] == 'delete'
    main_choice.delete_at(0)
    delete_what = main_choice.join
    if delete_what.to_i <= @contacts.length && delete_what.to_i > 0
      @contacts.delete_at(delete_what.to_i - 1)
    end
    modify_contact
  elsif main_choice[0] == 'e'
  else
    puts "Please enter a valid command!"
    modify_contact
  end
end

def modify_info(contact_num)
  system('clear')
  puts " Mod "
  puts "*********************************************"

  @contacts[contact_num].info_out
  puts "*********************************************"
  puts "* rename [contact name] = to rename contact *"
  puts "* addr [contact address] = to add address   *"
  puts "* email [contact email] = to add email      *"
  puts "* phone [contact phone] = to add phone      *"
  puts "* return = return to main menu              *"
  puts "* e = exit                                  *"
  puts "*********************************************"
  main_choice = gets.chomp.split
  if main_choice[0] == 'rename'
    main_choice.delete_at(0)
    rename_contact = main_choice.join(" ")
    @contacts[contact_num].rename(rename_contact)
    Contact.clear
    modify_info(contact_num)
  elsif main_choice[0] == 'addr'
    main_choice.delete_at(0)
    new_address = main_choice.join(" ")
    @contacts[contact_num].add_address(new_address)
    Contact.clear
    modify_info(contact_num)
  elsif main_choice[0] == 'email'
    main_choice.delete_at(0)
    new_email = main_choice.join(" ")
    @contacts[contact_num].add_email(new_email)
    Contact.clear
    modify_info(contact_num)
  elsif main_choice[0] == 'phone'
    main_choice.delete_at(0)
    new_phone = main_choice.join(" ")
    @contacts[contact_num].add_phone(new_phone)
    Contact.clear
    modify_info(contact_num)
  elsif main_choice[0] == 'return'
    modify_contact
  elsif main_choice[0] == 'e'
  else
    puts "Please enter a valid command!"
    modify_contact
  end
end

modify_contact

