Case	Study:		New	Haven	Urgent Care

This project is	to create	a	database for the New Haven Urgent	Care.	The	care	
center	is	a	stand-alone	urgent	care	that	is	not	associated	with	any	one	hospital	
system	but	was	created	to	provide	affordable	health	care	to	the	wider	community.		
The	current	system	is	antiquated	and	needs	replacing.		

In	fact,	nearly	everything	is	still	done	on	paper	and	billing	has	become	a	nightmare.		
Ideally,	the	billing	department	will be	fully	automated	but	for	now	you	are	only	tasked	with	
getting	the	information	in	the	system	for	the	billing	department	(and not	worrying	about	the	
billing	itself.)		The	administrators	of	the	urgent	care	want	to	ensure that proper	
billing	is	performed	and	that	patient	records	are	maintained	in	an	efficient and	
effective	manner.		After	speaking	with	a	number	of	employees	of	the	urgent	care	
including	administrators,	clerks,	and	medical	providers	you	have	come	up	with	the	
following	description	of	what	is	necessary	to	create	the	database:

• Patient:		A person	who	is	treated	at	the	urgent	care	facility.		 Each patient	has	
a	unique	patient	identifier	(PID),	name,	address,	phone	number,	emergency	
contact	information,	dob,	and	insurance	information.		If	the	patient is	under	
the	age	of	18,	parent/guardian	information	must	be	maintained.

• Insurance	Providers: Many	patients	that	will	be	seen	have	insurance but	not	
all	will	have	insurance. The	intake	clerk	will	collect	all	information	from	the	
patient	by	requesting	their	insurance	card	and	inputting	their	information	in	
the	database. If	a	patient’s	insurance	information	changes,	the	old	
information	must	be	stored	and	be	retrievable	so	that	billing	may	properly	
occur. You	will	need	to	keep	track	of	the	dates	that	the	insurance	
information	is	valid. The	current	insurance	information	will	have	an	end	
date	with	no	value. If	a	patient	does	not	have	insurance,	a	record	must	be	
created	denoting	this	information. Copays	are	collected	at	the	time	of	service	
and	may	be	paid	for	by	cash	or	credit	card. Uninsured	patients	are	sent	bills	
via	mail	by	the	billing	department.

• Service	Provider:		A	patient	may	be	seen	by	doctors	and/or	physician	
assistants.		If	multiple	service	providers	see	a	patient,	the	first	assigned	
service	provider is	considered	to	be	the	primary	provider	and	they	are	
responsible	for	logging	the	diagnosis	and	notes.		A	service provider	is	
identified	by	a	unique	service	provider	ID	and	name.		 It	is	possible	to	have	
more	than	one	service	provider	be	consulted	for	a	patient’s	diagnosis.

• Diagnosis:		A	patient	needs	to	have	a	diagnosis	logged	by	the	primary	service	
provider.		The	International	Classification	of	Diseases		(ICD)	is	used	to	
identify	the	diagnosis/diagnoses.		The	ICD-10-CM	is	used	to	code	the	
patient’s	condition.		Each	diagnosis	is	coded	with	the	ICD-10-CM	code	and	
name.

• Treatment:		Patients	are	treated	onsite	and	may have	additional	
tests/procedures	ordered that	are	completed	(e.g.	lab	work,	x-rays).
are	performed	at	the	urgent	care	facilities.		The	ICD-10-PCS	codes	are	used	to	
account	for	these	treatments.		Each	test/procedure	is	identified	by	its	ICD10-PCS	code	and	name.

• Follow Up	Orders:		Patients	may	leave	the	urgent	care	with	a	initial	diagnosis	
and	have	tests/procedures	ordered	to	be	performed	at	other	care	centers	
(e.g.	hospitals,	clinics).		New	Haven	is	not	responsible	for	the	billing	of	these	
offsite	tests/procedures.		These	test/procedures	need	to	be	coded	using	the	
ICD-10-PCS	codes.		The	name,	location,	telephone	number	of	the	assigned	
follow up	location	needs	to	be	annotated	on	the	order.		

• Employees:		All	employees	of	the	care	center	that	are	involved	in	data	
collection	for	a	patient	must	be	identified	by	an	employee	ID	and	name.

• Supplies/Equipment:		All	medical	or	surgical items used	in	the	care	of	the	
patient	must	be	accounted	for	by	the	medical	staff	(e.g.	slings,	casts,	crutches,	
sutures).			Every	medical	or	surgical	item	used	in	the	care	center	has	a	unique	
item	identifier,	name	and	cost.		All	items	must	be	accounted	for	so	that	the	
patient	may	be	properly	billed	by	the	center.		Day	to	day	items	used	in	the	
running	of	the	clinic	are	not	charged	to	the	patient	(e.g.	tongue	depressors,	
culturing	tubes,	gowns,	towels.)		

• Initial	Assessment:		An	initial	assessment	must	be	performed	for	each	
patient.		The	patient’s	vital	records are	collected	by	a	nurse.		This	is	
performed	for	all	patients	that	are	capable	of	having	their	information	
collected.		The	initial	assessment	needs	to	have	the	nurse’s	id	on	it.		Each	
assessment	can	be	for	only	one	patient	and	only	one	nurse	can	complete	the	
assessment.		The	nurse’s	id	must	listed	on	the	assessment.		

Additional	Notes:
• Each	employee	is	assigned	to	work	in	one	and	only	one	department	of	the	
urgent	care	center.		Every	department	has	at	least	one	employee	assigned	to	
it.		The	departments	include	billing,	payroll,	intake,	assessment,	
administration,	IT,	and	patient	care.		

• A	patient	is	initially	seen	by	the	intake	clerk.		They	collect	the	medical	
information	of	the	patient,	collect	copays,	and	an	online form	is	generated	to	
be	used	by the	nurses	for	the	initial	assessment	and	physicians/physician	
assistants	to	annotate	notes,	diagnoses,	and	billing	information.		The	date	of	
the	visit	is	necessary	and	the	clerk’s	employee	ID	is	assigned	to	the	record	as	
part	of	the	documentation.

• After	intake,	the	patient’s	vital	records	are collected	by	a	nurse.		The	patient’s	
height,	weight,	blood	pressure,	temperature,	and	medical	condition	
description	is	collected (e.g.	symptoms).		In	addition,	all	medications	are	
listed.			This	is	the	initial	assessment.

• The	patient	is	taken	to	a	room	to	be seen	by	the	doctor.		At	least one	doctor	
or	physician	assistant	must	see	the	patient.		Each	patient	must	have	a	medical	
diagnosis	made	by	the	primary	physician/physician’s	assistant.

• Patients	may	be	referred	to	hospitals	and	other	clinics	by	a	
physician/physician’s	assistant.		A	patient	does	not	have	to	have	a	referral.

• Medical	items	need	to	be	accounted	for	by	the	attending	nurse.		The	doctor	
must	annotate	on	the	medical	record	all	billable	supplies	and	items	used	
during	the	examination	and	tests.			The	quantity	and	total	cost	must	be	
determined	for	each	visit	and	annotated	on	the	medical	record	generated	for	
each	patient’s	visit.	
