# config valid for current version and patch releases of Capistrano
lock "~> 3.16.0"

set :application, "bookmygaddi_web"
set :repo_url, "git@github.com:devzila/bookmygaddi_web.git"
set :deploy_to, "/home/bookmygaddi"
set :linked_dirs, %w(tmp/pids tmp/sockets log public/system public/uploads)


after :deploy, "puma:stop"
after :deploy, "puma:start"