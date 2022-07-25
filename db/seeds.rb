User.destroy_all
u1 = User.create :email => 'karandwivedi94@gmail.com', :name => 'Karan', :website => 'test@test.com', :fb_link => 'https://www.facebook.com/karan.10994/', :ig_link => 'https://www.instagram.com/karandwivedi/', :other_link => 'test@test.com', :image => 'https://ga-core.s3.amazonaws.com/production/uploads/instructor/image/21389/thumb_karan.jpeg', :rating => 'NA', :password => 'chicken1', :admin => true
u3 = User.create :email => 'sash@gmail.com', :name => 'Sash Entertainment', :website => 'http://www.sash.net.au/', :fb_link => 'https://www.facebook.com/sashsundays/', :ig_link => 'https://www.instagram.com/sashsundays/', :other_link => 'https://linktr.ee/sashsundays', :image => 'https://d1fdloi71mui9q.cloudfront.net/a66TAVoxRKhl88xlGVff_3hk9KK3D02589YhA', :rating => '5', :password => 'chicken1'
u4 = User.create :email => 'seventyseven@gmail.com', :name => 'Seventy Seven Sydney', :website => 'http://www.club77.com.au/', :fb_link => 'https://www.facebook.com/club77eora/', :ig_link => 'https://www.instagram.com/club77sydney/', :other_link => 'https://linktr.ee/club77sydney', :image => 'https://d1fdloi71mui9q.cloudfront.net/5z8tAL8RYOczyfw8xavg_J7p7U2CIIt0pmtbZ', :rating => '4.5', :password => 'chicken1'
u5 = User.create :email => 'welove@gmail.com', :name => 'We Love Sydney', :website => 'test.com', :fb_link => 'https://www.facebook.com/welovesydneyunderground/', :ig_link => 'https://www.instagram.com/welove_sydney/', :other_link => 'https://linktr.ee/welove_sydney', :image => 'https://d1fdloi71mui9q.cloudfront.net/CNLmqD0rQCCgHhlyYKoL_OY5XgLwpt3ix2ae3', :rating => '4.3', :password => 'chicken1'

puts "#{ User.count } users"

Artist.destroy_all
a1 = Artist.create :name => 'Hoten', :image => 'https://d1fdloi71mui9q.cloudfront.net/WGPeGevYSDmSbCMcMfHL_qmNtTjI3T7ltemea', :social => 'https://www.facebook.com/hotenmusic', :work => 'https://linktr.ee/hoten?fbclid=IwAR1626tVPfMg5APES2A9RaBAkrSqjPhUIwYjBEvhd70Enij6TsxzvFvJQn4', :bio => 'All round nice guy'
a2 = Artist.create :name => 'Robbie Lowe', :image => 'https://d1fdloi71mui9q.cloudfront.net/TkepgLPQtKDBQm5SDEZj_zqjXoKDoor4Go921', :social => 'https://www.instagram.com/robbielowerider/?hl=en', :work => 'https://linktr.ee/robbielowe', :bio => 'Old school legend'
a3 = Artist.create :name => 'Wildfox', :image => 'https://www.ravereviewz.net/static/wild-fox-c15070795d6b0d1ad2b26a955b3ff29d-2d65b.jpg', :social => 'https://www.instagram.com/wild_foxmusicau/?hl=en', :work => 'https://soundcloud.com/wild_foxmusicau', :bio => 'House and Techno Queen'
a4 = Artist.create :name => 'dameeeela', :image => 'https://d1fdloi71mui9q.cloudfront.net/neUBWR0XSs2U9CrBxxaf_jhJTiP8p5EJHgsrF', :social => 'https://www.instagram.com/dameeeela/?hl=en', :work => 'https://linktr.ee/dameeeela', :bio => 'Bringing good vibes'

puts "#{ Artist.count } artists"

Gig.destroy_all
g1 = Gig.create :name => 'Sash By Day', :image => 'https://scontent.fsyd10-1.fna.fbcdn.net/v/t39.30808-6/290245139_5008809252578734_4996486864859965531_n.jpg?stp=dst-jpg_s960x960&_nc_cat=100&ccb=1-7&_nc_sid=340051&_nc_ohc=PPXla715VPkAX-pYcZp&_nc_ht=scontent.fsyd10-1.fna&oh=00_AT--55LZkEoEL2cxlFFUpyPpw_VjyZ_8bFJxH7_gdCzbUA&oe=62E147E3', :genre => 'Tech-House', :rating => '5', :location => 'Greenwood Hotel'
g2 = Gig.create :name => 'We Love Fridays', :image => 'https://scontent.fsyd10-2.fna.fbcdn.net/v/t39.30808-6/292676112_5210109682405751_5324692520080721488_n.jpg?stp=dst-jpg_p180x540&_nc_cat=104&ccb=1-7&_nc_sid=340051&_nc_ohc=oiJj3LJVbwkAX9DIbOl&tn=k8mX2fzTZmEZ6g8e&_nc_ht=scontent.fsyd10-2.fna&oh=00_AT8Yx7IiBGUsJrIPYtLy6ATpSfRpg_FRLQRIMF7x_n6Ziw&oe=62E05B1A', :genre => 'House', :rating => '4.5', :location => 'Burdekin Hotel'
g3 = Gig.create :name => 'Club 77:All Night Long', :image => 'https://scontent.fsyd10-1.fna.fbcdn.net/v/t39.30808-6/292000757_5594694890564986_8634687374745508244_n.jpg?stp=dst-jpg_s960x960&_nc_cat=103&ccb=1-7&_nc_sid=340051&_nc_ohc=gJ_mhVb3EI0AX-YMgCO&_nc_ht=scontent.fsyd10-1.fna&oh=00_AT9K9Rr4hVCbptGFBgAzsMKRArBPxDxih3cE5trEMhitoQ&oe=62E0E895', :genre => 'Techno', :rating => '4.8', :location => 'Club 77'

puts "#{ Gig.count } gigs"

# Associations ######################################################

puts "Users and Gigs"
u3.gigs << g1 
u5.gigs << g3
u4.gigs << g2

puts "Gigs and Artists"
g1.artists << a1 << a3
g2.artists << a2 << a2
g3.artists << a1 << a3 << a4 << a2


