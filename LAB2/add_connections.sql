ALTER TABLE ill
ADD CONSTRAINT ill_unique UNIQUE (email);

ALTER TABLE recipe
ADD CONSTRAINT recipe_fk FOREIGN KEY (ill_id)
REFERENCES ill (id)
ON DELETE CASCADE;

ALTER TABLE given_orders
ADD CONSTRAINT recipe_id_fk FOREIGN KEY (recipe_id)
REFERENCES recipe (id)
ON DELETE NO ACTION;

ALTER TABLE given_orders
ADD CONSTRAINT receptionist_id_fk FOREIGN KEY (receptionist_id)
REFERENCES receptionist (id)
ON DELETE NO ACTION;

ALTER TABLE receptionist
ADD CONSTRAINT receptionist_fk FOREIGN KEY (drugstore_id)
REFERENCES drugstore (id)
ON DELETE CASCADE;

ALTER TABLE drug_application
ADD CONSTRAINT application_fk FOREIGN KEY (drug_id)
REFERENCES prepared_drugs (id)
ON DELETE CASCADE;

ALTER TABLE prepared_drugs
ADD CONSTRAINT prepared_fk FOREIGN KEY (drugstore_id)
REFERENCES drugstore (id)
ON DELETE CASCADE;

ALTER TABLE handmade_drugs
ADD CONSTRAINT handmade_fk FOREIGN KEY (drugstore_id)
REFERENCES drugstore (id)
ON DELETE CASCADE;

ALTER TABLE technology_directory
ADD CONSTRAINT directory_fk FOREIGN KEY (drug_id)
REFERENCES handmade_drugs (id)
ON DELETE CASCADE;