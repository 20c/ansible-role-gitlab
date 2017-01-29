
# GitLab

## Requirements

None.


## Role Variables

```yaml
gitlab_enabled: false
gitlab_package_name: gitlab-ce

gitlab_repo_disk: false

gitlab_external_url: "https://{{ gitlab_external_domain }}"
gitlab_external_email: "gitlab@{{ gitlab_external_domain }}"

gitlab_redirect_http_to_https: true
gitlab_ssl_certificate: "/etc/pki/tls/certs/{{ gitlab_external_domain }}/fullchain.pem"
gitlab_ssl_certificate_key: "/etc/pki/tls/certs/{{ gitlab_external_domain }}/privkey.pem"

gitlab_email_display_name: GitLab
gitlab_email_from: "{{ gitlab_external_email }}"
gitlab_email_reply_to: "{{ gitlab_external_email }}"

gitlab_omniauth_enabled: true
gitlab_allow_single_sign_on: true
gitlab_omniauth_block_auto_created_users: true
gitlab_omniauth_allow_single_sign_on: []
```


## Dependencies

None.

## Example Playbook

```yaml
- role: 20c.gitlab
  gitlab_external_domain: gitlab.example.com
  gitlab_external_email: gitlab@example.com
```


### License

Copyright 2017 20C, LLC

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this softare except in compliance with the License.
You may obtain a copy of the License at

   http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and


## Author Information

https://github.com/20c/ansible-role-gitlab
