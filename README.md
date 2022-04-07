<%- if devise_mapping.registerable? && controller_name != 'registrations' %>
  <%= link_to "Sign up", new_registration_path(resource_name) %><br />
<% end %>


  config.action_mailer.delivery_method = :smtp
  config.action_mailer.smtp_settings = {
    address: “smtp.gmail.com”,
    port: 587,
    domain: ENV[“GMAIL_DOMAIN”],
    authentication: “plain”,
    enable_starttls_auto: true,
    user_name: ENV[“GMAIL_USERNAME”],
    password: ENV[“GMAIL_PASSWORD”]
  }