Song.destroy_all

s1 = Song.create :name => 'Shake it Off'
s2 = Song.create :name => 'Moonlight Sonata'
s3 = Song.create :name => 'Wishing You Were Somehow Here Again'
s4 = Song.create :name => 'Summer in Ohio'
s5 = Song.create :name => 'In the Heights'


Artist.destroy_all
a1 = Artist.create :name => 'Taylor Swift'
a2 = Artist.create :name => 'Beethoven'
a3 = Artist.create :name => 'Andrew Lloyd Webber'
a4 = Artist.create :name => 'Jason Robert Brown'
a5 = Artist.create :name => 'Lin Manuel Miranda'

Album.destroy_all
ab1 = Album.create :name => 'Red'
ab2 = Album.create :name => 'Beethovens Greatest Hits'
ab3 = Album.create :name => 'The Phantom of the Opera'
ab4 = Album.create :name => 'The Last Five Years'
ab5 = Album.create :name => 'In the Heights'


Genre.destroy_all
g1 = Genre.create :name => 'Pop'
g2 = Genre.create :name => 'Classical'
g3 = Genre.create :name => 'Musical Theatre'
g4 = Genre.create :name => 'Punk'
g5 = Genre.create :name => 'Rock'

User.destroy_all
u1 = User.create :name => :'Alex', :email => 'alexandraswan@gmail.com', :password => 'chicken'
u2 = User.create :name => :'Andrew', :email => 'alil9145@uni.sydney.edu.au', :password => 'chicken'

Mixtape.destroy_all
m1 = u1.mixtapes.create :name => 'Mix1'
m2 = Mixtape.create :name => 'Mix2'
m3 = Mixtape.create :name => 'Other mixtape'

u2.mixtapes << m2 << m3

a1.songs << s1
a2.songs << s2
a3.songs << s3
a4.songs << s4
a5.songs << s5 # s5.album_id = a5.id; s5.save

ab1.songs << s1
ab2.songs << s2
ab3.songs << s3
ab4.songs << s4
ab5.songs << s5

g1.songs << s1
g2.songs << s2 << s3
g3.songs << s3 << s4 << s5

m1.songs << s5 << s4 << s3 << s2 << s1
m2.songs << s1 << s3 << s5
m3.songs << s1 << s2 << s5
