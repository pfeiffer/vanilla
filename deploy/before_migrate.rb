Chef::Log.info("Running deploy/before_migrate.rb...")

# Symlinking config files etc.:
Chef::Log.info("Symlinking env files...")

link "#{release_path}/.env" do
  to "#{new_resource.deploy_to}/shared/config/env.env"
end