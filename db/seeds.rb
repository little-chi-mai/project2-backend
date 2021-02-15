User.destroy_all
U1 = User.create(:name => 'Mai', :email => 'mai@email.com', :about_me => 'this is some test data about Mai', :password => 'chicken')
U2 = User.create(:name => 'Yang', :email => 'yang@email.com', :about_me => 'this is some test data about Yang', :password => 'chicken')
U3 = User.create(:name => 'Naveen', :email => 'naveen@email.com', :about_me => 'this is some test data about Naveen', :password => 'chicken')
U4 = User.create(:name => 'Ken', :email => 'ken@email.com', :about_me => 'this is some test data about me', :password => 'chicken')
puts "#{ User.count } users created."

Chat.destroy_all
C1 = Chat.create( :content => 'this is some random crap about a chat')
C2 = Chat.create( :content => 'this is some more random crap about a chat')
C3 = Chat.create(:content => 'this is also some random crap about a chat')
C4 = Chat.create( :content => 'this is some further random crap about a chat')
puts "#{Chat.count} chats created."

Attendant.destroy_all
A1 = Attendant.create
A2 = Attendant.create
A3 = Attendant.create
A4 = Attendant.create
puts "#{ Attendant.count } attendants attending events"

Event.destroy_all
E1 = Event.create(:title => 'birthday party', :introduction => 'birthday party for someone', :date => '2020-03-03')
E2 = Event.create(:title => 'graduation party', :introduction => 'graduation party for someone', :date => '2020-03-12')
puts "#{Event.count} events created."

Restaurant.destroy_all
R1 = Restaurant.create(:name => 'Mais kitchen', :address => '191 Darlinghurst Rd, Darlinghurst, NSW 2010, Sydney, Australia', :price_level => '2', :rating => '4.5', :website => 'www.maiskitchen.co.au', :contact => '0429111111', :latitude => '-33.8660355', :longitude => '151.2012092')
R2 = Restaurant.create(:name => 'Ken on the rock', :address => '250 Darlinghurst Rd, Darlinghurst, NSW 2010, Sydney, Australia', :price_level => '3', :rating => '4', :website => 'www.kenontherock.co.au', :contact => '0429686868', :latitude => '-40.8660355', :longitude => '100.2012092')
R3 = Restaurant.create(:name => 'Yang house', :address => '7 Darlinghurst Rd, Darlinghurst, NSW 2010, Sydney, Australia', :price_level => '4', :rating => '5', :website => 'www.yanghouse.co.au', :contact => '0412345678', :latitude => '-10.8660355', :longitude => '109.2012092')
R4 = Restaurant.create(:name => 'Im Naveen', :address => '15 Darlinghurst Rd, Darlinghurst, NSW 2010, Sydney, Australia', :price_level => '3', :rating => '4.5', :website => 'www.imnaveen.co.au', :contact => '0412345679', :latitude => '-19.8660355', :longitude => '111.2012092')

puts "#{Restaurant.count} restaurants created."

puts 'users and attendants'
U1.attendants << A1
U2.attendants << A2
U3.attendants << A3
U4.attendants << A4

puts 'Users and events'
U2.events << E1
U3.events << E2

puts 'users and chats'
U1.chats << C1
U2.chats << C2
U3.chats << C3
U4.chats << C4

puts 'events and chats'
E1.chats << C1 << C2
E2.chats << C3 << C4

puts 'event and attendants'
E1.attendants << A1 << A3
E2.attendants << A2 << A4
