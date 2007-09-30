#!/usr/bin/perl

use strict;
use warnings;

use Test::More qw/no_plan/;

use_ok( 'Acme::LOLCAT' );

my $p;

like( $p = translate( "can i please have a cheeseburger?" ),
      qr/I CAN HAZ CHEEZBURGR\?/,
      "translates cheeseburger phrase: $p" );

like( $p = translate( "you're right, i want more pickles." ),
      qr/Y?(?:O|U)?RE? RITE, I WANTZ MOAR PICKLEZ/,
      "translates pickle phrase: $p" );

like( $p = translate( "I'm in your bathroom, reading your magazine" ),
      qr/IM IN Y?(?:O|U)?RE? BATHROOM, READIN Y?(?:O|U)?RE? MAGAZINE/,
      "translated magazine phrase: $p" );

like( $p = translate( "i'm in your world, planning your domination" ),
      qr/IM IN Y?(?:O|U)?RE? WH?(?:U|I)?RR?LD, PLANNIN Y?(?:O|U)?RE? DOMINASHUN/,
      "translated domination phrase: $p" );

like( $p = translate( "i think that is a nice bucket" ),
      qr/I THINK THAT AR TEH NICE BUKKIT/,
      "translated bucket phrase: $p" );

like( $p = translate( "hello, i want to ask you a question" ),
      qr/OH HAI, I WANTZ (?:TO?|2) ASK YU QWESJUN/,
      "translated question phrase: $p" );

like( $p = translate( "I'm in your bed and breakfast, eating your sausages" ),
      qr/IM IN Y?(?:O|U)?RE? BED AND BREKKFAST, EATIN Y?(?:O|U)?RE? SAUSUJZ/,
      "translated sausage phrase: $p" );

like( $p = translate( "free parties, events & more! what's happening?  who's going?" ),
      qr/FREE PARTIEZ, EVENTZ & MOAR! WUTZ HAPPENIN\? HOOZ GOIN\?/,
      "translated party ad text: $p" );
