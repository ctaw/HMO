if User.all.blank?
  User.create(:email => 'joyce@cloudemployee.co.uk', :password => 'madamjoyce', :password_confirmation => 'madamjoyce')
end
