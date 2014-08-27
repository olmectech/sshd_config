class sshd_config {
sshd_config {
  # A top-level parameter
  'RSAAuthentication':
    value  => 'yes';

  # Use default value for PermitEmptyPasswords
  'PermitEmptyPasswords':
    ensure => absent;

  'Set PermitRootLogin for example.com':
    ensure    => present,
    key       => 'PermitRootLogin',
    condition => 'Host example.com',
    value     => 'yes';

  'AcceptEnv':
    ensure => present,
    value  => ['LANG', 'LC_*', 'FOO_BAR'];
}
}
