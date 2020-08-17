1. How to run
	step1: Load in the project.pl file.
	step2: Open BProlog terminal and type in the location of the file ['\......\project.pl']
	step3: To know if "h4" is attacked type "attack(h4)" and can be performed for every other attack.
			"yes" if the host can be comprimised.
			"no" if the host is not comprimised.
			

Vinay Mohan Behara 

3. Description
	The execution goes on in two parts. The first part is the Facts of the system.
	Facts: Here, we have the facts as the connections between our hosts(which are given in the question) and also their corresponding vulnerabilities.
			We have two predefined vulnerabilities vul1 and vul2, they are unique specifications.
	Rules: We design the flow how to define the attack for a particular host.
			for vulnerability 1 it only needs one host to be comprimised.
			for vulnerability 2 it needs atleast two hosts to be comprimised.

4. Output
	B-Prolog Version 8.1, All rights reserved, (C) Afany Software 1994-2014.
	| ?- ['/Users/swapn/Desktop/project.pl']
	consulting::/Users/swapn/Desktop/project.pl

	yes
	| ?- attack(h1)

	yes
	| ?- attack(h2)

	yes
	| ?- attack(h3)

	yes
	| ?- attack(h4)

	yes
	| ?- attack(h5)

	yes
	| ?- attack(h6)

	yes
	| ?- attack(h7)

	yes
			
