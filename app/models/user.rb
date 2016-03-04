class User < ActiveRecord::Base

  def self.from_auth_hash(auth_hash)
    user = self.where(:nick     => auth_hash['info']['name'],
                      :provider => auth_hash['provider']).first_or_create
    return user
  end

end
