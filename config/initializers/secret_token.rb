# Be sure to restart your server when you modify this file.

# Your secret key for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!
# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.

begin
  # use rake secret to generate a new secret in your secret_token file
  token_file = File.expand_path("../../secret_token_" + IzzysCrafts::Application.name.to_s.split("::").first.downcase, __FILE__)
  code = open(token_file).read
  IzzysCrafts::Application.config.secret_token = code
rescue LoadError, Errno::ENOENT => e
  raise "The secret token could not be loaded. Error: #{e}"
end
