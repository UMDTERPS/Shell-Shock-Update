Shell-Shock-Update
==================
This will update bash bug

![alt tag](http://1-ps.googleusercontent.com/xk/N9L3X-V9UrL_eUPKLbuc-HPsGa/www.stevejenkins.com/stevejenkins.com/blog/wp-content/uploads/2014/09/620x375xshellshock.jpg.pagespeed.ic.q4z8ls0VZbEV9gnL6u8k.webp)


How to check for shell shock bug
Exploit 1 (CVE-2014-6271)

``` env x='() { :;}; echo vulnerable' bash -c "echo this is a test"```

Even after udpating it may not work

Exploit 2 (CVE-2014-7169)

```cd /tmp; env X='() { (a)=>\' bash -c "echo date"; cat echo```

Exploit 3

```env -i X=' () { }; echo hello' bash -c 'date'```

Exploit 4 (CVE-2014-7186)

```bash -c 'true <<EOF <<EOF <<EOF <<EOF <<EOF <<EOF <<EOF <<EOF <<EOF <<EOF <<EOF <<EOF <<EOF <<EOF' || echo "CVE-2014-7186 vulnerable, redir_stack"```

Exploit 5 (CVE-2014-7187)

```(for x in {1..200} ; do echo "for x$x in ; do :"; done; for x in {1..200} ; do echo done ; done) | bash || echo "CVE-2014-7187 vulnerable, word_lineno"```

Show BASH version

```bash --version```

Use the "shell_shock_update.sh" scrip to back it up

``` ./shell_shock_update.sh ```



