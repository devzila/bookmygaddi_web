# Default branch is :master
set :branch, 'main'
set :resque_rails_env, 'production'

# Set Nginx config
set :nginx_server_name, "bookmygaddi"
set :nginx_config_name, "bookmygaddi_web"

# Rollbar config
# ================
set :rollbar_token, ENV['ROLLBAR_ACCESS_TOKEN']
set :rollbar_env, Proc.new { fetch :production }
set :rollbar_role, Proc.new { :app }

# The server-based syntax can be used to override options:
# ------------------------------------
server "139.59.28.53",
       user: "bookmygaddi",
       roles: %w{web app db},
       ssh_options: {
           user: "bookmygaddi", # overrides user setting above
           keys: %w(~/.ssh/id_rsa),
           forward_agent: false,
           auth_methods: %w(publickey)
           # password: "please use keys"
       }