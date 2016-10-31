#!/usr/bin/perl
use strict;
use XML::RSS::Parser::Lite;
use LWP::UserAgent;
use encoding "utf-8";

my $ua = LWP::UserAgent->new();
my $data = $ua->get("http://bash.im/rss");
my $xdata = $data->decoded_content;
$xdata =~ s/<\!\[CDATA\[//g;
$xdata =~ s/]]>//g;
$xdata =~ s/<br>/\n/g;
$xdata =~ s/\&gt\;/\>/g;
$xdata =~ s/\&quot;/\"/g;

my $parser = XML::RSS::Parser::Lite->new();
$parser->parse($xdata);

for (my $i = 0; $i < $parser->count(); $i++) {
  my $item = $parser->get($i);
	print $item->get('description') . "\n\%\n";
}
