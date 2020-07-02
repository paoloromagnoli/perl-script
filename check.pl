#!/usr/bin/perl
use strict;
use warnings;
my $file = '/home/centos/index.html';
open my $fh, '<', $file or die "Could not open '$file' $!\n";
while (my $line = <$fh>) {
        chomp $line;
        if($line =~ /Apache is installed by Ansible/){
                print "Succes!\n";
                exit 0;
        }
}
print "Failed!\n";
exit 1;
close($fh);
