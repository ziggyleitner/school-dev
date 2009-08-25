# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_school_session',
  :secret      => '9b8a39a88ebfbcf2d90ebd86d24732632070d5e193d924f734378fa405590a972c322fe8a2ebfb187eeca0d1a0be974b84bc82a44c90824533670ad06a9fe6b8'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
