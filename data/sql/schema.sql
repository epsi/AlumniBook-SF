CREATE TABLE address (did INT AUTO_INCREMENT, lid INT NOT NULL, link_type CHAR(1), area VARCHAR(50), building VARCHAR(50), street VARCHAR(50), postal_code VARCHAR(7), country_id SMALLINT DEFAULT 99, province_id TINYINT, district_id SMALLINT, address VARCHAR(175), region VARCHAR(110), PRIMARY KEY(did)) ENGINE = INNODB;
CREATE TABLE a_certifications (did INT AUTO_INCREMENT, aid INT NOT NULL, certification VARCHAR(50) NOT NULL, institution VARCHAR(20), INDEX aid_idx (aid), PRIMARY KEY(did)) ENGINE = INNODB;
CREATE TABLE a_communities (did INT AUTO_INCREMENT, aid INT NOT NULL, cid SMALLINT NOT NULL, class_year SMALLINT NOT NULL, class_sub VARCHAR(15), community VARCHAR(70), department_id SMALLINT, faculty_id SMALLINT, program_id SMALLINT, INDEX aid_idx (aid), INDEX cid_idx (cid), INDEX department_id_idx (department_id), INDEX faculty_id_idx (faculty_id), INDEX program_id_idx (program_id), PRIMARY KEY(did)) ENGINE = INNODB;
CREATE TABLE a_competencies (did INT AUTO_INCREMENT, aid INT NOT NULL, competency_id TINYINT NOT NULL, description VARCHAR(35), INDEX aid_idx (aid), INDEX competency_id_idx (competency_id), PRIMARY KEY(did)) ENGINE = INNODB;
CREATE TABLE contacts (did INT AUTO_INCREMENT, lid INT NOT NULL, link_type CHAR(1), ct_id TINYINT NOT NULL, contact VARCHAR(50) NOT NULL, PRIMARY KEY(did)) ENGINE = INNODB;
CREATE TABLE a_degrees (did INT AUTO_INCREMENT, aid INT NOT NULL, strata_id TINYINT, admitted SMALLINT, graduated SMALLINT, degree VARCHAR(20), institution VARCHAR(40) NOT NULL, major VARCHAR(40), minor VARCHAR(40), concentration VARCHAR(40), INDEX aid_idx (aid), INDEX strata_id_idx (strata_id), PRIMARY KEY(did)) ENGINE = INNODB;
CREATE TABLE a_experiences (did INT AUTO_INCREMENT, aid INT NOT NULL, organization VARCHAR(35) NOT NULL, description VARCHAR(50), job_position VARCHAR(35), year_in SMALLINT, year_out SMALLINT, INDEX aid_idx (aid), PRIMARY KEY(did)) ENGINE = INNODB;
CREATE TABLE a_o_map (mid INT AUTO_INCREMENT, aid INT NOT NULL, org_id INT NOT NULL, department VARCHAR(60), description VARCHAR(40), struktural VARCHAR(50), fungsional VARCHAR(50), job_type_id TINYINT, job_position_id TINYINT, created_at DATETIME NOT NULL, updated_at DATETIME NOT NULL, INDEX aid_idx (aid), INDEX org_id_idx (org_id), INDEX job_type_id_idx (job_type_id), INDEX job_position_id_idx (job_position_id), PRIMARY KEY(mid)) ENGINE = INNODB;
CREATE TABLE address (did INT AUTO_INCREMENT, lid INT NOT NULL, link_type CHAR(1), area VARCHAR(50), building VARCHAR(50), street VARCHAR(50), postal_code VARCHAR(7), country_id SMALLINT DEFAULT 99, province_id TINYINT, district_id SMALLINT, address VARCHAR(175), region VARCHAR(110), INDEX address_link_type_idx (link_type), PRIMARY KEY(did)) ENGINE = INNODB;
CREATE TABLE alumni (aid INT AUTO_INCREMENT, name VARCHAR(50) NOT NULL UNIQUE, prefix VARCHAR(15), suffix VARCHAR(15), note MEDIUMTEXT, gender CHAR(1), birthplace VARCHAR(15), birthdate DATE, religion_id TINYINT, fullname VARCHAR(80), created_at DATETIME NOT NULL, updated_at DATETIME NOT NULL, INDEX religion_id_idx (religion_id), PRIMARY KEY(aid)) ENGINE = INNODB;
CREATE TABLE biz_field_translation (biz_field_id TINYINT, biz_field VARCHAR(35) NOT NULL UNIQUE, lang CHAR(2), PRIMARY KEY(biz_field_id, lang)) ENGINE = INNODB;
CREATE TABLE biz_field (biz_field_id TINYINT, description MEDIUMTEXT, PRIMARY KEY(biz_field_id)) ENGINE = INNODB;
CREATE TABLE community (cid SMALLINT AUTO_INCREMENT, community VARCHAR(50) NOT NULL UNIQUE, brief VARCHAR(2) UNIQUE, department_id SMALLINT NOT NULL, faculty_id SMALLINT NOT NULL, program_id SMALLINT NOT NULL, INDEX department_id_idx (department_id), INDEX faculty_id_idx (faculty_id), INDEX program_id_idx (program_id), PRIMARY KEY(cid)) ENGINE = INNODB;
CREATE TABLE competency_translation (competency_id TINYINT, competency VARCHAR(30) NOT NULL UNIQUE, lang CHAR(2), PRIMARY KEY(competency_id, lang)) ENGINE = INNODB;
CREATE TABLE competency (competency_id TINYINT AUTO_INCREMENT, memo MEDIUMTEXT, PRIMARY KEY(competency_id)) ENGINE = INNODB;
CREATE TABLE contact_type_translation (ct_id TINYINT, contact_type VARCHAR(25) NOT NULL UNIQUE, lang CHAR(2), PRIMARY KEY(ct_id, lang)) ENGINE = INNODB;
CREATE TABLE contact_type (ct_id TINYINT, PRIMARY KEY(ct_id)) ENGINE = INNODB;
CREATE TABLE contacts (did INT AUTO_INCREMENT, lid INT NOT NULL, link_type CHAR(1), ct_id TINYINT NOT NULL, contact VARCHAR(50) NOT NULL, INDEX contacts_link_type_idx (link_type), PRIMARY KEY(did)) ENGINE = INNODB;
CREATE TABLE country (country_id SMALLINT, country VARCHAR(35) NOT NULL UNIQUE, PRIMARY KEY(country_id)) ENGINE = INNODB;
CREATE TABLE department_translation (department_id SMALLINT, department VARCHAR(40) NOT NULL UNIQUE, lang CHAR(2), PRIMARY KEY(department_id, lang)) ENGINE = INNODB;
CREATE TABLE department (department_id SMALLINT AUTO_INCREMENT, faculty_id SMALLINT, INDEX faculty_id_idx (faculty_id), PRIMARY KEY(department_id)) ENGINE = INNODB;
CREATE TABLE district (district_id SMALLINT, district VARCHAR(30) NOT NULL UNIQUE, province_id TINYINT NOT NULL, INDEX province_id_idx (province_id), PRIMARY KEY(district_id)) ENGINE = INNODB;
CREATE TABLE faculty_translation (faculty_id SMALLINT, faculty VARCHAR(35) NOT NULL UNIQUE, lang CHAR(2), PRIMARY KEY(faculty_id, lang)) ENGINE = INNODB;
CREATE TABLE faculty (faculty_id SMALLINT AUTO_INCREMENT, PRIMARY KEY(faculty_id)) ENGINE = INNODB;
CREATE TABLE job_position_translation (job_position_id TINYINT, job_position VARCHAR(50) NOT NULL UNIQUE, lang CHAR(2), PRIMARY KEY(job_position_id, lang)) ENGINE = INNODB;
CREATE TABLE job_position (job_position_id TINYINT, PRIMARY KEY(job_position_id)) ENGINE = INNODB;
CREATE TABLE job_type_translation (job_type_id TINYINT, job_type VARCHAR(50) NOT NULL UNIQUE, lang CHAR(2), PRIMARY KEY(job_type_id, lang)) ENGINE = INNODB;
CREATE TABLE job_type (job_type_id TINYINT, PRIMARY KEY(job_type_id)) ENGINE = INNODB;
CREATE TABLE o_fields (did INT AUTO_INCREMENT, org_id INT NOT NULL, biz_field_id TINYINT NOT NULL, description VARCHAR(35), INDEX org_id_idx (org_id), INDEX biz_field_id_idx (biz_field_id), PRIMARY KEY(did)) ENGINE = INNODB;
CREATE TABLE organization (oid INT AUTO_INCREMENT, name VARCHAR(50) NOT NULL UNIQUE, prefix VARCHAR(15), suffix VARCHAR(15), note MEDIUMTEXT, product VARCHAR(60), fullname VARCHAR(80), created_at DATETIME NOT NULL, updated_at DATETIME NOT NULL, root_id BIGINT, lft INT, rgt INT, level SMALLINT, PRIMARY KEY(oid)) ENGINE = INNODB;
CREATE TABLE program_translation (program_id SMALLINT, program VARCHAR(20) NOT NULL UNIQUE, lang CHAR(2), PRIMARY KEY(program_id, lang)) ENGINE = INNODB;
CREATE TABLE program (program_id SMALLINT AUTO_INCREMENT, PRIMARY KEY(program_id)) ENGINE = INNODB;
CREATE TABLE province (province_id TINYINT, province VARCHAR(30) NOT NULL UNIQUE, PRIMARY KEY(province_id)) ENGINE = INNODB;
CREATE TABLE religion (religion_id TINYINT AUTO_INCREMENT, religion VARCHAR(20) NOT NULL UNIQUE, PRIMARY KEY(religion_id)) ENGINE = INNODB;
CREATE TABLE strata (strata_id TINYINT, strata VARCHAR(15) NOT NULL UNIQUE, PRIMARY KEY(strata_id)) ENGINE = INNODB;
CREATE TABLE sf_guard_forgot_password (id BIGINT AUTO_INCREMENT, user_id BIGINT NOT NULL, unique_key VARCHAR(255), expires_at DATETIME NOT NULL, created_at DATETIME NOT NULL, updated_at DATETIME NOT NULL, INDEX user_id_idx (user_id), PRIMARY KEY(id)) ENGINE = INNODB;
CREATE TABLE sf_guard_group (id BIGINT AUTO_INCREMENT, name VARCHAR(255) UNIQUE, description TEXT, created_at DATETIME NOT NULL, updated_at DATETIME NOT NULL, PRIMARY KEY(id)) ENGINE = INNODB;
CREATE TABLE sf_guard_group_permission (group_id BIGINT, permission_id BIGINT, created_at DATETIME NOT NULL, updated_at DATETIME NOT NULL, PRIMARY KEY(group_id, permission_id)) ENGINE = INNODB;
CREATE TABLE sf_guard_permission (id BIGINT AUTO_INCREMENT, name VARCHAR(255) UNIQUE, description TEXT, created_at DATETIME NOT NULL, updated_at DATETIME NOT NULL, PRIMARY KEY(id)) ENGINE = INNODB;
CREATE TABLE sf_guard_remember_key (id BIGINT AUTO_INCREMENT, user_id BIGINT, remember_key VARCHAR(32), ip_address VARCHAR(50), created_at DATETIME NOT NULL, updated_at DATETIME NOT NULL, INDEX user_id_idx (user_id), PRIMARY KEY(id)) ENGINE = INNODB;
CREATE TABLE sf_guard_user (id BIGINT AUTO_INCREMENT, first_name VARCHAR(255), last_name VARCHAR(255), email_address VARCHAR(255) NOT NULL UNIQUE, username VARCHAR(128) NOT NULL UNIQUE, algorithm VARCHAR(128) DEFAULT 'sha1' NOT NULL, salt VARCHAR(128), password VARCHAR(128), is_active TINYINT(1) DEFAULT '1', is_super_admin TINYINT(1) DEFAULT '0', last_login DATETIME, created_at DATETIME NOT NULL, updated_at DATETIME NOT NULL, INDEX is_active_idx_idx (is_active), PRIMARY KEY(id)) ENGINE = INNODB;
CREATE TABLE sf_guard_user_group (user_id BIGINT, group_id BIGINT, created_at DATETIME NOT NULL, updated_at DATETIME NOT NULL, PRIMARY KEY(user_id, group_id)) ENGINE = INNODB;
CREATE TABLE sf_guard_user_permission (user_id BIGINT, permission_id BIGINT, created_at DATETIME NOT NULL, updated_at DATETIME NOT NULL, PRIMARY KEY(user_id, permission_id)) ENGINE = INNODB;
ALTER TABLE a_certifications ADD CONSTRAINT a_certifications_aid_alumni_aid FOREIGN KEY (aid) REFERENCES alumni(aid) ON DELETE CASCADE;
ALTER TABLE a_communities ADD CONSTRAINT a_communities_program_id_program_program_id FOREIGN KEY (program_id) REFERENCES program(program_id) ON DELETE SET NULL;
ALTER TABLE a_communities ADD CONSTRAINT a_communities_faculty_id_faculty_faculty_id FOREIGN KEY (faculty_id) REFERENCES faculty(faculty_id) ON DELETE SET NULL;
ALTER TABLE a_communities ADD CONSTRAINT a_communities_department_id_department_department_id FOREIGN KEY (department_id) REFERENCES department(department_id) ON DELETE SET NULL;
ALTER TABLE a_communities ADD CONSTRAINT a_communities_cid_community_cid FOREIGN KEY (cid) REFERENCES community(cid) ON DELETE CASCADE;
ALTER TABLE a_communities ADD CONSTRAINT a_communities_aid_alumni_aid FOREIGN KEY (aid) REFERENCES alumni(aid) ON DELETE CASCADE;
ALTER TABLE a_competencies ADD CONSTRAINT a_competencies_competency_id_competency_competency_id FOREIGN KEY (competency_id) REFERENCES competency(competency_id) ON DELETE CASCADE;
ALTER TABLE a_competencies ADD CONSTRAINT a_competencies_aid_alumni_aid FOREIGN KEY (aid) REFERENCES alumni(aid) ON DELETE CASCADE;
ALTER TABLE a_degrees ADD CONSTRAINT a_degrees_strata_id_strata_strata_id FOREIGN KEY (strata_id) REFERENCES strata(strata_id) ON DELETE SET NULL;
ALTER TABLE a_degrees ADD CONSTRAINT a_degrees_aid_alumni_aid FOREIGN KEY (aid) REFERENCES alumni(aid) ON DELETE CASCADE;
ALTER TABLE a_experiences ADD CONSTRAINT a_experiences_aid_alumni_aid FOREIGN KEY (aid) REFERENCES alumni(aid) ON DELETE CASCADE;
ALTER TABLE a_o_map ADD CONSTRAINT a_o_map_org_id_organization_oid FOREIGN KEY (org_id) REFERENCES organization(oid) ON DELETE CASCADE;
ALTER TABLE a_o_map ADD CONSTRAINT a_o_map_job_type_id_job_type_job_type_id FOREIGN KEY (job_type_id) REFERENCES job_type(job_type_id) ON DELETE SET NULL;
ALTER TABLE a_o_map ADD CONSTRAINT a_o_map_job_position_id_job_position_job_position_id FOREIGN KEY (job_position_id) REFERENCES job_position(job_position_id) ON DELETE SET NULL;
ALTER TABLE a_o_map ADD CONSTRAINT a_o_map_aid_alumni_aid FOREIGN KEY (aid) REFERENCES alumni(aid) ON DELETE CASCADE;
ALTER TABLE alumni ADD CONSTRAINT alumni_religion_id_religion_religion_id FOREIGN KEY (religion_id) REFERENCES religion(religion_id) ON DELETE SET NULL;
ALTER TABLE biz_field_translation ADD CONSTRAINT biz_field_translation_biz_field_id_biz_field_biz_field_id FOREIGN KEY (biz_field_id) REFERENCES biz_field(biz_field_id) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE community ADD CONSTRAINT community_program_id_program_program_id FOREIGN KEY (program_id) REFERENCES program(program_id);
ALTER TABLE community ADD CONSTRAINT community_faculty_id_faculty_faculty_id FOREIGN KEY (faculty_id) REFERENCES faculty(faculty_id);
ALTER TABLE community ADD CONSTRAINT community_department_id_department_department_id FOREIGN KEY (department_id) REFERENCES department(department_id);
ALTER TABLE competency_translation ADD CONSTRAINT competency_translation_competency_id_competency_competency_id FOREIGN KEY (competency_id) REFERENCES competency(competency_id) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE contact_type_translation ADD CONSTRAINT contact_type_translation_ct_id_contact_type_ct_id FOREIGN KEY (ct_id) REFERENCES contact_type(ct_id) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE department_translation ADD CONSTRAINT department_translation_department_id_department_department_id FOREIGN KEY (department_id) REFERENCES department(department_id) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE department ADD CONSTRAINT department_faculty_id_faculty_faculty_id FOREIGN KEY (faculty_id) REFERENCES faculty(faculty_id);
ALTER TABLE district ADD CONSTRAINT district_province_id_province_province_id FOREIGN KEY (province_id) REFERENCES province(province_id);
ALTER TABLE faculty_translation ADD CONSTRAINT faculty_translation_faculty_id_faculty_faculty_id FOREIGN KEY (faculty_id) REFERENCES faculty(faculty_id) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE job_position_translation ADD CONSTRAINT jjjj_1 FOREIGN KEY (job_position_id) REFERENCES job_position(job_position_id) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE job_type_translation ADD CONSTRAINT job_type_translation_job_type_id_job_type_job_type_id FOREIGN KEY (job_type_id) REFERENCES job_type(job_type_id) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE o_fields ADD CONSTRAINT o_fields_org_id_organization_oid FOREIGN KEY (org_id) REFERENCES organization(oid) ON DELETE CASCADE;
ALTER TABLE o_fields ADD CONSTRAINT o_fields_biz_field_id_biz_field_biz_field_id FOREIGN KEY (biz_field_id) REFERENCES biz_field(biz_field_id) ON DELETE CASCADE;
ALTER TABLE program_translation ADD CONSTRAINT program_translation_program_id_program_program_id FOREIGN KEY (program_id) REFERENCES program(program_id) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE sf_guard_forgot_password ADD CONSTRAINT sf_guard_forgot_password_user_id_sf_guard_user_id FOREIGN KEY (user_id) REFERENCES sf_guard_user(id) ON DELETE CASCADE;
ALTER TABLE sf_guard_group_permission ADD CONSTRAINT sf_guard_group_permission_permission_id_sf_guard_permission_id FOREIGN KEY (permission_id) REFERENCES sf_guard_permission(id) ON DELETE CASCADE;
ALTER TABLE sf_guard_group_permission ADD CONSTRAINT sf_guard_group_permission_group_id_sf_guard_group_id FOREIGN KEY (group_id) REFERENCES sf_guard_group(id) ON DELETE CASCADE;
ALTER TABLE sf_guard_remember_key ADD CONSTRAINT sf_guard_remember_key_user_id_sf_guard_user_id FOREIGN KEY (user_id) REFERENCES sf_guard_user(id) ON DELETE CASCADE;
ALTER TABLE sf_guard_user_group ADD CONSTRAINT sf_guard_user_group_user_id_sf_guard_user_id FOREIGN KEY (user_id) REFERENCES sf_guard_user(id) ON DELETE CASCADE;
ALTER TABLE sf_guard_user_group ADD CONSTRAINT sf_guard_user_group_group_id_sf_guard_group_id FOREIGN KEY (group_id) REFERENCES sf_guard_group(id) ON DELETE CASCADE;
ALTER TABLE sf_guard_user_permission ADD CONSTRAINT sf_guard_user_permission_user_id_sf_guard_user_id FOREIGN KEY (user_id) REFERENCES sf_guard_user(id) ON DELETE CASCADE;
ALTER TABLE sf_guard_user_permission ADD CONSTRAINT sf_guard_user_permission_permission_id_sf_guard_permission_id FOREIGN KEY (permission_id) REFERENCES sf_guard_permission(id) ON DELETE CASCADE;
