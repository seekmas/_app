require 'digest/md5'

  module Devise
    module Encryptable
      module Encryptors
        class Md5 < Base
          def self.digest(password, stretches, salt, pepper)
            password = Digest::MD5.hexdigest password
            Digest::MD5.hexdigest(password + salt)
          end

          def self.salt(stretches)
            (Digest::MD5.hexdigest (0...50).map { ('a'..'z').to_a[rand(26)] }.join)[0,6]
          end
        end
      end
    end
  end