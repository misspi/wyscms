# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_wyscms_session',
  :secret      => '881819ac04b3f64ec17b3e6baea9a12122eee4a44707123890b85fabc54a504ef4585c023fc6ae0bbdcce1f93200d1a335c4563cb7bacbf2bbc8f8ffd3274636'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
