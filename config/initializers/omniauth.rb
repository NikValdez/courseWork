OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, '305495082846-521e3fka2p7kudq27c4n649ql6m17k97.apps.googleusercontent.com', 'pxOSTcK23BGtQ3RmEvmcyCSy', {client_options: {ssl: {ca_file: Rails.root.join("cacert.pem").to_s}}}
end