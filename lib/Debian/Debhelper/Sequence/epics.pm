#!/usr/bin/perl

use warnings;
use strict;
use Debian::Debhelper::Dh_Lib;

insert_before("dh_install", "dh_installepics");

insert_after("dh_perl", "dh_rtems");

insert_before("dh_strip", "dh_strip_rtems");
remove_command("dh_strip");

1
