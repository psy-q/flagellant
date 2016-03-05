class User < ActiveRecord::Base

  def self.from_auth_hash(auth_hash)
    user = self.where(:provider => auth_hash['provider'],
                      :uid      => auth_hash['uid'].to_s).first_or_create
    user.nick = auth_hash['info']['name']
    user.save
    return user
  end

end
