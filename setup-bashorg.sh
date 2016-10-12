# install fortune:
sudo apt-get install fortunes fortune-mod fortunes-min fortunes-ru

if [ -f ~/.cpan/CPAN/MyConfig.pm  ]; then
  sed -i "/make_install_arg/i \
  \ \ \'make_install_make_command\' \=\> q[sudo make]," ~/.cpan/CPAN/MyConfig.pm
  sed -i 's/.\/Build/sudo .\/Build/g' ~/.cpan/CPAN/MyConfig.pm
else echo "Please, configure cpan by running it, then run the script once again"
fi

# of configure cpan manually
# run the commands in the cpan shell

# o conf make_install_make_command "sudo make"
# o conf mbuild_install_build_command "sudo ./Build"
# o conf commit

# install necessary Perl modules (LWP::Simple and XML::RSS::Parser::Lite) by cpan:
perl -MCPAN -e "install LWP::Simple"
perl -MCPAN -e "install XMLRPC::Lite"
perl -MCPAN -e "force install SOAP::Lite"
perl -MCPAN -e "install XML::Parser::Lite"
perl -MCPAN -e "install XML::RSS::Parser::Lite"

# make Perl script which downloads bash.org.ru cites executable:
chmod 755 ~/bashorg/bashorg.pl

# make the script executable
chmod 755 ~/bashorg/bashorg.sh

# add the following line to ~/.bashrc:
echo "~/bashorg/bashorg.sh && fortune ~/bashorg" >> ~/.bashrc
