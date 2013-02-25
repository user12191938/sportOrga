###############################
#
# Capistrano Deployment on shared Webhosting by RailsHoster
#
# maintained by support@railshoster.de
#
###############################

def gemfile_exists? 
  File.exists? "Gemfile"
end

def gemfile_lock_exists?
  File.exists? "Gemfile.lock"
end

def rails_version
  if gemfile_exists? 
    rails_v = (Proc.new {
      file = File.new("Gemfile", "r")
	  while (line = file.gets)
        if line =~ /^\s*gem\s+[\"\']rails[\"\'].+/
          version = line.scan(/(\d+)\.(\d+)\.(\d+)/).first.map {|x| x.to_i}
        end
      end
      file.close
      version
    }).call
  else 
    rails_v = nil
  end
  return rails_v
end

def rails_version_supports_assets?
  rails_v = rails_version
  return rails_v != nil && rails_v[0] >= 3 && rails_v[1] >= 1
end

if rails_version_supports_assets?
  require 'bundler/capistrano'
end

#### Use the asset-pipeline

if rails_version_supports_assets?
  load 'deploy/assets'
end

#### Personal Settings
## User and Password

# user to login to the target server
set :user, "user12191938"

# password to login to the target server
set :password, "r53c7aw5tw"

# allow SSH-Key-Forwarding
set :ssh_options, { :forward_agent => true }

## Application name and repository

# application name ( should be rails1 rails2 rails3 ... )
set :application, "rails1"

# repository location
set :repository, "git@github.com:user12191938/sportOrga.git"

# branch
set :branch, fetch(:branch, "login")

# :subversionn or :git
set :scm, :git
set :scm_verbose, true

#### System Settings
## General Settings ( don't change them please )

# run in pty to allow remote commands via ssh
default_run_options[:pty] = true

# don't use sudo it's not necessary
set :use_sudo, false

# set the location where to deploy the new project
set :deploy_to, "/home/#{user}/#{application}"

# live
role :app, "ny.railshoster.de"
role :web, "ny.railshoster.de"
role :db,  "ny.railshoster.de", :primary => true


############################################
# Default Tasks by RailsHoster.de
############################################
namespace :deploy do

desc "Repair Bundler"
task :repair_bundler, :roles => :app do
run "sed -i 's/-x86-mingw32//' #{release_path}/Gemfile.lock"
end

  desc "Restarting mod_rails with restart.txt"
  task :restart, :roles => :app, :except => { :no_release => true } do
    run "touch #{current_path}/tmp/restart.txt"
  end

  desc "Additional Symlinks ( database.yml, etc. )"
  task :additional_symlink, :roles => :app do
    run "ln -fs #{shared_path}/config/database.yml #{release_path}/config/database.yml"
  end

end

if rails_version_supports_assets?
  before "deploy:assets:precompile", "deploy:additional_symlink"
  after "deploy:create_symlink", "deploy:migrate"
else
  after "deploy:create_symlink", "deploy:additional_symlink", "deploy:migrate"
end

before "bundle:install","deploy:repair_bundler"
