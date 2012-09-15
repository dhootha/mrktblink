set :application, "map_app"
set :scm, :git
set :repository,  "git@github.com:AgencyProtocol/map_app.git"
set :branch, fetch(:branch, "master")
set :env, fetch(:env, "production")
set :scm_passphrase, "changeit"
set :runner, 'root'
set :use_sudo, false
set :user, 'reki'
set :password, 'karmaK00l2112'
# If you aren't deploying to /u/apps/#{application} on the target
# servers (which is the default), you can specify the actual location
# via the :deploy_to variable:
set :deploy_to, "/var/www/map_app/#{application}"

# If you aren't using Subversion to manage your source code, specify
# your SCM below:
# set :scm, :subversion

role :app, "50.116.37.104"
role :web, "50.116.37.104"
role :db,  "50.116.37.104", :primary => true


namespace :deploy do
  desc "Restarting mod_rails with restart.txt"
  task :restart, :roles => :app do
    run "chmod 777 #{current_path} -R"
    run "touch #{current_path}/tmp/restart.txt"    
  end
end


namespace :deploy do
 task :start, :roles => :app do
   run "chmod 777 #{current_path} -R"
   run "touch #{current_release}/tmp/restart.txt"
 end
end
