module Users
  class New
    class << self
      def call(options)
        email = options[:email]
        password = options[:password]
        User.create(email: email, password: password)
      end
    end
  end
end
