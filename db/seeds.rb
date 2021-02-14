User.destroy_all
User.create(:name => 'Mai', :email => 'mai@email.com', :about_me => 'this is some test data about Mai', :password => 'chicken')
User.create(:name => 'Yang', :email => 'yang@email.com', :about_me => 'this is some test data about Yang', :password => 'chicken')
User.create(:name => 'Naveen', :email => 'naveen@email.com', :about_me => 'this is some test data about Naveen', :password => 'chicken')
User.create(:name => 'Ken', :email => 'ken@email.com', :about_me => 'this is some test data about me', :password => 'chicken')
puts "#{ User.count } users created."

Chat.destroy_all
Chat.create(:user_id => 01, :event_id => 01, :content => 'this is some random crap about a chat')
Chat.create(:user_id => 02, :event_id => 02, :content => 'this is some more random crap about a chat')
Chat.create(:user_id => 03, :event_id => 01, :content => 'this is also some random crap about a chat')
Chat.create(:user_id => 04, :event_id => 02, :content => 'this is some further random crap about a chat')
puts "#{Chat.count} chats created."

Attendant.destroy_all
Attendant.create(:user_id => 01, :event_id => 01)
Attendant.create(:user_id => 02, :event_id => 02)
Attendant.create(:user_id => 03, :event_id => 01)
Attendant.create(:user_id => 04, :event_id => 02)
puts "#{ Attendant.count } attendants attending events"
