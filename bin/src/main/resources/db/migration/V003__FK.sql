alter table cliente add constraint fk_cliente_cidade foreign key(cidade_id) references cidade(id);

insert into cidade(nome,estado) values ('Lençóis Pta','SP'),('Macatuba','SP'),('Lancaster', 'CA'),
('San Antonio', 'TX'),
('Iowa City', 'IA'),
('Phoenix', 'AZ'),
('Seattle', 'WA'),
('Lancaster', 'PA'),
('Morgantown', 'WV'),
('Boulder', 'CO'),
('Charlotte', 'NC'),
('Saint Paul', 'MN'),
('Springfield', 'IL'),
('Springfield', 'IL'),
('Tulsa', 'OK'),
('Trenton', 'NJ'),
('Cleveland', 'OH'),
('Youngstown', 'OH'),
('Baton Rouge', 'LA'),
('Knoxville', 'TN'),
('Austin', 'TX'),
('New Haven', 'CT'),
('Topeka', 'KS'),
('Cleveland', 'OH'),
('Orange', 'CA'),
('Dallas', 'TX'),
('Bloomington', 'IL'),
('Indianapolis', 'IN'),
('Roanoke', 'VA'),
('El Paso', 'TX'),
('Chicago', 'IL'),
('Lubbock', 'TX'),
('New York City', 'NY'),
('San Francisco', 'CA'),
('Hartford', 'CT'),
('Great Neck', 'NY'),
('Cleveland', 'OH'),
('Waltham', 'MA'),
('Chicago', 'IL'),
('Winston Salem', 'NC'),
('Des Moines', 'IA'),
('Topeka', 'KS'),
('South Lake Tahoe', 'CA'),
('Salt Lake City', 'UT'),
('Sacramento', 'CA'),
('Indianapolis', 'IN'),
('Des Moines', 'IA'),
('Carol Stream', 'IL'),
('Fairbanks', 'AK'),
('Washington', 'DC'),
('Colorado Springs', 'CO'),
('Huntsville', 'AL'),
('Toledo', 'OH'),
('Columbus', 'OH'),
('Grand Rapids', 'MI'),
('Salt Lake City', 'UT'),
('Atlanta', 'GA'),
('Hollywood', 'FL'),
('Cleveland', 'OH'),
('New York City', 'NY'),
('Dearborn', 'MI'),
('Las Vegas', 'NV'),
('Asheville', 'NC'),
('Petaluma', 'CA'),
('Bismarck', 'ND'),
('Pensacola', 'FL'),
('New York City', 'NY'),
('Panama City', 'FL'),
('Saint Paul', 'MN'),
('Danbury', 'CT'),
('New Orleans', 'LA'),
('Tulsa', 'OK'),
('Wilmington', 'DE'),
('Baton Rouge', 'LA'),
('Pensacola', 'FL'),
('San Diego', 'CA'),
('Winter Haven', 'FL'),
('Canton', 'OH'),
('Los Angeles', 'CA'),
('Atlanta', 'GA'),
('New York City', 'NY'),
('Wichita', 'KS'),
('Raleigh', 'NC'),
('Chicago', 'IL'),
('Johnson City', 'TN'),
('Jefferson City', 'MO'),
('Brooklyn', 'NY'),
('Brooklyn', 'NY'),
('Staten Island', 'NY'),
('Reston', 'VA'),
('Hot Springs National Park', 'AR'),
('Bethesda', 'MD'),
('Saint Louis', 'MO'),
('Vancouver', 'WA'),
('Vancouver', 'WA'),
('San Antonio', 'TX'),
('Durham', 'NC'),
('Denver', 'CO'),
('Aurora', 'IL'),
('Miami', 'FL'),
('Houston', 'TX'),
('Tacoma', 'WA');


insert into cliente(nome,telefone,cidade_id) values ('Lucas','998514728',1),('Bidu','998776655',2);