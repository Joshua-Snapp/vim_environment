function! PUPPETFILETOATOMURL()
  silent! v/mod.\+\/\|github\.ncsu\.edu/d
  silent! %s/^.\+@//
  silent! %s/'\|"//g
  silent! %s/,.*//
  silent! %s/\s*$//
  silent! %s/:/\//
  silent! %!sort -u
  silent! %s/^mod\s//
  silent! %s/\.git$//
  silent! g/github/s/^/https:\/\//
  silent! %s/puppetlabs\/\zs/puppetlabs-/
  silent! v/ncsu\|puppetlabs/s/\/\zs\ze\w\+$/puppet-/
  silent! v/https/s/^/https:\/\/github.com\//
  silent! %s/$/\/releases.atom
  silent! norm! G
endfunction

command! PuppetFileToUrl call PUPPETFILETOATOMURL()
