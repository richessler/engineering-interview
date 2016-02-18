class Users::New
  def self.call(options)
      User.create(handle: options[:handle], email: options[:email], encrypted_password: options[:encrypted_password])
  end
end