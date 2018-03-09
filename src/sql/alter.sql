
--- PRIMARY KEYS
ALTER TABLE ONLY file               ADD CONSTRAINT file_id_pkey                         PRIMARY KEY (id);

--- FILE
ALTER TABLE ONLY file               ADD CONSTRAINT file_type_id_fkey                    FOREIGN KEY (type_id)   REFERENCES ref (obj_id)
                                                                                        ON UPDATE CASCADE ON DELETE RESTRICT;
ALTER TABLE ONLY file               ADD CONSTRAINT file_state_id_fkey                   FOREIGN KEY (state_id)  REFERENCES ref (obj_id)
                                                                                        ON UPDATE CASCADE ON DELETE RESTRICT;
CREATE INDEX                        file_state_id_idx                                   ON file (state_id);
