require 'capistrano/setup'

require 'capistrano/deploy'

require 'capistrano/rbenv'
set :rbenv_type, :user
set :rbenv_ruby, '2.2.2'
require 'capistrano/bundler'
require 'capistrano/rails/assets'
require 'capistrano/rails/migrations'
require 'capistrano/sitemap_generator'
require "capistrano/scm/git"
install_plugin Capistrano::SCM::Git
Dir.glob('lib/capistrano/tasks/*.cap').each { |r| import r }
