0.7::str(dry).
0.25::str(wet).
0.05::str(snow_covered).

0.1::flw.
0.9::\+flw.

0.99::b.
0.01::\+b.

0.9::k.

0.99:: li :- v, b, k.
0.01:: li :- v, b, \+k.
0.01:: li :- v, \+b, k.
0.001:: li :- v, \+b, \+k.
0.3:: li :- \+v, b, k.
0.005:: li :- \+v, b, \+k.
0.005:: li :- \+v, \+b, k.
0:: li :- \+v, \+b, \+k.

0.7::r :- str(dry), flw.
0.8::r :- str(wet), flw.
0.9::r :- str(snow_covered), flw.
0.1::r :- str(dry), \+flw.
0.4::r :- str(wet), \+flw.
0.5::r :- str(snow_covered), \+flw.

0.9::v :- r.

evidence(str(snow_covered), true).
query(v).

% resposta = 0.5267493