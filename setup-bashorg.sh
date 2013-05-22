# install fortune:
sudo apt-get install fortunes fortune-mod fortunes-min fortunes-ru

# make sure you have configured cpan with root privileges to install modules. if no, configure:
perl -MCPAN -e o conf make_install_make_command "sudo make"
perl -MCPAN -e o conf mbuild_install_build_command "sudo ./Build"
perl -MCPAN -e o conf commit

# install necessary Perl modules (LWP::Simple and XML::RSS::Parser::Lite) by cpan:
perl -MCPAN -e "install LWP::Simple"
perl -MCPAN -e "install XML::RSS::Parser::Lite"

# make Perl script which downloads bash.org.ru cites executable:
chmod 755 ~/bashorg/bashorg.pl

# make the script executable
chmod 755 ~/bashorg/bashorg.sh

# add the following line to ~/.bashrc:
echo "~/bashorg/bashorg.sh && fortune ~/bashorg" > ~/.bashrc
