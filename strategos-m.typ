#import "format.typ": format-modern, modern-frontispiece, logo, subheader, frac, alt-fill

#set document(title: [Strategos M])

#set page(
    paper: "us-letter",
)

#set terms(separator: [: ])

#show: format-modern

#counter(page).update(0)

#modern-frontispiece

#pagebreak()

#show outline.entry.where(
  level: 1
): it => {
    v(0.9em, weak: true)
    strong(it)
}

#[
    #set page(margin: 1cm)
    #outline(indent: 1em)

    #v(1fr)

    #align(left)[

        October 2024 draft. Copyright © 2024 japanoise,
        licensed CC-BY-SA 4.0.

        *The Olivia Hill Rule:* If you're a fascist, you're not
        welcome to play this game. It's against the rules. If you're
        reading this and thinking "you just call everyone you
        disagree with a fascist," then you're probably a fascist, or
        incapable of drawing inferences from context and acknowledging
        a dangerous political climate that causes the oppressed to be
        hyperbolic. Don't play this game.  Heal yourself.  Grow.
        Learn.  Watch some Mr. Rogers' Neighborhood or something.
    ]
]

#pagebreak()

#set page(
    columns: 2,
    margin: (x: 1cm, bottom: 2cm, top: 1cm)
)

= Introduction

The medieval period was a vast span of time, and a brief rulebook
such as this can contain only so much historical detail. The aim,
instead, is to provide a solid foundation for the reader to craft
their own battles and campaigns.  The rules are intended to strike
a balance between ease of understanding, playability, and
flexibility --- realism is important, but is not the primary aim.

Still, these rules veer more towards simulation than specifically
providing a "fair" challenge, or attempting to provide a medium of
storytelling.  Scholars of the history of wargames will recognize in
them the skeleton of Charles A. L. Totten's Strategos, hence the name;
and of course, the simplifications and clarifications of that
venerable system from David Wesely.  The former was a serious military
training tool, intended to teach real tactics to young officers.  It
is the author's intention that your medieval battles and campaigns
with _Strategos M_ will be similarly a real exercise in the tactics of
the period.

= The Referee

The key innovation separating miniature wargames (and their cousins in
the "Role-Playing Game" hobby) from board games such as chess, or
board wargames, is the introduction of the *Referee*.  The
introduction of a neutral third party elevates the game from a "Rigid
Kriegspiel" into a "Free Kriegspiel."  As the interpreter & voice of
the rules, the referee can allow the players more inventiveness and
variety during gameplay.  Players can attempt strategies which were
not thought of during the drafting of the written rules; the referee
then provides a neutral arbiter who can narrate the consequences of
those strategies on the game world.

*In general, any strategy which could feasibly work in real life
should also work in the game, even if not covered by the rules.*

The referee's duties are many, but in particular, she must take care
to:

+ Give the players their orders, if necessary.
+ Set the conditions for victory, for both sides.
+ Plan the terrain of the battlefield, as well as noting in advance
  any questions that may be asked during gameplay.
+ Simulate the effects of any non-combatants or important non-combat
  environmental conditions encountered during gameplay (for example,
  the effects of spies or assassins, the character of any peasants
  found or prisoners taken, the nature of stolen documents, etc.)
+ Provide a witness to actions taken while the opponent is away.
+ Provide an arbiter and mediator for disputes between the players;
  she should provide each side the opportunity to *briefly* state his
  case, and then come down on one side or the other, or compromise
  (using Table J or K, for example).  Should all sides agree, the results
  of the dispute can optionally be noted down in the rules at the end
  of the game to form a precedent in future.
+ Manage records --- of casualties, morale, &c.

Should the referee make a poor call, or the players forget a rule and
the referee forget to apply it, she may correct herself --- but if
several turns have passed, she also has the option to put it down to
chance; a tactical blunder, unusual courage, cowardice, or the likes.

= Scale

+ Either 28---32mm or 15mm miniature figures are used.
+ If 28---32mm figures are used, 1" on the table = 10 meters/10 yards in-game.
+ If 15mm minis are used, 1" in the rules = 1cm on the table.
+ One contour line or ½" of terrain height = 5 meters/yards.
+ One figure is at most 20 men.
+ One game turn = 1 minute in-game.

It is recommended a 5' by 9' table is used; or, with 15mm figures,
76cm by 137cm is sufficient.

= Dice

Only ordinary six-sided dice (d6) are used.  The use of a twelve-sided
die (d12) can make rolling on Table J easier, but a d66 value is also
provided.  To roll 1d66, roll one die for the tens digit, and another
for the units, yielding a result of 11---66.

#pagebreak()

= Turn Sequence

+ The referee conveys any messages or information received during the
  turn to the players.  In private, the players inform her of any
  plans they have.
+ The players write out their orders for the turn.
+ If any archers or arbalists are loosing, ranges must be measured now.
+ If charges have been ordered, then distances should be measured and
  it should be determined whether melees will occur or which units will
  be hit by missiles.
+ Movement occurs simultaneously.  Troops must follow their orders as
  they were written.  This is also where the referee moves troops that
  are compelled to move as a result of breaking morale, effects of
  melee, effects of missiles, etc. in previous turns.
+ The effects of missile fire are carried out.
+ Any effects on morale caused so far are resolved.
+ Further missile volleys/morale effects are resolved.
+ Melees are resolved.  If the result on Table T indicates a retreat:
    - If the melee was the result of a charge, the retreat/pursuit is
      carried out immediately;
    - Otherwise, retreat/pursuit is carried out next turn at step 5.

The referee may choose to resolve steps 5---9 in stages for
isolated areas of an action.

= Writing Orders

Players compose their list of orders from the list below.  Note that
some maneuvers require training, and units may (at the referee's
discretion) ignore or even defy their orders, due to poor training or
discipline.  Orders require time to complete; the time taken is noted.

== General Orders

/ Advance _x_ Inches: Time taken proportional to movement + speed.

/ Advance Towards _x_: Where _x_ is a landmark.

/ Charge _x_: Where _x_ is a landmark or enemy. Move at
  maximum speed, as for doubletime or gallop.

/ Rest: Spend the turn taking no action (recovering).  Units must rest
  after 12 turns; quicktime/trot turns count as 2, doubletime/gallop
  turns, turns with a charge, or turns in melee count as 3.

