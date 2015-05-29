Chef::Log.info("Running deploy/before_migrate.rb...")

# Symlinking config files etc.:
Chef::Log.info("Symlinking env files...")

link "#{release_path}/.env" do
  to "#{new_resource.deploy_to}/shared/config/env.env"
end

Chef::Log.info("Symlinking config files...")

%w(resque-pool.yml).each do |file|
  link "#{release_path}/config/#{file}" do
    to "#{new_resource.deploy_to}/shared/config/#{file}"
  end
end