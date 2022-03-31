class User < ApplicationRecord
    def self.from_omniauth(auth)
        # Creates a new user only if it doesn't exist
        where(uid: auth['uid']).first_or_initialize do |user|
            user.provider = auth['provider']
            user.uid = auth['uid']
            user.name = auth.extra.access_token.params["screen_name"]
            user.profile_image = auth.info.image
            user.token = auth.credentials.token
            user.secret = auth.credentials.secret
        end
    end
end
