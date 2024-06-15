
--Nome do medico ou outro profisiional
create table app.prescription
(
    prescription_id bigserial,
    prescription_unique uuid,
    presciption_url varchar(200),
    facility_id int,
    professional_id int,
    created_by integer not null,
	created_on 	timestamp with time zone default current_timestamp,
	modified_by integer not null,
	modified_on timestamp with time zone default current_timestamp,
	constraint pk_prescription primary key (prescription_id),
    constraint fk_prescription_facility foreign key (facility_id) references app.facility(facility_id),
    constraint fk_prescription_professional foreign key (professional_id) references app.professional(professional_id)
)