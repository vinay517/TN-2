%defining_facts
connection(h1,h4).
connection(h2,h4).
connection(h4,h5).
connection(h3,h5).
connection(h4,h6).
connection(h5,h7).
connection(h6,h7).
access(h1).
access(h2).
access(h3).  
				%defining_the_vulnerabilities
vul1(h1).
vul1(h2).
vul1(h3).
vul1(h5).
vul1(h6).
vul2(h4).
vul2(h7).

%defining_rules

attack(X) :-  %if_vulnerability_1_and_its_the_access_point
vul1(X),
access(X).

attack(X) :-  %if_vulnerability_1_and_to_find_its_connection_is_attacked_or_not
vul1(X),
connection(Y,X),
attack(Y).

attack(X) :-  %if_vulnerability_2_and_its_the_access_point
vul2(X),
access(X).

attack(X) :-   %if_vulnerability_2_and_to_find_its_connection_is_attacked_or_not
vul2(X),
connection(Y,X),
connection(Z,X),
attack(Y),
attack(Z).

