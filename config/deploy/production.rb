role :app, %w{nik@95.85.37.216}
role :web, %w{nik@95.85.37.216}
role :db, %w{nik@95.85.37.216}
# role :db, %w{nik@95.85.37.216}

set :rails_env, :production

server "95.85.37.216", user: "nik", roles: %w(app db web), primary: true

set :ssh_options, {
    keys: %w(~/.ssh/id_rsa),
    forward_agent: true,
    auth_methods: %w(publickey password),
    port: 4321
}
