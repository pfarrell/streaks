require './app'
user=User.new
user.name='Pat F'
user.email='mr.patfarrell@gmail.com'
user.username='patf'
user.save

streak=Streak.new
streak.title='test streak'
defi=[]
d=StreakEntryDefinition.new
d.name='date'
d.type=:date
defi[0] = d
streak.config = defi
streak.user = user
streak.save

streak=Streak.new
streak.title='number streak'
defi=[]
d=StreakEntryDefinition.new
d.name='checkins'
d.type=:number
defi[0] = d
streak.config = defi
streak.user = user
streak.save
