# This adds Github oAuth security. (login with your github id.)
# TODO: More examples?
jenkins_script 'add_gh_authentication' do
  command <<-EOH.gsub(/^ {4}/, '')
    import jenkins.model.*
    import hudson.security.*
    import org.jenkinsci.plugins.*

    def instance = Jenkins.getInstance()

    def githubRealm = new GithubSecurityRealm(
      '#{node['jenkins-chef']['github']['githubWebUri']}',
      '#{node['jenkins-chef']['github']['githubApiUri']}',
      '#{node['jenkins-chef']['github']['CLIENTID']}',
      '#{node['jenkins-chef']['github']['CLIENT_SECRET']}'
      '#{node['jenkins-chef']['github']['oauthScopes']}',
    )
    instance.setSecurityRealm(githubRealm)

    def strategy = new #{node['jenkins-chef']['AuthorizationStrategy']}()
    instance.setAuthorizationStrategy(strategy)

    instance.save()
  EOH
end
