
$grammar{"NP VP"}  = ["S"];
$grammar{"V NP"}   = ["VP"];
$grammar{"VP PP"}  = ["VP"];
$grammar{"NP PP"}  = ["NP"];
$grammar{"P NP"}   = ["PP"];
$grammar{"John"}   = ["NP"];
$grammar{"plays"}  = ["V"];
$grammar{"soccer"} = ["NP"];
$grammar{"at"}     = ["P"];
$grammar{"school"} = ["NP"];

@start = ("S");

$prob{"S -> NP VP"} = 1;
$prob{"VP -> V NP"} = 10/13;
$prob{"VP -> VP PP"} = 3/13;
$prob{"PP -> P NP"} = 1;
$prob{"NP -> NP PP"} = 0.04;
$prob{"NP -> John"} = 0.4;
$prob{"NP -> soccer"} = 0.4;
$prob{"NP -> school"} = 0.16;
$prob{"V -> plays"} = 1;
$prob{"P -> at"} = 1;

@input = (John, plays, soccer, at, school);

1;