== Infantry Orders

Infantry moves up to 6" per turn (9" quicktime; 12" doubletime);
except light infantry, which moves up to 9" per turn (13.5" quicktime;
18" doubletime).

/ Quicktime: Movement takes ⅔ time; must be first order.  Roll morale
  once, halfway through the turn.  No effect on charges.

/ Doubletime: Movement takes ½ time; must be first order.  Roll morale
  once a third through the turn, and once two thirds through the turn.

/ About Face: Units turn through 180#sym.degree.

=== Line Formation

/ Form Column Left/Right: (⅑ turn) Units turn to their left or right
  and form a column.

/ Left/Right Wheel, _x_ Inches: Formation rotates about the bottom
  left/right corner of left/rightmost unit, _x_ inches at right/leftmost
  unit. Also *Left/Right Wheel To _x_* where _x_ is a landmark.

Marching backwards (*Retire* or *Back Left/Right Wheel*) is at half
speed, and requires training.

/ Oblique March Left/Right, _x_ Inches: March at a 45#sym.degree angle
  to left/right, _x_ inches. Also *Oblique March To _x_,* where
  _x_ is a landmark.

/ Extend To Left/Right _x_ Inches: Left/rightmost remains in place;
  right/leftmost moves to right/left _x_ inches; others spaced
  evenly. Open formation.

=== Column Formation

/ Move _x_ Inches, _y_: Where _y_ is a compass direction. Leaders turn
  about the inside, and the column follows.

/ Move _x_ Inches Along _y_: Where _y_ is cover, a road, or somesuch.

/ Move To/Into _x_: Where _x_ is a landmark

/ Follow _x_, _y_ Inches Behind: Where _x_ is a friendly column.

/ Form Line Left/Right: Units turn left/right and form a line.

/ Extend To Left/Right _x_ Inches: Leader remains in place; rearguard
  moves to left/right _x_ inches; other units are spaced evenly
  between. Open formation.

=== Open Formation

Infantry in open formation may move as if in a line formation.

/ Close To Line Left/Right: Form a line; time taken is same as for an
  Extend To Left/Right.

/ Close To Column Left/Right: Form a column; time taken is same as for
  an Extend To Left/Right.

/ Form Line To Left/Right: ($1/12$ turn per unit) Leader pivots around
  left/right front corner. Following units move forward in a column
  and pivot to form a line.

== Cavalry Orders

Cavalry moves up to 12" per turn (24" trot; 36" gallop).  Otherwise
they move as do infantry in corresponding formations (line, column, or
open).

/ Trot: Movement takes ½ time; must be first order.  Roll morale once,
  halfway through the turn.  No effect on charges, which happen at a
  gallop.

/ Gallop: Movement takes ⅓ time; must be first order.  Roll morale
  once a third through the turn, and once two thirds through the turn.
  Charges are automatically a gallop action.

/ Dismount/Mount: (#frac(1, 4) turn).  Unit fights & moves as
  appropriate infantry.  #frac(1, 4) must tend to
  horses.

== Missile Orders

Missile infantry moves as does light infantry (and is considered as
such for melee).  Horse archers move as does other cavalry.

/ Take Aim: (Half a turn) Lowers rate of fire, but prepared missiles
  are more deadly.

/ Loose: (Half a turn) Loose missiles at targets within a
  90#sym.degree arc, that is 45#sym.degree to left or right of
  straight ahead.  Archers may only loose twice if they do not move or
  melee in the rest of their turn.  Only the first two rows of a
  column may fire; for all units to fire, they must be in line
  formation.

/ Reload: (Half a turn) Arbalists (crossbow users) must reload before
  firing again.

/ Split-Move Loose: Horse archers and certain elite archers may move
  at half speed and fire at the same time, and so are able to loose
  twice a turn while moving.  Order given before any movement orders;
  loose at the start and halfway through the turn, assuming no
  melees.

= Terrain

Terrain affects movement and visibility.

== Slopes

As noted above, contour lines show 5 meter/5 yard intervals; summits
of hills are shown with a dot and crests of ridges with a line.

The steepness of slope is indicated, naturally, by the closeness of
the contour lines:

/ Gentle Slope: More than 2" between contours. No movement penalty.

/ Moderate Slope: 1"---2" between contours. Movement at ½
  speed. Wagons, siege engines, etc. must move directly up or down,
  not along the face.

/ Steep: ½"---1" between contours. Movement at ¼ speed, and only
  dismounted cavalry & infantry in open formation.

/ Vertical: Less than ½" between contours. No entry.

== Woods

Near to cities and towns, woods are *Open* --- there is little
underbrush as it is collected for firewood.  Movement is unrestricted,
except that troops may not maintain line formation.

*Thick* woods have underbrush, and for these movement is at ½ speed.
 Siege engines and wagons may not pass unless a ranger cuts a trail
first.

*Heavy* or *Dense* woods include rainforest and forest in tropical
regions.  Only Cavalry and Infantry in open formation may pass, moving
at ¼ speed.

== Barriers

Hedges, ditches, stone walls and the like completely block vehicles.

Trained cavalry may jump over barriers of less than 3'.

Infantry may not cross obstacles 5' or more tall.  Light infantry can
cross smaller obstacles instantly; others must take one turn.

== Fords

Fords must be crossed in a column, unless they are very shallow. The
maximum depths of a ford that can be crossed depends on the troop
type:

/ Infantry: 3' for fast current, up to 4' for slow current.

/ Cavalry: 3'6"---4'4"

/ Vehicles: 2'4"

== Abatis/Slash

Entanglement of felled trees, used to prevent troop movements.
Impassable if defended; otherwise, only light infantry in open order
may cross. An abatis is one emplacement and takes a turn to cross;
slash is essentially several abatises together, and the referee must
determine how long it takes to cross; which depends on the depth.

= Eliteness

Troops are ranked by how experienced and well-trained they are.
Troops at eliteness level 1 or 2 require a year's training to advance
a level; level 3 and onwards are hardened by one level in every battle
they survive where they do one or more of:

- Engage in melee
- Suffer 10% or more losses
- Defeat an enemy solely with missiles

The eliteness levels are:

+ *Green* (level 1) --- Peasants.
+ *Experienced* (level 2) --- Trained militia.
+ *Regular* (level 3) --- Men at arms.
+ *Veteran* (level 4) --- Elite men at arms; knights.
+ *Campaigner* (level 5) --- Elite knights.

A combination of equipment and training determines how effective
troops are in combat; see Table S.

#align(center,
    image(
        "img/KnightWithLance.svg",
    )
)

