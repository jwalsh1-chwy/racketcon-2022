::: banner
::: title-append
::: pagetitle
![The Racket
logo](https://racket-lang.org/img/racket-logo.svg){style="width:80px; float: right"}
:::

::: pagetitle
(twelfth\
 RacketCon)   
:::
:::

::: subtitle
October 28-30, 2022
:::

::: subtitle
[Brown University]{.p-location}
:::

::: subsubtitle
[Providence, RI, USA]{.p-locality}
:::
:::

::: column
::: section
::: sectionHeader
Friday, October 28th
:::

::: paragraph
[Room]{.bold}: CIT 368
:::

::: speech
::: talk-time-div
[Friday, 2:00PM EDT]{slot-time="2022-10-28T18:00:00Z"}
:::

[All of us]{.speaker}

::: talk
Racket Hackathon/Open Space
:::

::: abstract
::: paragraph
This is your chance to raise you hand and suggest a topic that you want
to dig in to. We will have a brief discussion to establish topics of
interest and then divide into groups to try to make some progress. Got a
question? Are you stuck with some Racket feature/package? Are you
burning to learn more about something? This is your chance to dig in and
get your hands dirty!
:::

::: paragraph
Here is a non-exhaustive list of topics that the community identified as
worthy of discussion:
:::

-   RacketScript
-   Graphics and diagramming
-   Scribble howto/enhancements
-   Making a `#lang`
-   Web programming
-   Typed Racket

::: paragraph
This is just a list of possible topics; there are no promises that any
of these topics will definitely be discussed. What actually gets
discussed depends on who shows up and what they want to work on.
:::

::: paragraph
Racket pros and even some of the core developers will be on hand for the
hackathon. This is your chance to take direct action on an issue of
interest, so make something of it! You don't have to be an expert; you
just need to be interested and willing to learn. (If you *are* an
expert, considering lending a helping hand to those in the community who
are trying to upgrade their Racket lives.)
:::
:::
:::
:::

::: section
::: sectionHeader
Saturday, October 29th
:::

::: paragraph
[Room]{.bold}: CIT 368
:::

::: speech
::: talk-time-div
[Saturday, 9:00AM EDT]{slot-time="2022-10-29T13:00:00Z"}
:::

[[Doors Open]{.bold}]{.speaker}
:::

::: paragraph
NB Breakfast won't be served! Please eat before coming to the event.
:::

::: speech
::: talk-time-div
[Saturday, 9:30AM EDT]{slot-time="2022-10-29T13:30:00Z"}
:::

[[Ben L. Titzer
([CMU]{.p-org})](https://github.com/titzer "Ben L. Titzer"){.h-card}]{.speaker}

::: talk
The final tier is Shed: Inside the Wizard Engine's fast in-place
interpreter for WebAssembly
:::

::: abstract
[WebAssembly](https://webassembly.org) is a compact, well-specified
bytecode format that offers a portable compilation target with
near-native execution speed. The bytecode format was specifically
designed to be fast to parse, validate, and compile, positioning itself
as a portable alternative to native code. It was pointedly not designed
to be *interpreted* directly. Instead, most engines have focused on
optimized JIT compilation for maximum performance. Yet compilation time
and memory consumption critically impact application startup, leading
many Wasm engines to now employ two compilers. But interpreters start up
even faster. A typical interpreter being infeasible, some engines resort
to compiling Wasm not to machine code, but to a more compact, but easy
to interpret format. This still takes time and wastes memory. Instead,
we introduce a new design for an in-place interpreter for WebAssembly,
where no rewrite and no separate format is necessary. Our measurements
show that in-place interpretation of Wasm code is space-efficient and
fast, achieving performance on-par with interpreting a custom-designed
internal format. This fills a hole in the execution tier space for Wasm,
allowing for even faster startup and lower memory footprint than
previous engine configurations.

::: bio-div
[Bio: ]{.bold}Ben L. Titzer is a Principal Researcher at Carnegie Mellon
University. A former member of the V8 team at Google, he co-founded the
WebAssembly project, led the team that built the implementation in V8,
and led the initial design of V8's TurboFan optimizing compiler. Prior
to that he was a researcher at Sun Labs and contributed to the Maxine
Java-in-Java VM. He is the designer and main implementer of the Virgil
programming language.
:::
:::
:::

::: speech
::: talk-time-div
[Saturday, 10:30AM EDT]{slot-time="2022-10-29T14:30:00Z"}
:::

[[Coffee]{.bold}]{.speaker}
:::

::: speech
::: talk-time-div
[Saturday, 11:00AM EDT]{slot-time="2022-10-29T15:00:00Z"}
:::

[[Sebastian Ullrich
([KIT]{.p-org})](https://pp.ipd.kit.edu/person.php?id=144 "Sebastian Ullrich"){.h-card}]{.speaker}

::: talk
Metaprograms and Proofs: Macros in Lean 4
:::

::: abstract
A core feature of the [Lean 4 programming
language](https://leanprover.github.io) and theorem prover is an
expressive macro system, taking heavy inspiration from Racket. In this
talk, we give an overview of macros in Lean and discuss the ideas we
took from Racket as well as the problems we decided to solve in a
different way. In particular, we talk about recent work on "typed
macros" that prevent many common mistakes by Lean macro authors.

::: bio-div
[Bio: ]{.bold}Sebastian is a PhD student at Karlsruhe Institute of
Technology, Germany, and a Lean core developer. He enjoys both working
on the user-facing frontend of the system as well as on the code
generation backend to make users and binaries go fast.
:::
:::
:::

::: speech
::: talk-time-div
[Saturday, 11:30AM EDT]{slot-time="2022-10-29T15:30:00Z"}
:::

[[Ben Greenman
([Brown]{.p-org})](http://cs.brown.edu/people/bgreenma/ "Ben Greenman"){.h-card}]{.speaker}

::: talk
Shallow and Optional Types
:::

::: abstract
Typed Racket (TR) is powerful---but sometimes too powerful. In addition
to a type checker and type-driven optimizer, it includes a contract
layer that dynamically monitors interactions with untyped code. The
contracts make TR one of the strongest and most flexible type systems in
the world, but also one of the slowest when there are many boundaries to
untyped. Shallow TR and Optional TR are two alternatives that have
(finally!) arrived with the Racket 8.7 release. Shallow TR enforces
types with local assertions rather than compositional contracts, keeping
a bit of soundness at low cost. Optional TR enforces types with nothing
at all. This talk will explain Shallow and Optional in depth and show
how they can interact with untyped code, standard TR, and each another.

::: bio-div
[Bio: ]{.bold}Ben is currently a postdoc at Brown University studying
human factors for type systems and logics. Next Fall, he will be an
assistant professor at the University of Utah. Reach out if you would
like to live on a mountain for N years studying programming languages.
:::
:::
:::

::: speech
::: talk-time-div
[Saturday, 12:00PM EDT]{slot-time="2022-10-29T16:00:00Z"}
:::

[[Jack Firth](https://github.com/jackfirth "Jack Firth")]{.speaker}

::: talk
Resyntax: A Macro-Powered Refactoring Tool
:::

::: abstract
Resyntax is a tool that wields the power of Racket's macro expander to
analyze Racket code and suggest improvements. It uses a domain-specific
language to specify refactoring rules in terms of syntax-parse macros.
Rules explain why they're improvements, allowing Resyntax to teach users
how to make their code more straightforward, more readable, and more
efficient. This talk covers how Resyntax works, why it's different from
tools like code formatters and linters, and what it means for the future
of Racket's static analysis ecosystem.

::: bio-div
[Bio: ]{.bold}Jack Firth (they/them or she/her) is a software engineer
at Google working on continuous integration systems, Java libraries, and
static analysis tools. Special interests include asynchronous
programming, large-scale distributed computing, martial arts, pretty
diagrams, and dyeing their hair pink.
:::
:::
:::

::: speech
::: talk-time-div
[Saturday, 12:30PM EDT]{slot-time="2022-10-29T16:30:00Z"}
:::

[[Lunch]{.bold}]{.speaker}
:::

::: paragraph
Lunch will not be served! There are many options on Thayer Street, right
off campus. Attendees will be given more information on-site about their
lunch options. You are also welcome to bring your own lunch. Microwaves
and hot water dispensers will be made available if needed.
:::

::: speech
::: talk-time-div
[Saturday, 2:00PM EDT]{slot-time="2022-10-29T18:00:00Z"}
:::

[[Marco Morazán ([Seton
Hall]{.p-org})](https://www.shu.edu/profiles/marcomorazan.cfm "Marco Morazán"){.h-card}]{.speaker}

::: talk
What Can Beginners Learn from Video Games?
:::

::: abstract
Beginners need to learn important Computer Science concepts revolving
around problem solving, program design, modularity, documentation,
testing, efficiency, running time, and program refinement. This presents
unique challenges given students that are enthusiastic but have little
experience quickly lose interest. Instructors must capture their
imagination to channel their enthusiasm into learning the important
lessons. An effective medium to do so is the development of video games.
This talk outlines a design-based curriculum for beginners that is based
on video game development.

::: bio-div
[Bio: ]{.bold}Dr. Marco T. Morazán joined Seton Hall in 1999. He did his
undergraduate studies at Rutgers University and his graduate work at the
City University of New York. At Seton Hall he teaches at all levels of
the Computer Science curriculum including his signature courses:
[Introduction to Program Design]{.emph} I and II, [Organization of
Programming Languages]{.emph}, and [Automata Theory and
Computability]{.emph}. His main research foci are the implementation of
programming languages and Computer Science Education. As the graduate
school advisor, he takes special pride in making sure that his students
are prepared to continue studies outside of Seton Hall. Dr. Morazán is a
strong proponent of undergraduate research opportunities and routinely
has students collaborate with him on projects. Along with his
undergraduate research students, he is responsible for an optimal lambda
lifting algorithm and an effective mechanism for closure memoization. In
Computer Science education, he is especially proud of the effectiveness
of the Computer Science curriculum, based on the development of video
games, he has developed for beginners.
:::
:::
:::

::: speech
::: talk-time-div
[Saturday, 2:30PM EDT]{slot-time="2022-10-29T18:30:00Z"}
:::

[[Hazel Levine
([Indiana]{.p-org})](https://bicompact.space "Hazel Levine"){.h-card}]{.speaker}

::: talk
Design Recipe Guided Synthesis with Bingus
:::

::: abstract
The [How to Design Programs]{.emph} ([HtDP](htdp.org)) curriculum,
utilizing simple subsets of the Racket programming language, teaches the
fundamentals of data-driven program design using the "design recipe".
This approach teaches recursion by structural decomposition of the input
data, enough to express many algorithms on simple recursive data
structures. Furthermore, this approach is deeply mechanical, having
students write a "template" depending on the input type of the function
that when filled in produces structurally-recursive programs. We present
a work-in-progress program synthesizer for the HtDP Student languages,
[Bingus](https://github.com/ralsei/bingus), that utilizes the design
recipe as its primary means of generating programs. By parsing the
signature (specification in a comment) of a function, the first step of
the design recipe, Bingus makes guesses depending on the signatures of
the function inputs, utilizing the check-expects (unit tests) to
determine when synthesis is complete. We demonstrate usage of Bingus as
a program synthesis tool integrated into DrRacket, and discuss ways that
we plan to extend this tool for pedagogic purposes, such as providing
better feedback to students from an auto-grader, or determining when
student-provided unit tests are insufficient.
:::
:::

::: speech
::: talk-time-div
[Saturday, 3:00PM EDT]{slot-time="2022-10-29T19:00:00Z"}
:::

[[Coffee]{.bold}]{.speaker}
:::

::: speech
::: talk-time-div
[Saturday, 3:30PM EDT]{slot-time="2022-10-29T19:30:00Z"}
:::

[[Leif Andersen
([Northeastern]{.p-org})](http://leifandersen.net "Leif Andersen"){.h-card}]{.speaker}

::: talk
VISr: Visual and Interactive Syntax
:::

::: abstract
While macros continue to take us to the frontiers of what is possible
with embedded Domain Specific Languages, they are still limited to
textual programming languages. Visual and Interactive Syntax realized
(VISr) introduces the world to hybrid textual and visual programming
languages. Programmers are no longer forced to choose between readable
code and runnable code. VISr gives programmers the power of Language
Oriented Programming\...now with pictures. This talk teaches programmers
how to use VISr for ClojureScript. It also introduces Frankenstein: an
early prototype of VISr for Racket.

::: bio-div
[Bio: ]{.bold}Leif Andersen is a postdoctoral Researcher studying
programming languages in the University of Massachusetts Boston. She
studies topics in Programming Languages and Human Computer Interaction.
Specifically, she works on domain-specific languages for creating hybrid
textual-visual programs.
:::
:::
:::

::: speech
::: talk-time-div
[Saturday, 4:00PM EDT]{slot-time="2022-10-29T20:00:00Z"}
:::

[[Tim Nelson
([Brown]{.p-org})](https://cs.brown.edu/~tbn/ "Tim Nelson"){.h-card}]{.speaker}

::: talk
Forge: Building a Pedagogic Solver Tool in Racket
:::

::: abstract
Brown's Logic for Systems course teaches modeling and reasoning about
systems via constraint solving. The specific solver we use must fit our
teaching needs; we require accessible syntax, the right level of
automation, the ability to visualize output, and much else. This short
talk will show how our tools have evolved, how building our own atop
Racket has been worthwhile, and why it matters.
:::
:::

::: speech
::: talk-time-div
[Saturday, 4:20PM EDT]{slot-time="2022-10-29T20:20:00Z"}
:::

[[Kuang-Chen Lu
([Brown]{.p-org})](https://lukc1024.github.io "Kuang-Chen Lu"){.h-card}]{.speaker}

::: talk
Stacker: A runnable notional machine for an HtDP-like language
:::

::: abstract
It is difficult to teach the semantics of a conventional programming
language to people with [only]{.emph} programs and program outputs.
There are so many entities behind the scene: the mapping from variables
to values, the identities of mutable (and shareable) data structures,
the continuation (either represented as evaluation contexts or call
stacks), etc. Notional machines, ways to present some aspects of running
programs, can facilitate the teaching process by depicting some of these
entities and their interaction with the runned programs. This talk
presents a notional machine, the Stacker, and how it is being used at
Brown's programming languages course. The Stacker is implemented as a
Racket `#lang`. It is similar to the Stepper but supports mutation and
depicts the trace of programs in terms of environments, heaps, and call
stacks rather than in terms of substitution.
:::
:::

::: speech
::: talk-time-div
[Saturday, 4:40PM EDT]{slot-time="2022-10-29T20:40:00Z"}
:::

[[Siddhartha Prasad
([Brown]{.p-org})](https://www.siddharthaprasad.com "Siddhartha Prasad"){.h-card}]{.speaker}

::: talk
Examplar: Making Hay from Wheat
:::

::: abstract
Novice programmers often begin coding with a poor understanding of the
task at hand and end up solving the wrong problem. To combat this,
students are often asked to explain the problem "in their own words".
What words can students meaningfully use, how can we provide them
automated feedback, and how can we make this feedback maximally useful?
This talk presents concrete solutions to all these problems.
:::
:::
:::

::: section
::: sectionHeader
Sunday, October 30th
:::

::: paragraph
[Room]{.bold}: CIT 368
:::

::: speech
::: talk-time-div
[Saturday, 9:00AM EDT]{slot-time="2022-10-29T13:00:00Z"}
:::

[[Doors Open]{.bold}]{.speaker}
:::

::: paragraph
NB Breakfast won't be served! Please eat before coming to the event.
:::

::: speech
::: talk-time-div
[Sunday, 9:30AM EDT]{slot-time="2022-10-30T13:30:00Z"}
:::

[[Cameron Moy
([Northeastern]{.p-org})](http://camoy.name "Cameron Moy"){.h-card}]{.speaker}

::: talk
Contracts for protocols
:::

::: abstract
Racketeers often use contracts to express the obligations that their
libraries impose on, or promise to, clients. While Racket's contract
system can handle many specifications, it cannot naturally express
protocols. For example, a specification may constrain the permitted call
sequence of functions, or the context in which functions may be applied.
This talk will present several extensions to Racket's contract system
that attempt to fill this gap.

::: bio-div
[Bio: ]{.bold}Cameron is a Ph.D. student studying programming languages
at Northeastern University. He spends most of his time thinking about
how to make Racket's contract system better for developers.
:::
:::
:::

::: speech
::: talk-time-div
[Sunday, 10:00AM EDT]{slot-time="2022-10-30T14:00:00Z"}
:::

[[Sorawee Porncharoenwase
([Washington]{.p-org})](https://github.com/sorawee "Sorawee Porncharoenwase"){.h-card}]{.speaker}

::: talk
fmt: A Racket code formatter
:::

::: abstract
[fmt](https://pkgs.racket-lang.org/package/fmt) is a code formatter for
Racket. Its applications range from teaching beginners the Racket coding
conventions to allowing frictionless collaborative projects. As Racket
allows user-defined macros and has a relatively non-traditional code
style, fmt faces unique challenges: it must be extensible yet expressive
enough to capture the style. This talk will cover the design of fmt, how
it overcomes these challenges, and how to use our code formatting DSL to
extend fmt.
:::
:::

::: speech
::: talk-time-div
[Sunday, 10:30AM EDT]{slot-time="2022-10-30T14:30:00Z"}
:::

[[Ben
Greenman](http://cs.brown.edu/people/bgreenma/ "Ben Greenman")]{.speaker}

::: talk
Summary of the Summer of `#lang` (Fun + Games III)
:::

::: abstract
Come learn about the [amazing
entries](https://github.com/lang-party/Summer2022) to this summer's
`#lang` party! Submissions include new languages, improved languages,
language ideas, and Standard ML.

::: bio-div
[Bio: ]{.bold}Ben is a postdoc at Brown University and a co-organizer of
the lang party with Stephen DeGabrielle.
:::
:::
:::

::: speech
::: talk-time-div
[Sunday, 11:00AM EDT]{slot-time="2022-10-30T15:00:00Z"}
:::

[[Coffee]{.bold}]{.speaker}
:::

::: speech
::: talk-time-div
[Sunday, 11:30AM EDT]{slot-time="2022-10-30T15:30:00Z"}
:::

[[Sam Tobin-Hochstadt
([Indiana]{.p-org})](https://samth.github.io "Sam Tobin-Hochstadt"){.h-card}]{.speaker}

::: talk
The State of Racket
:::
:::

::: speech
::: talk-time-div
[Sunday, 12:00PM EDT]{slot-time="2022-10-30T16:00:00Z"}
:::

[Racket Management]{.speaker}

::: talk
Racket Town Hall
:::

::: abstract
Please come with your big questions and discussion topics.
:::
:::
:::

::: section
::: sectionHeader
Registration
:::

::: paragraph
The registration form is
[[here](https://payment.brown.edu:443/C20460_ustores/web/product_detail.jsp?PRODUCTID=4596&FROMQRCODE=true&SINGLESTORE=true "Register here for RacketCon 2022")]{.bold}.
A ticket costs \$25 and gives you admission to all the talks and coffee
breaks and the company of your fellow Racketeers.
:::

::: paragraph
[Optional Conference Dinner]{.bold} On Saturday evening you are welcome
to join us for the conference dinner at [Kebob and
Curry](https://www.kabobandcurry.com "Kebob and Curry"), a nearby Indian
restaurant. Dinner is optional, and is not included in the base price of
\$25. If you want to join the dinner, it costs \$35 on top of the ticket
price. When registering, you can indicate whether you wish to come to
dinner, so you will end up paying either \$25 or \$60. The restaurant is
at [261 Theyer
Street](https://www.google.com/maps/dir/''/kabob+and+curry+tableup/@41.8288963,-71.4706097,12z/data=!3m1!4b1!4m8!4m7!1m0!1m5!1m1!1s0x89e44523638d95cb:0xf16a90acc6b80f71!2m2!1d-71.4005698!2d41.8289176 "Directions to Kabob & Curry"),
very close to campus.
:::

::: paragraph
If you intend to come, please register at your earliest convenience!
:::
:::

::: section
::: sectionHeader
COVID-19 Policy
:::

::: paragraph
RacketCon 2022 will be governed by [the COVID-19 policy in place at the
conference
venue](https://healthy.brown.edu/campus-activity-status "Summary of current COVID-19 health protocols on the Brown University campus")
(Brown University). Please familiarize yourself with it before coming.
Because the pandemic is not static, the policy may change. Take one last
look at Brown's COVID-19 policy shortly before coming to campus. Once
you're on campus, you are expected to comply with the policy.
:::
:::

::: section
::: sectionHeader
Friendly Policy
:::

::: paragraph
The proceedings of RacketCon are expected to take place under the Racket
[Friendly Environment Policy](https://racket-lang.org/friendly.html).
:::
:::

::: section
::: sectionHeader
Getting There
:::

::: paragraph
The Brown Computer Science Department has put together [a great
page](https://cs.brown.edu/about/directions/) with instructions for how
to reach the department by plane, train, or car. Once you're at the
right building, RacketCon signs will guide you to the RacketCon place.
:::
:::

::: section
::: sectionHeader
Accommodation
:::

::: paragraph
Stay wherever you want! There are plenty of hotels in the area.
:::

::: paragraph
That said, we have reserved blocks at two local hotels. The booking
links below may still work even if all rooms in the block have been
booked and the discount has expired. You may be guided to a generic
booking form unconnected to RacketCon. In no particular order:
:::

-   [[Hampton Inn &
    Suites](https://www.hilton.com/en/attend-my-event/pvdwyhx-bcr-103bbe07-4367-4aef-8cd5-0a6f6c5f418c/)]{.bold}
-   [[Homewood
    Suites](https://www.my-event.hilton.com/pvdexhw-brg-9e543c15-7dce-4fb0-aaa5-1d1c1f4020ec/)]{.bold}
:::

::: section
::: sectionHeader
Previous RacketCons
:::

::: larger
[2021](https://con.racket-lang.org/2021/) ∙
[2020](https://con.racket-lang.org/2020/) ∙
[2019](https://con.racket-lang.org/2019/) ∙
[2018](https://con.racket-lang.org/2018/) ∙
[2017](https://con.racket-lang.org/2017/) ∙
[2016](https://con.racket-lang.org/2016/) ∙
[2015](https://con.racket-lang.org/2015/) ∙
[2014](https://con.racket-lang.org/2014/) ∙
[2013](https://con.racket-lang.org/2013/) ∙
[2012](https://con.racket-lang.org/2012/) ∙
[2011](https://con.racket-lang.org/2011/)
:::
:::
:::
