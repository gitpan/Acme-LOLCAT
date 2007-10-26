#!/usr/bin/perl

use strict;
use warnings;

use Test::More qw/no_plan/;

use_ok( 'Acme::LOLCAT' );

my $p;

my $YOUR = qr/Y?(?:O|U)?(?:A|R)(?:E|R)?/;
my $Z    = qr/(?:S|Z)/;

like( $p = translate( "can i please have a cheeseburger?" ),
      qr/I CAN HA$Z CHEEZBURGR\?/,
      "translates cheeseburger phrase: $p" );

like( $p = translate( "you're right, i want more pickles." ),
      qr/$YOUR RITE, I WANT$Z MOAR PICKLE$Z/,
      "translates pickle phrase: $p" );

like( $p = translate( "I'm in your bathroom, reading your magazine" ),
      qr/IM IN $YOUR BATHROOM, READIN$Z? $YOUR MAGAZINE/,
      "translated magazine phrase: $p" );

like( $p = translate( "i'm in your world, planning your domination" ),
      qr/IM IN $YOUR WH?(?:U|I)?RR?LD, PLANNIN$Z? $YOUR DOMINASHUN/,
      "translated domination phrase: $p" );

like( $p = translate( "i think that is a nice bucket" ),
      qr/I THINK THAT AR (?:TEH )?NICE BUKKIT/,
      "translated bucket phrase: $p" );

like( $p = translate( "hello, i want to ask you a question" ),
      qr/O(?:HS?)? HAI, I WANT$Z (?:TO?|2) ASK Y?(?:U|OO|OU$Z) Q(?:W|U)ES(?:J|SH)UN/,
      "translated question phrase: $p" );

like( $p = translate( "I'm in your bed and breakfast, eating your sausages" ),
      qr/IM IN $YOUR BED AND BREKKFAST, EATIN$Z? $YOUR SAUSUJ$Z?/,
      "translated sausage phrase: $p" );

like( $p = translate( "free parties, events & more! what's happening?  who's going?" ),
      qr/FREE PARTIE$Z?, EVENT$Z? & MOAR! WH?UT$Z HAPPENIN$Z?\? HOO$Z GOIN$Z?\?/,
      "translated party ad text: $p" );
