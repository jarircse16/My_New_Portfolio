#!/usr/bin/perl

use strict;
use warnings;

# Define the path to the messages folder
my $messages_folder = "messages/";

# Check if the messages folder exists; create it if not
unless (-e $messages_folder && -d $messages_folder) {
    mkdir $messages_folder or die "Unable to create messages folder: $!";
}

# Get form input
my $name    = param('name');
my $email   = param('email');
my $message = param('message');

# Generate a unique filename based on timestamp
my $timestamp = time();
my $filename  = "$messages_folder/message-$timestamp.txt";

# Open the file for writing
open my $file, '>', $filename or die "Unable to open file: $!";

# Write message data to the file
print $file "Name: $name\n";
print $file "Email: $email\n";
print $file "Message:\n$message\n";

# Close the file
close $file;

# Print a response
print "Content-type: text/html\n\n";
print "<html><body>";
print "<h2>Message Sent</h2>";
print "Thank you for your message. We will get back to you shortly.";
print "</body></html>";

sub param {
    my $param = shift;
    my $value = $ENV{'QUERY_STRING'};

    if (defined $value && $value =~ /$param=([^&]+)/) {
        return url_decode($1);
    } else {
        return "";
    }
}

sub url_decode {
    my $string = shift;
    $string =~ tr/+/ /;
    $string =~ s/%([a-fA-F0-9]{2})/chr(hex($1))/eg;
    return $string;
}
