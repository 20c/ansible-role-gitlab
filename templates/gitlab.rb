
external_url "{{ gitlab_external_url }}"
nginx['redirect_http_to_https'] = {{ gitlab_redirect_http_to_https | lower }}
nginx['ssl_certificate'] = "{{ gitlab_ssl_certificate }}"
nginx['ssl_certificate_key'] = "{{ gitlab_ssl_certificate_key }}"

gitlab_rails['gitlab_email_display_name'] = "{{ gitlab_email_display_name }}"
gitlab_rails['gitlab_email_from'] = "{{ gitlab_email_from }}"
gitlab_rails['gitlab_email_reply_to'] = "{{ gitlab_email_reply_to }}"

# external auth
gitlab_rails['omniauth_enabled'] = {{ gitlab_omniauth_enabled | lower }}
# allows you to specify the providers you want to allow to automatically create an account. It defaults to false. If false users must be created manually or they will not be able to sign in via OmniAuth.
gitlab_rails['allow_single_sign_on'] = {{ gitlab_allow_single_sign_on | lower }}
# Locks down those users until they have been cleared by the admin (default: true).
gitlab_rails['omniauth_block_auto_created_users'] = true

# https://docs.gitlab.com/ce/integration/omniauth.html#supported-providers
gitlab_rails['omniauth_allow_single_sign_on'] = {{ gitlab_omniauth_allow_single_sign_on }}

# force these providers to be external only (can manually update account later)
#gitlab_rails['omniauth_external_providers'] = ['twitter', 'google_oauth2']
