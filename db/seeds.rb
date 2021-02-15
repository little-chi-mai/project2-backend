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
