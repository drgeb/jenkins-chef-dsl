# Suffix of the recipe that implements your auth.
# Eg: github, ldap, etc
default['jenkins-chef']['auth']                  = 'github' #eg: 'github', 'basic'
default['jenkins-chef']['AuthorizationStrategy'] = 'FullControlOnceLoggedInAuthorizationStrategy' #eg: 'FullControlOnceLoggedInAuthorizationStrategy'

# Github auth example:
#  Create a 'Developer Application' on Github.
#  https://github.com/settings/applications
#  Works for Github Enteprise too!
default['jenkins-chef']['github']['githubWebUri']         = 'https://github.com'
default['jenkins-chef']['github']['githubApiUri'] = 'https://api.github.com'
default['jenkins-chef']['github']['CLIENTID'] = 'FIXME'
default['jenkins-chef']['github']['CLIENT_SECRET'] = 'FIXME'
default['jenkins-chef']['github']['oauthScopes'] = 'read:org'

# SCM details
default['jenkins-chef']['git']['name']  = 'jenkins'
default['jenkins-chef']['git']['email'] = 'jenkins@example.com'

# Ruby manager
default['jenkins-chef']['ruby-manager'] = 'rvm' #eg: rvm. TODO: Rbenv

# Oracle JDKs
default['java']['oracle']['accept_oracle_download_terms'] = true

# Install chefdk?
default['jenkins-chef']['chefdk'] = true
