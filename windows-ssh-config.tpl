add-content -path c:/users/USER/.ssh/config =value @`

Host ${hostname}
  HostName ${hostname}
  User ${user}
  IdentityFile ${identityfile}
`