= Morale

*Morale* is a measure both of troops' emotional state and of their
relative disorganization.  Each morale state other than *Normal* has a
duration; after which, it will move towards *Normal*. For example,
after 6 turns, troops *In Disorder* become *Badly Shaken;* after two
turns, troops *Flushed with Victory* become *Normal*.

#table(
    align: (
        left,
        center,
        left,
        left,
    ),
    columns: (
        7em,
        auto,
        7.2em,
        auto,
    ),
    table.header(
        table.cell()[Class],
        table.cell()[Lasts],
        table.cell(align: center)[Melee],
        table.cell(align: center)[Missile],
    ),
    fill: none,
    stroke: none,
    gutter: auto,
    row-gutter: .86em,

    [*Enthusiastic*],
    [1 turn],
    [#(sym.times)5 (Infantry)\
        #(sym.times)10 (Cavalry)],
    [#(sym.times)#frac(4, 5)\
        #(sym.times)1],

    [*Flushed with Victory*],
    [2 turns],
    [#(sym.times)3 (Infantry)\
        #(sym.times)6 (Cavalry)],
    [#(sym.times)1],

    [*Normal*],
    [Indefinite],
    [#(sym.times)1 (both)],
    [#(sym.times)1],

    [*Somewhat Shaken*],
    [1 turn],
    [#(sym.times)#frac(2, 3) (Infantry)\
        #(sym.times)#frac(1, 3) (Cavalry)],
    [#(sym.times)#frac(1, 2)],

    [*Shaken*],
    [2 turns],
    [#(sym.times)#frac(1, 2) (Infantry)\
        #(sym.times)#frac(1, 4) (Cavalry)],
    [#(sym.times)#frac(1, 3)],

    [*Badly Shaken*],
    [3 turns],
    [#(sym.times)#frac(1, 3) (Infantry)\
        #(sym.times)#frac(1, 6) (Cavalry)],
    [#(sym.times)#frac(1, 5)],

    [*In Disorder*],
    [6 turns],
    [#(sym.times)#frac(1, 5) (Infantry)\
        #(sym.times)#frac(1, 10) (Cavalry)],
    [#(sym.times)#frac(1, 10)],

    [*In Great Confusion*],
    [10 turns],
    [#(sym.times)#frac(1, 10) (Infantry)\
        #(sym.times)#frac(1, 20) (Cavalry)],
    [#(sym.times)0],

    [*Routed*],
    [20 turns],
    [#(sym.times)0 (both)],
    [#(sym.times)0],

    [*Missing*],
    [Gone for the day. #frac(1, 2) will return.],
    [#(sym.times)0 (both)],
    [#(sym.times)0],
)

+ *Morale Roll:* One die is thrown.  The troops go down one morale
  level if the roll is _above_ their eliteness level.
+ Morale goes up when winning melees, or (if below *Normal*) after
  turns spent reorganizing.  Turns where troops move faster than
  normal or are involved in melee do not count towards reorganizing.
+ Morale can go down after melees, and as the result of missile
  casualties.  Roll once per 5% original force lost.
+ Morale goes up for attackers if defenders fall back _before_ an attack.

#pagebreak()

= Possibilities

Under pressure, it is possible troops disobey their orders and act on
their own initiative instead. Listed on the *Table of Possibility* are
common situations in which it is possible troops disobey their orders
(or where the question arises whether or not they will).  Table R and
Table S modify these chances, and dice (see *Probabilities*) can be
used to find the outcome.

== Table of Possibilities

#set enum(numbering: "1.A.")

1. When under missile attack and suffering a morale drop due to losses:
    + Can troops advance?\
        *Infantry:* 2:1 No\
        *Cavalry:* No, but they may charge.
    + Can troops charge?\
        *Yes*, if a clear path to charge is available.
    #enum.item[
        Can they carry out another operation or move in a different
        direction (neither directly away from nor towards the attacking
        missile troops)?\
        *Yes,* depending on losses taken that turn; see table
         below. (multiplied by melee modifier as per the *Morale*
         section).

        #table(
            align: center,
            fill: none,
            stroke: none,
            columns: (
                10em,
                5em,
            ),
            table.header(
                [Losses],
                [Odds],
            ),
            [5%],  [2:1 *Yes*],
            [10%], [3:2 *Yes*],
            [20%], [50/50],
            [25%], [3:2 *No*],
            [33%], [2:1 *No*],
            [50%], [3:1 *No*],
            [67%], [4:1 *No*],
        )
    ]
    + May troops fall back to cover or directly away?\
        *Yes,* so long as they can move.
    + May troops return missile fire?
        - Infantry: \
            *Line:* 2:1 no; 4:1 no when attacked from flank or
            rear.\
            *Column:* 4:1 no; must reform to loose.\
            *Open:* 50/50.
        - Cavalry:\
            *If they need to dismount first:* 4:1 no\
            _otherwise:_\
            *If in column:* 8:1 no\
            *If in line:* 4:1 no\
            *If open:* 2:1 no.

+ When two groups of missile troops are firing upon one another, which group must retreat?

    Check when making a morale drop throw. Use case 1E, with
    multiplier 1---5 corresponding to troop eliteness.
+ When _surprised_ and hit by missiles, will troops drop to *In Disorder?*\
    If at least 5% losses are caused --- 5:1 yes.
+ Will troops refuse to enter a narrow passage which the enemy does
  not occupy but has under cover fire?\
  *Infantry:* 2:1 yes\
  *Cavalry:* 4:1 yes

Possibility 4 has a special case --- if enemy cavalry are posted
within 25" of the exit of the passage, and are poised to attack, odds
are 5:1 against troops leaving the passage.  Either a spear formation
or friendly missile volley will break this restriction.  Troops which
move through the passage unmolested do not need to check odds.

A passage is defined as any space troops cannot pass through with more
than two figures abreast.  This includes spaces so specifically
designed on the battlefield as well as those that are created by
player action, environmental circumstance, and so forth.  Examples are
bridges, corridors, breaches, alleyways, bridges, fords, etc.


= Visibility

Friend and foe can be distinguished at about 1000 meters (100").

Individual troops can be spotted at 1600 meters (160").

Formations of troops can be seen 3200 meters (320") away.

Being higher up allows troops to see over lower obstacles, depending on
the distances involved.

== Woods

- Troops outside a wood cannot see troops inside it.
- Troops inside or at the edge of an *open* wood may see up to 15"
  inside the wood.
- Troops can see at most 5" into another wood.

= Missiles

Troops may loose missiles within a 45 degree arc to either side of
them.

Hits to troops are adjusted based on the types of troops targeted:

#table(
    fill: none,
    stroke: none,
    columns: 2,
    align: center,
    gutter: auto,
    row-gutter: 1em,

    table.header(
        [Class],
        [Description],
    ),

    [Light Foot (LF)],
    [Light infantry --- militia, archers, etc. Lightly armored with gambeson or unarmored.],
    [Light Horse (LH)],
    [Light cavalry --- skirmishers, scouts, horse archers, etc. Horse has no barding.],
    [Heavy Foot (HF)],
    [Medium infantry --- professional mercenaries, regulars, etc. Armored (gambeson or chainmail) & trained.],
    [Medium Horse (MH)],
    [Medium cavalry --- Men-at-arms, lancers. Horse has no barding.],
    [Armored Foot (AF)],
    [Heavy infantry --- dismounted knights & men-at-arms, elite guards, etc. Plate or chainmail armor.],
    [Heavy Horse (HH)],
    [Heavy cavalry --- knights, men-at-arms, elites, etc. Horse has barding (armor).],
)

In the medieval period, trained archers were able to perform indirect
fire --- that is, firing upon a target they cannot see by arcing their
arrows through the air.  In-game, indirect fire can be undertaken ---
reducing the listed range to one-third --- to hit targets that archers
cannot see, but only if those units do not have covering above them
(like a roof or heavy foliage).  Archers must also be aware that units
are there; they cannot blindly perform indirect fire at a unit the
player can see but the archers are not feasibly aware of.  Hits on
Table M are moved to the next column along --- LF/LH #sym.arrow HF/MH,
HF/MH #sym.arrow AF/HH; AF/HH cannot be hit indirectly.

Troops can be hidden, and in some cases not seen on the tabletop.
Missile troops may not loose upon troops they are not aware of, but
missiles loosed in the general direction of an enemy may hit them
"accidentally". The referee records accidental losses and inform the
player controlling the hidden troops.

Troops under missile attack will attack their assailants back, if
possible, rather than target other enemy units.

The procedure for a missile volley is as follows:

+ The player chooses the target and the troops which will loose at it.
+ The referee measures the range (note this is *after* the target has
  been chosen and the decision to loose made).
+ Table M is consulted and rolled on.  Depending on the rating of the
  target troops (above), number of troops loosing, and a die roll,
  number of hits is found. If the number firing is larger than 20, the
  referee will split them into groups accordingly.
+ The number of hits is adjusted according to Table R, yielding the
  final number. Fractions are rounded down.

Targets hit are out of action.  If the action is part of an ongoing
campaign, where players may wish to recover a missile company's
strength:

- #frac(1, 6) (\~16.6%) hit are killed
- #frac(1, 3) (\~33.3%) hit are wounded but may still walk
- #frac(1, 2) (50%) hit are badly wounded and may not walk

The exact nature of the wounds is left as an exercise to the referee.
It will vary based on the weapon used, the sadism of the referee, etc.

== Weapon Ranges

#table(
    columns: (
        1fr,
        auto,
        auto,
        auto,
    ),
    align: (
        left,
        center,
        center,
        center,
    ),
    table.header(
        [Weapon],
        [Range],
        [#frac(2, 3) Range],
        [#frac(1, 3) Range],
    ),

    [Short Bow],
    [15"],
    [10"],
    [5"],

    [Horse bow],
    [18"],
    [12"],
    [6"],

    [Crossbow],
    [18"],
    [12"],
    [6"],

    [Longbow],
    [21"],
    [14"],
    [7"],

    [Composite bow],
    [24"],
    [16"],
    [8"],

    [Heavy Crossbow#footnote()[Takes one full turn to reload]],
    [24"],
    [16"],
    [8"],
)

#pagebreak()

= Charges

The referee must inform both players when the orders of two units will
cause them to collide.  Each player may then (in secret) choose her
response:

+ *Continue:* Unit continues with their orders as written.
+ *Halt:* Unit ceases movement, retaining formation. Case 13 on Table
  S (bonus for charging moving troops) no longer applies should the
  unit be charged.
+ *Charge:* Charge the other unit. Infantry units will break ranks;
  Cavalry will form a line and wheel towards the enemy.  Charges are a
  doubletime/gallop move; morale rolls & fatigue apply.
+ *Run:* *Run to _x_*, *Run into _x_*, *Run _x_ Inches*, &c.  Unit
  breaks ranks and moves away at charge speed. Morale rolls are made.
  Enemy troops, if charging, collect a morale bonus for scaring the
  friendly troops off.

For all response orders except *Continue,* a #frac(1, 4) of a turn is
lost to organize a response.  After *Halt,* troops may fire missiles
in any time remaining during the turn.

If contact would not result, movements are carried out as
before. Other collisions that result must also be resolved.

The players having revised their orders, any charges which result in
combat must have their odds calculated using Table S. Cases 1---5
describe the basic combat odds; cases 6---16 describe modifiers and
multipliers that may be applied. The process is as follows:

+ Determine missiles that will strike troops during the
  movement. Compute losses and morale effects first.
+ Determine the influence of cases from the Table of Possibility that
  may apply.
+ Determine morale effects due to movement; recall that charges use
  doubletime or gallop.
+ If a side reaches this stage and its morale is *Routed,* it will
  ignore its orders and instead will *Run.* If *Missing,* the units
  affected are immediately removed from the field.
+ Calculate odds using the number of troops & Table S. Odds are
  rationalized as far as possible.  If unit odds e.g. 1:1, 5:1, 10:1
  are not reached, division should be continued and any fractions
  rolled on Table J or K to see if they apply.  For example, if a
  ratio of 8:3 is reached, then the unit ratio would be 2#frac(2,
  3):1.  The fraction part is rolled for using Table K, at the 2:1
  odds; if A, 3:1, if B, 2:1.
+ Roll on Table T.  Both sides roll one die. The side with greater
  odds may choose to reroll for as many times as they have advantage,
  taking the next die rolled.  For example, if the odds are 3:1, the
  favored side may roll its die up to 3 times. Both sides are aiming
  to roll high.  If odds are 6:1, the favored side may add one to its
  kept die; 12:1 adds two; 18:1 adds three; 24:1 adds four; 30:1 adds
  five.
+ Friendly losses, in troops (not figures) are equal to the final
  value of the enemy's die, multiplied by the number of enemy troops
  (not figures) involved, and divided by 100.  If the result was not a
  tie, the winning side adds one to their die roll for the purposes of
  calculating losses, and the losing side subtracts one.  No morale is
  checked for these losses; morale effects are applied according to
  Table T instead.
+ If the final values of the dice (favored side including her bonuses)
  are the same, then no immediate decision is reached, and melee
  continues on the next turn. Both sides are *Shaken*.
+ Otherwise, there is an immediate decision and consequences are
  carried out:
    - For cavalry that are not outnumbered by 3:1, and defeating a
        side which is less than #frac(1, 2) cavalry, a difference of
        one or two is upgraded to three.
    - If the difference was one or two, the losing side retreats at
      normal speed for the rest of the turn.  If the winning side were
      defending, they carry out their remaining orders; if they were
      attacking, they take the losing side's position and form a line
      facing them.
    - If the difference was three or more, the losing side runs.
        Victorious defenders carry out their existing
        orders. Victorious attackers either pursue an enemy unit they
        were ordered to charge, or will halt if they were ordered to
        charge a landmark.
+ Either way, slain figures are removed.

#pagebreak()

= Melee

A melee is simply an ongoing hand-to-hand combat started by a charge
on some previous turn.  During the turn, either side may add troops as
reinforcements. These count double for _only the first turn they are
in melee,_ and there are two restrictions on reinforcements:

+ When troops defending a front, with at least one figure per 6"; or
  when defenders are infantry in line formation, only one infantry
  figure per 1" or one cavalry figure per 3" may attack.  This is the
  advantage of presenting a solid front to the enemy.  However, if a
  tie is thrown in resolving a melee, the solid front is broken.
+ Troops who outnumber another side in melee more than 4:1 do not
  count towards the melee odds.  No more than four troops may attack
  one troop as it pertains to melee resolution.

Troops who are involved in a melee may be given these orders:

/ Hold: If the troops win the melee, they will hold position and not
  pursue.

/ Pursue: If the troops win the melee, they will pursue.

/ Withdraw _x_ and form _y_: Where _x_ is "to (landmark)" or is a
  distance and direction; and _y_ is a formation the troops may form.
  Troops retreat at the start of the turn. The effect on morale for
  both sides is the same as if a difference of three was thrown on
  Table T.  If the opposing side was ordered to pursue, they will
  pursue now.  The fleeing side will move as indicated and adopt the
  formation indicated; should they be intercepted before forming up,
  the consequences will be severe (see *Pursuit*).  Part of a side may
  withdraw; in this case, the victory conditions only apply to the
  part that withdrew and to a corresponding amount of enemy
  troops. Melee continues if some troops from both sides remain in it.

Melees are resolved as charges using Table S to calculate odds;
however, cases 2, 4, 10, 11, 12, and 13 are ignored; and cases 14, 15,
and 16 only apply if the defender has an unbroken formation.

Troops withdrawing or fleeing from a defeat get a #frac(1, 6) turn
head start.

= Pursuit

After a charge or melee where the result on Table T was three or more,
a pursuit must be completed for prisoners to be taken.  If a pursuit
is not carried out, the defeated side's morale only drops to *In
Disorder* and it is unable to advance towards enemy troops for ten
turns.

Otherwise, the full effects take place on the pursued starting after a
#frac(1, 2) turn of pursuit by a side which is at least a third the
size of the pursued.  As pursuit continues (for 5---10 turns depending
on the result), a proportional amount of the *Missing* troops on the
losing side are captured by the pursuers each turn.  The pursuing
troops may only take one prisoner each, and no more than #frac(1, 10)
or #frac(1, 20) per turn depending on the magnitude of victory.

If the pursuers catch up to the pursued, a new attack is carried out;
the pursued suffer the following consequences on Table S:

- For infantry:
- For cavalry:

If escape is blocked by impassable terrain, the pursued are entirely
*Routed* and captured.

If escape is impeded by terrain that slows movement, every member of
the pursuing force that does not already have a prisoner takes a
prisoner; remaining troops escape through the obstacle and are *Routed*.

Pursuit ends if:

- The pursuers are blocked by terrain or by other enemies
- The pursuers are reduced to below a third the size of the pursued
- The pursued are able to halt for one turn without the pursuers
  catching them.

= Probabilities

*Table K* provides a way to resolve simple chances using one ordinary
six-sided die.  *Table J* provides a way to resolve chances using a
twelve-sided die or two six-sided dice (1d66).  Rolls for ratios which
resist being rationalized (e.g. 59:47) can be either simplified by
rounding up or down; or by using a jar or bag of marbles, dice, chits
etc. of two different colors. Or, percentile dice can be used.

#set page(columns: 1)

= Table J --- Possibilities

Roll 1d12 _or_ 1d66; result shown by letter.

#let rrc = table.cell(stroke: 1pt, [X])

#table(
    align: center+horizon,
    gutter: auto,
    column-gutter: (
        auto,
        1.5pt,
        auto,
        auto,
        auto,
        auto,
        auto,
        1.5pt,
        auto,
    ),
    columns: (
        1fr,
        auto,
        1fr,
        1fr,
        1fr,
        1fr,
        1fr,
        1fr,
        1fr,
        1fr,
        1fr,
        1fr,
        1fr,
        1fr,
    ),
    table.header(
        [Odds of A],
        [P(!A)],
        [1 11-13],
        [2 14-16],
        [3 21-23],
        [4 24-26],
        [5 31-33],
        [6 34-36],
        [7 41-43],
        [8 44-46],
        [9 51-53],
        [10 54-56],
        [11 61-63],
        [12 64-66],
    ),
    [1:1 (6:6)], [6 in 12], [B], [B], [B], [B], [B], [B], [A], [A], [A], [A], [A], [A],
    [7:5], [5 in 12], [B], [B], [B], [B], [B], [A], [A], [A], [A], [A], [A], [A],
    [2:1 (8:4)], [4 in 12], [B], [B], [B], [B], [A], [A], [A], [A], [A], [A], [A], [A],
    [3:1 (9:3)], [3 in 12], [B], [B], [B], [A], [A], [A], [A], [A], [A], [A], [A], [A],
    [5:1 (10:2)], [2 in 12], [B], [B], [A], [A], [A], [A], [A], [A], [A], [A], [A], [A],
    [11:1], [1 in 12], [B], [A], [A], [A], [A], [A], [A], [A], [A], [A], [A], [A],
    [6:5], [5 in 11],  [B], [B], [B], [B], [B], [A], [A], [A], [A], [A], [A], rrc,
    [7:4], [4 in 11],  [B], [B], [B], [B], [A], [A], [A], [A], [A], [A], [A], rrc,
    [8:3], [3 in 11],  [B], [B], [B], [A], [A], [A], [A], [A], [A], [A], [A], rrc,
    [9:2], [2 in 11],  [B], [B], [A], [A], [A], [A], [A], [A], [A], [A], [A], rrc,
    [10:1], [1 in 11],  [B], [A], [A], [A], [A], [A], [A], [A], [A], [A], [A], rrc,
    [3:2 (6:4)], [4 in 10],
    [B], [B], [B], [B], [A], [A], [A], [A], [A], [A], rrc, rrc,
    [7:3], [3 in 10],
    [B], [B], [B], [A], [A], [A], [A], [A], [A], [A], rrc, rrc,
    [4:1 (8:2)], [2 in 10],
    [B], [B], [A], [A], [A], [A], [A], [A], [A], [A], rrc, rrc,
    [9:1], [1 in 10],
    [B], [A], [A], [A], [A], [A], [A], [A], [A], [A], rrc, rrc,
    [5:4], [4 in 9],
    [B], [B], [B], [B], [A], [A], [A], [A], [A], rrc, rrc, rrc,
    [7:2], [2 in 9],
    [B], [B], [A], [A], [A], [A], [A], [A], [A], rrc, rrc, rrc,
    [8:1], [1 in 9],
    [B], [A], [A], [A], [A], [A], [A], [A], [A], rrc, rrc, rrc,
    [5:3], [3 in 8],
    [B], [B], [B], [A], [A], [A], [A], [A], rrc, rrc, rrc, rrc,
    [7:1], [1 in 8],
    [B], [A], [A], [A], [A], [A], [A], [A], rrc, rrc, rrc, rrc,
    [4:3], [3 in 7],
    [B], [B], [B], [A], [A], [A], [A], rrc, rrc, rrc, rrc, rrc,
    [5:2], [2 in 7],
    [B], [B], [A], [A], [A], [A], [A], rrc, rrc, rrc, rrc, rrc,
    [6:1], [1 in 7],
    [B], [A], [A], [A], [A], [A], [A], rrc, rrc, rrc, rrc, rrc,
)

= Table K --- Possibilities

Roll 1d6; result shown by letter.

#table(
    align: center+horizon,
    gutter: auto,
    column-gutter: (
        auto,
        1.5pt,
        auto,
        auto,
        1.5pt,
        auto,
    ),
    columns: (
        1fr,
        auto,
        1fr,
        1fr,
        1fr,
        1fr,
        1fr,
        1fr,
    ),
    table.header(
        [Odds of A],
        [P(!A)],
        [1],
        [2],
        [3],
        [4],
        [5],
        [6],
    ),
    [1:1 (3:3)], [3 in 6], [B], [B], [B], [A], [A], [A],
    [2:1 (4:2)], [2 in 6], [B], [B], [A], [A], [A], [A],
    [5:1], [1 in 6], [B], [A], [A], [A], [A], [A],
    [3:2], [2 in 5], [B], [B], [A], [A], [A], rrc,
    [4:1], [1 in 5], [B], [A], [A], [A], [A], rrc,
    [3:1], [1 in 4], [B], [A], [A], [A], rrc, rrc,
)

#align(center)[
    *A* --- Favored result occurs;
    *B* --- Favored result does not occur;
    *X* --- Re-roll.
]

= Table M --- Missile Hits (In Figures)

#table(
    align: center,
    column-gutter: (
        2.2pt,
        auto,
        2.2pt,
        auto,
        2.2pt,
        auto,
    ),
    gutter: auto,
    fill: alt-fill,
    columns: (
        3fr,
        1fr,
        1fr,
        1fr,
        1fr,
        1fr,
        1fr,
    ),
    table.header(
        table.cell(rowspan: 2)[Number of Figures Shooting\
            #h(1fr)1d6:],
        table.cell(colspan: 2)[LF or LH],
        table.cell(colspan: 2)[HF or MH],
        table.cell(colspan: 2)[AF or HH],
        [*1---2*],
        subheader()[*3---6*],
        [*1---3*],
        subheader()[*4---6*],
        [*1---4*],
        subheader()[*5---6*]
    ),
    table.hline(),
    [1---2], [0.5], [1], [0.25], [0.5], [0.25], [0.5],
    [3],     [1],   [2], [0.5], [1], [0.25], [0.5],
    [4],     [1],   [2], [0.5], [1], [0.5], [1],
    [5---6], [2],   [3], [2], [2], [0.5], [1],
    [7---8], [3],   [4], [2], [3], [0.5], [1],
    [9---12], [4],  [5], [3], [3], [1], [2],
    [13---16], [4], [5], [3], [3], [2], [3],
    [17---20], [4], [5], [3], [3], [3], [3],
)

= Table R --- Missile Multipliers

#table(
    align: (
        left,
        left,
        left,
        left,
    ),
    columns: (
        auto,
        auto,
        auto,
        auto,
    ),
    fill: none,
    stroke: none,
    gutter: auto,
    row-gutter: 1em,
    column-gutter: (
            0em,
            1em,
    ),
    table.header(
        table.cell(colspan: 2)[Class/Description],
        table.cell(align:center)[Result],
        table.cell(align:center)[Notes],
    ),

    [1.],
    table.cell(align:right)[Morale: #h(1fr)*Enthusiastic:*\
        *Flushed With Victory:*\
        *Normal:*\
        *Somwhat Shaken:*\
        *Shaken:*\
        *Badly Shaken:*\
        *In Disorder:*\
        *In Great Confusion:*\
        *Routed:*
    ],
    [#(sym.times)#frac(4,5)\
        #(sym.times)1\
        #(sym.times)1\
        #(sym.times)#frac(1,2)\
        #(sym.times)#frac(1,3)\
        #(sym.times)#frac(1,5)\
        #(sym.times)#frac(1,10)\
        #(sym.times)0\
        #(sym.times)0],
    [See below.],

    [2.],
    [Under attack (charged, being fired upon)],
    [#(sym.times)#frac(2, 3)],
    [Only if morale is *Normal* or lower.],

    [3.],
    [Range less than #frac(1,3) listed\
        Range less than #frac(2, 3) listed],
    [#(sym.times)#frac(2, 1)\
        #(sym.times)#frac(3, 2)],
    table.cell(align: left+horizon)[
        Any further than listed range is ineffective. Do not apply
        these bonuses for indirect fire.
    ],

    [4.],
    [Target is infantry column],
    [#(sym.times)2],
    [],

    [5.],
    [Second line of target, within 5"],
    [#(sym.times)#frac(2, 3)],
    [i.e. a target behind another],

    [6.],
    [When attacking troops are in cover],
    [#(sym.times)2],
    [From within building or behind defense --- but not woods/hedges.],

    [7.],
    [Aimed/Prepared\
        Longbows\
        Other missiles],
    [\
        #(sym.times)3\
        #(sym.times)2],
    [],

    [8.],
    [Target has stone cover (crenellations, arrow slit, etc.)],
    [#(sym.times)#frac(1, 10)],
    table.cell(align: left+horizon, rowspan: 2)[
        Both assume target is not fully covered for whole turn. Does
        not apply if missile troops are able to conduct indirect fire.
    ],

    [9.],
    [Target has wooden cover (palisade; archer or arbalist's pavise; etc.)],
    [#(sym.times)#frac(1, 4)],

    [10.],
    [Target in woods, but still visible],
    [#(sym.times)#frac(1, 2)],
    [If out of sight, #(sym.times)0.],
)

#pagebreak()

#set page(footer: context {
    [#counter(page).display(
        "1"
    )
        #h(1fr)]})

= Table S --- Melee/Charge Multipliers

#grid(
    columns: (
        1fr,
        1fr,
    ),
    column-gutter: 2.1em,
    grid(
        align: (
            left,
            left,
            left,
        ),
        columns: (
            auto,
            1fr,
            auto,
        ),
        fill: none,
        stroke: none,
        gutter: auto,
        row-gutter: 1em,
        column-gutter: (
            0.5em,
            1em,
            0em,
        ),

        [1.],
        [Infantry attacked by infantry],
        [#frac(3, 2) for defender],

        [2.],
        [Infantry line charged by cavalry\
            Infantry column by cavalry],
        [#frac(2, 1) for infantry\
            #frac(1, 1)],

        [3.],
        [Infantry charging cavalry\
            Cavalry charging open infantry\
            Cav. charging infantry forming up],
        [#frac(5,1) for cavalry\
            #frac(5,1) for cavalry\
            #frac(5,1) for cavalry],

        [4.],
        [Cavalry attacked by cavalry &\
            Charging attackers\
            Not charging],
        [\
            #frac(1, 1)\
            #frac(12, 1) for attackers],

        [5.],
        [Infantry fighting cavalry that cannot charge, or that is in
            thick/heavy woods, water over 3', in town, or engaged in melee.],
        [#frac(4, 1) for infantry],

        [6.],
        [Eliteness 5 (Campaigner)\
            Eliteness 4 (Veteran)\
            Eliteness 3 (Regular)\
            Eliteness 2 (Experienced)\
            Eliteness 1 (Green)],
        [#(sym.times)5\
            #(sym.times)4\
            #(sym.times)3\
            #(sym.times)2\
            #(sym.times)1],

        [7.],
        [*Fresh* (10 turns out of action) vs *Not Fresh* (2 turns in
            melee, or 10 turns moving no rest)],
        [#frac(4, 3) for *Fresh*],


        [8.],
        grid.cell(align: right)[Troop strength: #h(1fr) Lights\
            Heavy Infantry/Medium Horse\
            Armored Infantry/Heavy Horse\
            (Only 4 at a time may attack 1)],
        [#(sym.times)1/man\
            #(sym.times)2/man\
            #(sym.times)3/man],
    ),

    grid(
        align: (
            left,
            left,
            left,
        ),
        columns: (
            auto,
            1fr,
            auto,
        ),
        fill: none,
        stroke: none,
        gutter: auto,
        row-gutter: 1em,
        column-gutter: (
            0.5em,
            1em,
            0em,
        ),

        [9.],
        grid.cell(colspan: 2)[
            Morale affects fighting efficiency --- see *Morale*.
        ],

        [10.],
        [Cavalry charging downnhill:\
            *Gentle Slope*\
            *Moderate Slope*],
        [\
            #frac(2, 1) vs cavalry\
            #frac(4, 1) vs cavalry],

        [11.],
        [Troops attacked by surprise:\
            #h(2em)Line\
            #h(2em)Column\
            #h(2em)Open (at least 3" apart)\
            #h(2em)Charging etc.],
        [\
            #frac(3, 2) for attacker\
            #frac(3, 1) for attacker\
            #frac(2, 1) for attacker\
            #frac(4, 1) for attacker],

        [12.],
        [Defenders who have repulsed an attack within 1 turn (applies
            on subsequent turns of melee)\
            #h(1fr)Attacked by infantry\
            #h(1fr)Attacked by cavalry],
        grid.cell(
            align: left+bottom
        )[#frac(3, 2) for attacker\
            #frac(2, 1) for attacker],

        [13.],
        [Infantry moving (not charging) attacked by charging attackers.],
        [#frac(2, 1) for charging],

        [14.],
        [Defenders on higher ground\
            #h(2em)*Gentle Slope*\
            #h(2em)*Moderate Slope*\
            #h(2em)*Steep Slope*\
        ],
        [\
            #frac(3, 2) for defenders\
            #frac(3, 1) for defenders\
            #frac(6, 1) for defenders],

        [15.],
        grid.cell(colspan: 2)[
            Troops in cover attacked from outside that cover gain a
            multiplier to their defense, as missiles.
        ],

        [16.],
        [Troops attacking from:\
            Flank\
            Rear],
        [\
            #frac(2, 1) for attacker\
            #frac(3, 1) for attacker],
    )
)

= Table T --- Results of Melees and Charges

#table(
    gutter: auto,
    stroke: none,
    row-gutter: 0.6em,
    fill: none,
    align: center+horizon,
    columns: (
        0.94fr,
        auto,
        1fr,
    ),
    table.header(
        [Winning Side],
        [Difference \
            in Dice],
        [Losing Side],
    ),

    [No effect; fighting continues.],
    [0],
    [No effect; fighting continues.],

    [Troops *Shaken,* & may not attack for 5 turns],
    [1],
    [Troops *Shaken,* & may not attack for 5 turns],

    [Troops *Shaken,* & may not attack for 5 turns],
    [2],
    [Troops *In Disorder,* & may not attack for 10 turns],

    [Troops *Normal,* & may pursue the enemy for 5 turns to take ¼
    prisoner.  If they are attacked while pursuing, odds are 3:2 as
    they are disorganized. After this pursuit, they must take 5 turns
    to reorganize.],
    [3],
    [Troops *In Disorder,* & may not attack for 10 turns. If pursued,
    ¼ of troops are *Missing*, the rest are *Routed*.],

    [Troops *Flushed With Victory,* & may pursue for 10 turns, taking
    ½ the enemy prisoner.],
    [4],
    [Troops *In Disorder,* & are out of order for 10 turns. If pursued,
    all troops are *Missing*.],

    [Troops *Enthusiastic,* & may pursue for 10 turns, taking all
    remaining enemies prisoner.],
    [5+],
    [Troops *In Disorder,* & are out of order for 10 turns. If pursued,
    all troops surrender.],
)

#pagebreak()

#set page(margin: (y: 1cm, x: 3cm), footer: none)

#set heading(bookmarked: true, outlined: false)

#v(1fr)

= Credits

#v(2em)

Based on _Strategos: The American Game of War,_ by Charles
A.L. Totten; _Valley Forge_ by Dave Wesely was also consulted, as were
fragments of Wesely's _Valley Forge II_ and \
_Strategos N_ and of Dave Arneson's _Strategos A._

Table M is based on _Chainmail_ by Jeff Perren & Gary Gygax.

Fonts used are all licensed OFL 1.1, with the following copyright notices:

- *Title/byline:* Old Cupboard --- Copyright 2019 Cecil Howe\
    #h(14em) (https://www.coneofnegativeenergy.com)

- *Subtitle:* Combat --- By Martin Desinde, 2015.

- *Headers:* Cooper\* --- Copyright 2024 The Cooper\* Project Authors\
    #h(10em) (https://github.com/indestructibletype/Cooper)

- *Body text:* Hyde --- Copyright 2008 by Andrew Berry

Cover image (medieval battle) and image on page 5 (charging knight)
are from public domain sources.

The Olivia Hill Rule is by Olivia Hill, from the game _\#iHunt_,
licensed CC-BY-SA 3.0.

Thank you to the many many internet sources who have helped me
understand Strategos and wargames at large.

#v(1fr)

#pagebreak()

#set page(margin: (y: 6.5cm, x: 3cm))

#align(center+horizon)[
    = Order Abbreviations

    #v(4em)

    #columns(2)[
        #grid(
            columns: (
                auto,
                1fr,
            ),
            align: left,
            gutter: auto,
            column-gutter: 2em,
            row-gutter: 1em,

            [ADV#emph()[n]], [Advance _n_ inches],
            [AF], [About Face],
            [AIM#emph()[t]], [Take aim at _t_],
            [AVT#emph()[l]], [Advance towards landmark _l_],
            [BWL#emph()[n]], [Back wheel left _n_ inches],
            [BWR#emph()[n]], [Back wheel right _n_ inches],
            [CCL], [Close to column left],
            [CCR], [Close to column right],
            [CHG#emph()[t]], [Charge at target _t_],
            [CLL], [Close to line left],
            [CLR], [Close to line right],
            [CL#emph()[n]], [Close left _n_ inches],
            [CR#emph()[n]], [Close right _n_ inches],
            [DMT], [Dismount],
            [DT], [Doubletime or gallop],
            [FCL], [Form column left],
            [FCR], [Form column right],
            [FLL], [Form line left],
            [FLR], [Form line right],
            [FW#emph()[nt]], [Follow _n_ inches behind target _t_],
            [LS], [Loose],
            [LS#emph()[t]], [Loose at target _t_],
            [MNT], [Mount],
            [MV#emph()[nd]], [Move _n_ inches in direction _d_],
            [MV#emph()[nl]], [Move _n_ inches along landmark _l_],
            [MVT#emph()[l]], [Move to landmark _l_],
            [OML#emph()[n]], [Oblique march left _n_ inches],
            [OMR#emph()[n]], [Oblique march right _n_ inches],
            [QT], [Quicktime or trot],
            [REST], [Halt and rest],
            [RL], [Reload crossbows],
            [RR#emph()[n]], [Retire _n_ inches],
            [RNF#emph()[t]], [Reinforce friendly target _t_],
            [SML], [Split-move-loose],
            [WLL#emph()[n]], [Wheel left _n_ inches],
            [WLR#emph()[n]], [Wheel right _n_ inches],
            [XL#emph()[n]], [Extend to left, _n_ inches],
            [XR#emph()[n]], [Extend to right, _n_ inches],
        )
    ]
]
