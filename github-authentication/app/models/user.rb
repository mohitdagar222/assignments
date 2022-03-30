class User < ApplicationRecord
      def self.from_omniauth(auth)
        # Creates a new user only if it doesn't exist
        where(email: auth.info.email).first_or_initialize do |user|
            user.provider = auth['provider']
            user.uid = auth['uid']
            user.nickname = auth['info']['nickname']
            user.name = auth['info']['name']
            user.email = auth['info']['email']
            user.image_url = auth['info']['image']
            user.token = auth['credentials']['token']
        end
      end
end
