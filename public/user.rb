require 'active_record'

ActiveRecord::Base.establish_connection( :adapter => 'mysql2',
:host => '192.241.183.121',
:username => 'wyncode',
:password => 'wyncode',
:database => 'wyncode' )

class User < ActiveRecord::Base
end

p User.all