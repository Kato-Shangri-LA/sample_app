# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
#SampleApp::Application.config.secret_key_base = '1ae647be9b206f55b48cee91a73ae6a12a46af0d19fbc15957139ac982adeba95928da6af0f746856a87753b9332b839b021a30c8b8f28eaf6e98e5d46ad5c8f'

require 'securerandom'

def secure_token
	token_file = Rails.root.join('.secret')
	if File.exist?(token_file)
		#Use the existing token.
		File.read(token_file).chomp
	else
		#Generate a new token and store it in token_file.
		token = SecureRandom.he(64)
		File.write(token_file, token)
		token
	end
end

Sample::Application.config.secret_key_base = secure_token