-- SQL dump generated using DBML (dbml-lang.org)
-- Database: PostgreSQL
-- Generated at: 2025-04-16T08:43:36.680Z

CREATE TABLE "import_file" (
  "id" bigserial PRIMARY KEY,
  "document_type" varchar(50) NOT NULL,
  "file_name" varchar(255) NOT NULL,
  "original_name" varchar(255) NOT NULL,
  "status" varchar(50) NOT NULL,
  "size" int NOT NULL,
  "created_at" timestamptz NOT NULL DEFAULT (now())
);

CREATE TABLE "import_logs" (
  "id" bigserial PRIMARY KEY,
  "document_type" varchar(50) NOT NULL,
  "error_description" varchar(255) NOT NULL,
  "data" jsonb NOT NULL,
  "file_id" int NOT NULL,
  "created_at" timestamptz NOT NULL DEFAULT (now())
);

CREATE TABLE "national_identity_card" (
  "id" bigserial PRIMARY KEY,
  "application_id" varchar(50) DEFAULT null,
  "application_date" varchar(50) DEFAULT null,
  "application_reason" varchar(100) DEFAULT null,
  "document_number" varchar(50) NOT NULL,
  "expiring_on" varchar(50) NOT NULL,
  "issued_on" varchar(50) NOT NULL,
  "issued_in" varchar(150) DEFAULT null,
  "person_id" varchar(50) NOT NULL,
  "national_id_number" varchar(50) NOT NULL,
  "firstname" varchar(255) NOT NULL,
  "lastname" varchar(150) NOT NULL,
  "original_name" varchar(150) DEFAULT null,
  "spouse_name" varchar(150) DEFAULT null,
  "gender" varchar(10) NOT NULL,
  "birthdate" varchar(50) NOT NULL,
  "birthplace" varchar(150) DEFAULT null,
  "birth_country" varchar(150) DEFAULT null,
  "prefecture" varchar(100) DEFAULT null,
  "birth_certificate_number" varchar(50) DEFAULT null,
  "birth_certificate_issued_on" varchar(50) DEFAULT null,
  "birth_certificate_issued_in" varchar(150) DEFAULT null,
  "nationality_certificate_number" varchar(50) DEFAULT null,
  "nationality_certificate_issued_on" varchar(50) DEFAULT null,
  "profession" varchar(150) DEFAULT null,
  "marital_status" varchar(50) DEFAULT null,
  "address" varchar(255) DEFAULT null,
  "other_address" varchar(255) DEFAULT null,
  "height" int DEFAULT null,
  "particular_signs" varchar(255) DEFAULT null,
  "hair_color" varchar(50) DEFAULT null,
  "blood_group" varchar(50) DEFAULT null,
  "mother_firstname" varchar(150) DEFAULT null,
  "mother_lastname" varchar(150) DEFAULT null,
  "father_firstname" varchar(150) DEFAULT null,
  "father_lastname" varchar(150) DEFAULT null,
  "poc_firstname" varchar(150) DEFAULT null,
  "poc_lastname" varchar(150) DEFAULT null,
  "poc_address" varchar(255) DEFAULT null,
  "poc_phone" varchar(50) DEFAULT null,
  "photo" varchar(50) NOT NULL,
  "created_at" timestamptz NOT NULL DEFAULT (now()),
  "updated_at" timestamptz NOT NULL DEFAULT (now())
);

CREATE TABLE "passport" (
  "id" bigserial PRIMARY KEY,
  "application_id" varchar(50) DEFAULT null,
  "application_date" varchar(50) DEFAULT null,
  "application_reason" varchar(100) DEFAULT null,
  "document_type" varchar(50) DEFAULT null,
  "document_number" varchar(50) NOT NULL,
  "expiring_on" varchar(50) NOT NULL,
  "issued_on" varchar(50) NOT NULL,
  "issued_in" varchar(150) DEFAULT null,
  "hncr_id_number" varchar(50) DEFAULT null,
  "hncr_issued_on" varchar(50) DEFAULT null,
  "cnar_id_number" varchar(50) DEFAULT null,
  "cnar_issued_on" varchar(50) DEFAULT null,
  "person_id" varchar(50) NOT NULL,
  "national_id_number" varchar(50) DEFAULT null,
  "firstname" varchar(255) NOT NULL,
  "lastname" varchar(150) NOT NULL,
  "original_name" varchar(150) DEFAULT null,
  "spouse_name" varchar(150) DEFAULT null,
  "gender" varchar(10) NOT NULL,
  "birthdate" varchar(50) NOT NULL,
  "birthplace" varchar(150) DEFAULT null,
  "birth_country" varchar(150) DEFAULT null,
  "prefecture" varchar(100) DEFAULT null,
  "birth_certificate_number" varchar(50) DEFAULT null,
  "birth_certificate_issued_on" varchar(50) DEFAULT null,
  "birth_certificate_issued_in" varchar(150) DEFAULT null,
  "nationality_certificate_number" varchar(50) DEFAULT null,
  "nationality_certificate_issued_on" varchar(50) DEFAULT null,
  "profession" varchar(150) DEFAULT null,
  "marital_status" varchar(50) DEFAULT null,
  "address" varchar(255) DEFAULT null,
  "other_address" varchar(255) DEFAULT null,
  "height" int DEFAULT null,
  "particular_signs" varchar(255) DEFAULT null,
  "hair_color" varchar(50) DEFAULT null,
  "face_shape" varchar(50) DEFAULT null,
  "blood_group" varchar(50) DEFAULT null,
  "mother_firstname" varchar(150) DEFAULT null,
  "mother_lastname" varchar(150) DEFAULT null,
  "mother_nationality" varchar(150) DEFAULT null,
  "father_firstname" varchar(150) DEFAULT null,
  "father_lastname" varchar(150) DEFAULT null,
  "father_nationality" varchar(150) DEFAULT null,
  "poc_firstname" varchar(150) DEFAULT null,
  "poc_lastname" varchar(150) DEFAULT null,
  "poc_address" varchar(255) DEFAULT null,
  "poc_phone" varchar(50) DEFAULT null,
  "photo" varchar(50) NOT NULL,
  "created_at" timestamptz NOT NULL DEFAULT (now()),
  "updated_at" timestamptz NOT NULL DEFAULT (now())
);

CREATE TABLE "residence_permit" (
  "id" bigserial PRIMARY KEY,
  "application_id" varchar(50) DEFAULT null,
  "application_date" varchar(50) DEFAULT null,
  "application_reason" varchar(100) DEFAULT null,
  "document_type" varchar(50) DEFAULT null,
  "document_number" varchar(50) NOT NULL,
  "expiring_on" varchar(50) NOT NULL,
  "issued_on" varchar(50) NOT NULL,
  "issued_in" varchar(150) DEFAULT null,
  "passport_number" varchar(50) NOT NULL,
  "passport_issued_on" varchar(50) DEFAULT null,
  "passport_expiring_on" varchar(50) DEFAULT null,
  "visa_number" varchar(50) DEFAULT null,
  "visa_issued_on" varchar(50) DEFAULT null,
  "visa_expiring_on" varchar(50) DEFAULT null,
  "visa_type" varchar(50) DEFAULT null,
  "person_id" varchar(50) NOT NULL,
  "firstname" varchar(255) DEFAULT null,
  "lastname" varchar(150) DEFAULT null,
  "original_name" varchar(150) DEFAULT null,
  "gender" varchar(10) NOT NULL,
  "birthdate" varchar(50) NOT NULL,
  "birthplace" varchar(150) DEFAULT null,
  "birth_country" varchar(150) DEFAULT null,
  "nationality" varchar(150) NOT NULL,
  "birth_certificate_number" varchar(50) DEFAULT null,
  "birth_certificate_issued_on" varchar(50) DEFAULT null,
  "nationality_certificate_number" varchar(50) DEFAULT null,
  "nationality_certificate_issued_on" varchar(50) DEFAULT null,
  "profession" varchar(150) DEFAULT null,
  "religion" varchar(150) DEFAULT null,
  "marital_status" varchar(50) DEFAULT null,
  "address" varchar(255) DEFAULT null,
  "other_address" varchar(255) DEFAULT null,
  "height" int DEFAULT null,
  "particular_signs" varchar(255) DEFAULT null,
  "hair_color" varchar(50) DEFAULT null,
  "blood_group" varchar(50) DEFAULT null,
  "mother_maiden_firstname" varchar(150) DEFAULT null,
  "mother_firstname" varchar(150) DEFAULT null,
  "mother_lastname" varchar(150) DEFAULT null,
  "father_firstname" varchar(150) DEFAULT null,
  "father_lastname" varchar(150) DEFAULT null,
  "poc_firstname" varchar(150) DEFAULT null,
  "poc_lastname" varchar(150) DEFAULT null,
  "poc_address" varchar(255) DEFAULT null,
  "poc_phone" varchar(50) DEFAULT null,
  "bank_account_number" varchar(50) DEFAULT null,
  "bank_name" varchar(50) DEFAULT null,
  "tax_id_number" varchar(50) DEFAULT null,
  "criminal_record_number" varchar(50) DEFAULT null,
  "photo" varchar(50) NOT NULL,
  "created_at" timestamptz NOT NULL DEFAULT (now()),
  "updated_at" timestamptz NOT NULL DEFAULT (now())
);

CREATE TABLE "driving_licence" (
  "id" bigserial PRIMARY KEY,
  "application_id" varchar(50) DEFAULT null,
  "application_date" varchar(50) DEFAULT null,
  "application_reason" varchar(100) DEFAULT null,
  "document_number" varchar(50) NOT NULL,
  "expiring_on" varchar(50) NOT NULL,
  "issued_on" varchar(50) NOT NULL,
  "issued_in" varchar(150) DEFAULT null,
  "person_id" varchar(50) NOT NULL,
  "national_id_number" varchar(50) DEFAULT null,
  "firstname" varchar(255) DEFAULT null,
  "lastname" varchar(150) DEFAULT null,
  "original_name" varchar(150) DEFAULT null,
  "spouse_name" varchar(150) DEFAULT null,
  "gender" varchar(10) NOT NULL,
  "birthdate" varchar(50) NOT NULL,
  "birthplace" varchar(150) DEFAULT null,
  "birth_country" varchar(150) DEFAULT null,
  "nationality" varchar(150) NOT NULL,
  "birth_certificate_number" varchar(50) DEFAULT null,
  "birth_certificate_issued_on" varchar(50) DEFAULT null,
  "birth_certificate_issued_in" varchar(150) DEFAULT null,
  "nationality_certificate_number" varchar(50) DEFAULT null,
  "nationality_certificate_issued_on" varchar(50) DEFAULT null,
  "profession" varchar(150) DEFAULT null,
  "marital_status" varchar(50) DEFAULT null,
  "address" varchar(255) DEFAULT null,
  "other_address" varchar(255) DEFAULT null,
  "height" int DEFAULT null,
  "particular_signs" varchar(255) DEFAULT null,
  "hair_color" varchar(50) DEFAULT null,
  "blood_group" varchar(50) DEFAULT null,
  "mother_firstname" varchar(150) DEFAULT null,
  "mother_lastname" varchar(150) DEFAULT null,
  "father_firstname" varchar(150) DEFAULT null,
  "father_lastname" varchar(150) DEFAULT null,
  "poc_firstname" varchar(150) DEFAULT null,
  "poc_lastname" varchar(150) DEFAULT null,
  "poc_address" varchar(255) DEFAULT null,
  "poc_phone" varchar(50) DEFAULT null,
  "examination_center" varchar(150) DEFAULT null,
  "examination_number" varchar(50) DEFAULT null,
  "vehicle_category" varchar(50) DEFAULT null,
  "photo" varchar(50) NOT NULL,
  "created_at" timestamptz NOT NULL DEFAULT (now()),
  "updated_at" timestamptz NOT NULL DEFAULT (now())
);

CREATE TABLE "vehicle_registration" (
  "id" bigserial PRIMARY KEY,
  "application_id" varchar(100) DEFAULT null,
  "application_date" varchar(100) DEFAULT null,
  "application_reason" varchar(250) DEFAULT null,
  "document_number" varchar(100) DEFAULT null,
  "expiring_on" varchar(100) NOT NULL,
  "issued_on" varchar(100) NOT NULL,
  "issued_in" varchar(100) DEFAULT null,
  "person_id" varchar(100) NOT NULL,
  "national_id_number" varchar(100) DEFAULT null,
  "firstname" varchar(255) DEFAULT null,
  "lastname" varchar(150) DEFAULT null,
  "gender" varchar(50) NOT NULL,
  "birthdate" varchar(100) NOT NULL,
  "birthplace" varchar(150) DEFAULT null,
  "birth_country" varchar(150) DEFAULT null,
  "nationality" varchar(150) NOT NULL,
  "birth_certificate_number" varchar(100) DEFAULT null,
  "birth_certificate_issued_on" varchar(100) DEFAULT null,
  "birth_certificate_issued_in" varchar(100) DEFAULT null,
  "profession" varchar(150) DEFAULT null,
  "marital_status" varchar(100) DEFAULT null,
  "address" varchar(255) DEFAULT null,
  "other_address" varchar(255) DEFAULT null,
  "vehicle_usage" varchar(200) DEFAULT null,
  "vehicle_color" varchar(200) DEFAULT null,
  "vehicle_manufacture_year" varchar(200) DEFAULT null,
  "vehicle_brand" varchar(200) DEFAULT null,
  "vehicle_model" varchar(200) DEFAULT null,
  "vehicle_model_year" varchar(200) DEFAULT null,
  "vehicle_license_plate_number" varchar(150) NOT NULL,
  "type" varchar(200) DEFAULT null,
  "state" varchar(200) DEFAULT null,
  "photo" varchar(255) NOT NULL,
  "created_at" timestamptz DEFAULT (now()),
  "updated_at" timestamptz DEFAULT (now())
);

CREATE TABLE "military_card" (
  "id" bigserial PRIMARY KEY,
  "application_id" varchar(50) DEFAULT null,
  "application_date" varchar(50) DEFAULT null,
  "application_reason" varchar(100) DEFAULT null,
  "document_number" varchar(50) DEFAULT null,
  "expiring_on" varchar(50) DEFAULT null,
  "issued_on" varchar(50) DEFAULT null,
  "issued_in" varchar(150) DEFAULT null,
  "driving_licence_number" varchar(50) DEFAULT null,
  "driving_licence_obtained_on" varchar(50) DEFAULT null,
  "driving_licence_expiring_on" varchar(50) DEFAULT null,
  "driving_licence_issued_on" varchar(50) DEFAULT null,
  "driving_licence_issued_in" varchar(150) DEFAULT null,
  "person_id" varchar(50) NOT NULL,
  "national_id_number" varchar(50) NOT NULL,
  "firstname" varchar(255) NOT NULL,
  "lastname" varchar(150) NOT NULL,
  "original_name" varchar(150) DEFAULT null,
  "spouse_name" varchar(150) DEFAULT null,
  "gender" varchar(10) NOT NULL,
  "birthdate" varchar(50) NOT NULL,
  "birthplace" varchar(150) DEFAULT null,
  "birth_country" varchar(150) DEFAULT null,
  "birth_certificate_number" varchar(50) DEFAULT null,
  "birth_certificate_issued_on" varchar(50) DEFAULT null,
  "birth_certificate_issued_in" varchar(150) DEFAULT null,
  "nationality_certificate_number" varchar(50) DEFAULT null,
  "nationality_certificate_issued_on" varchar(50) DEFAULT null,
  "profession" varchar(150) DEFAULT null,
  "marital_status" varchar(50) DEFAULT null,
  "address" varchar(255) DEFAULT null,
  "other_address" varchar(255) DEFAULT null,
  "height" int DEFAULT null,
  "particular_signs" varchar(255) DEFAULT null,
  "hair_color" varchar(50) DEFAULT null,
  "blood_group" varchar(50) DEFAULT null,
  "mother_firstname" varchar(150) DEFAULT null,
  "mother_lastname" varchar(150) DEFAULT null,
  "father_firstname" varchar(150) DEFAULT null,
  "father_lastname" varchar(150) DEFAULT null,
  "poc_firstname" varchar(150) DEFAULT null,
  "poc_lastname" varchar(150) DEFAULT null,
  "poc_address" varchar(255) DEFAULT null,
  "poc_phone" varchar(50) DEFAULT null,
  "photo" varchar(50) NOT NULL,
  "created_at" timestamptz NOT NULL DEFAULT (now()),
  "updated_at" timestamptz NOT NULL DEFAULT (now())
);

CREATE TABLE "gendarme_card" (
  "id" bigserial PRIMARY KEY,
  "application_id" varchar(50) DEFAULT null,
  "application_date" varchar(50) DEFAULT null,
  "application_reason" varchar(100) DEFAULT null,
  "document_number" varchar(50) DEFAULT null,
  "expiring_on" varchar(50) DEFAULT null,
  "issued_on" varchar(50) DEFAULT null,
  "issued_in" varchar(150) DEFAULT null,
  "driving_licence_number" varchar(50) DEFAULT null,
  "driving_licence_obtained_on" varchar(50) DEFAULT null,
  "driving_licence_expiring_on" varchar(50) DEFAULT null,
  "driving_licence_issued_on" varchar(50) DEFAULT null,
  "driving_licence_issued_in" varchar(150) DEFAULT null,
  "person_id" varchar(50) NOT NULL,
  "national_id_number" varchar(50) NOT NULL,
  "service_number" varchar(50) DEFAULT null,
  "firstname" varchar(255) NOT NULL,
  "lastname" varchar(150) NOT NULL,
  "original_name" varchar(150) DEFAULT null,
  "spouse_name" varchar(150) DEFAULT null,
  "gender" varchar(10) NOT NULL,
  "birthdate" varchar(50) NOT NULL,
  "birthplace" varchar(150) DEFAULT null,
  "birth_country" varchar(150) DEFAULT null,
  "birth_certificate_number" varchar(50) DEFAULT null,
  "birth_certificate_issued_on" varchar(50) DEFAULT null,
  "birth_certificate_issued_in" varchar(150) DEFAULT null,
  "nationality_certificate_number" varchar(50) DEFAULT null,
  "nationality_certificate_issued_on" varchar(50) DEFAULT null,
  "profession" varchar(150) DEFAULT null,
  "marital_status" varchar(50) DEFAULT null,
  "address" varchar(255) DEFAULT null,
  "other_address" varchar(255) DEFAULT null,
  "height" int DEFAULT null,
  "particular_signs" varchar(255) DEFAULT null,
  "hair_color" varchar(50) DEFAULT null,
  "blood_group" varchar(50) DEFAULT null,
  "mother_firstname" varchar(150) DEFAULT null,
  "mother_lastname" varchar(150) DEFAULT null,
  "father_firstname" varchar(150) DEFAULT null,
  "father_lastname" varchar(150) DEFAULT null,
  "poc_firstname" varchar(150) DEFAULT null,
  "poc_lastname" varchar(150) DEFAULT null,
  "poc_address" varchar(255) DEFAULT null,
  "poc_phone" varchar(50) DEFAULT null,
  "photo" varchar(50) NOT NULL,
  "created_at" timestamptz NOT NULL DEFAULT (now()),
  "updated_at" timestamptz NOT NULL DEFAULT (now())
);

CREATE TABLE "police_card" (
  "id" bigserial PRIMARY KEY,
  "application_id" varchar(50) DEFAULT null,
  "application_date" varchar(50) DEFAULT null,
  "application_reason" varchar(100) DEFAULT null,
  "document_number" varchar(50) NOT NULL,
  "expiring_on" varchar(50) NOT NULL,
  "issued_on" varchar(50) NOT NULL,
  "issued_in" varchar(150) DEFAULT null,
  "driving_licence_number" varchar(50) DEFAULT null,
  "driving_licence_obtained_on" varchar(50) DEFAULT null,
  "driving_licence_expiring_on" varchar(50) DEFAULT null,
  "driving_licence_issued_on" varchar(50) DEFAULT null,
  "driving_licence_issued_in" varchar(150) DEFAULT null,
  "person_id" varchar(50) NOT NULL,
  "national_id_number" varchar(50) NOT NULL,
  "firstname" varchar(255) NOT NULL,
  "lastname" varchar(150) NOT NULL,
  "original_name" varchar(150) DEFAULT null,
  "spouse_name" varchar(150) DEFAULT null,
  "gender" varchar(10) NOT NULL,
  "birthdate" varchar(50) NOT NULL,
  "birthplace" varchar(150) DEFAULT null,
  "birth_country" varchar(150) DEFAULT null,
  "birth_certificate_number" varchar(50) DEFAULT null,
  "birth_certificate_issued_on" varchar(50) DEFAULT null,
  "birth_certificate_issued_in" varchar(150) DEFAULT null,
  "nationality_certificate_number" varchar(50) DEFAULT null,
  "nationality_certificate_issued_on" varchar(50) DEFAULT null,
  "profession" varchar(150) DEFAULT null,
  "marital_status" varchar(50) DEFAULT null,
  "address" varchar(255) DEFAULT null,
  "other_address" varchar(255) DEFAULT null,
  "height" int DEFAULT null,
  "rank" varchar(255) DEFAULT null,
  "particular_signs" varchar(255) DEFAULT null,
  "hair_color" varchar(50) DEFAULT null,
  "blood_group" varchar(50) DEFAULT null,
  "mother_firstname" varchar(150) DEFAULT null,
  "mother_lastname" varchar(150) DEFAULT null,
  "father_firstname" varchar(150) DEFAULT null,
  "father_lastname" varchar(150) DEFAULT null,
  "poc_firstname" varchar(150) DEFAULT null,
  "poc_lastname" varchar(150) DEFAULT null,
  "poc_address" varchar(255) DEFAULT null,
  "poc_phone" varchar(50) DEFAULT null,
  "photo" varchar(50) NOT NULL,
  "created_at" timestamptz NOT NULL DEFAULT (now()),
  "updated_at" timestamptz NOT NULL DEFAULT (now())
);

CREATE TABLE "api_auth" (
  "id" bigserial PRIMARY KEY,
  "partner_id" int DEFAULT null,
  "username" varchar UNIQUE NOT NULL,
  "email" varchar UNIQUE NOT NULL,
  "is_email_verified" bool NOT NULL DEFAULT false,
  "hashed_password" varchar NOT NULL,
  "enabled" bool NOT NULL DEFAULT false,
  "password_changed_at" timestamptz NOT NULL DEFAULT '0001-01-01 00:00:00Z',
  "created_at" timestamptz NOT NULL DEFAULT (now()),
  "updated_at" timestamptz NOT NULL DEFAULT (now())
);

CREATE TABLE "api_auth_session" (
  "id" uuid PRIMARY KEY,
  "username" varchar NOT NULL,
  "refresh_token" varchar NOT NULL,
  "user_agent" varchar NOT NULL,
  "client_ip" varchar NOT NULL,
  "is_blocked" bool NOT NULL DEFAULT false,
  "expires_at" timestamptz NOT NULL,
  "created_at" timestamptz NOT NULL DEFAULT (now())
);

CREATE TABLE "api_auth_email_check" (
  "id" bigserial PRIMARY KEY,
  "username" varchar NOT NULL,
  "email" varchar NOT NULL,
  "secret_code" varchar NOT NULL,
  "is_used" bool NOT NULL DEFAULT false,
  "created_at" timestamptz NOT NULL DEFAULT (now()),
  "expired_at" timestamptz NOT NULL DEFAULT (now() + interval '50 minutes')
);

CREATE TABLE "billing_plans" (
  "id" int PRIMARY KEY,
  "code" varchar(50) UNIQUE NOT NULL,
  "name" varchar(150) NOT NULL,
  "description" text,
  "rate_per_request" numeric(10,2) DEFAULT null,
  "currency" text NOT NULL DEFAULT 'XOF',
  "monthly_request_quota" integer,
  "auto_block_on_quota_exceed" bool DEFAULT true
);

CREATE TABLE "partners" (
  "id" bigserial PRIMARY KEY,
  "legal_name" varchar(150) NOT NULL,
  "commercial_name" varchar(150) DEFAULT null,
  "registration_number" varchar(150) UNIQUE DEFAULT null,
  "tax_identification_number" varchar(150) UNIQUE DEFAULT null,
  "admin_contact_name" varchar(150),
  "admin_contact_email" varchar(150),
  "admin_contact_phone" varchar(150),
  "tech_contact_name" varchar(150),
  "tech_contact_email" varchar(150),
  "tech_contact_phone" varchar(150),
  "contract_signed" bool DEFAULT false,
  "contract_signed_at" timestamptz DEFAULT null,
  "contract_expiration" timestamptz DEFAULT null,
  "compliance_status" varchar(50) DEFAULT 'pending',
  "api_key" varchar(255) UNIQUE DEFAULT null,
  "api_secret" text DEFAULT null,
  "allowed_ips" text[],
  "authentication_mode" varchar(30) DEFAULT 'JWT',
  "is_active" bool NOT NULL DEFAULT true,
  "activation_date" timestamptz DEFAULT null,
  "deactivation_date" timestamptz DEFAULT null,
  "billing_plan" varchar(50) DEFAULT 'standard',
  "billing_plan_id" int DEFAULT null,
  "billing_cycle" varchar(50) NOT NULL DEFAULT 'monthly',
  "payment_method" varchar(50) DEFAULT 'invoice',
  "alert_email_enabled" bool DEFAULT true,
  "last_alert_sent_at" timestamptz,
  "metadata" jsonb DEFAULT '{}',
  "created_at" timestamptz DEFAULT (now()),
  "updated_at" timestamptz DEFAULT (now())
);

CREATE TABLE "partner_billing_plans" (
  "id" bigserial PRIMARY KEY,
  "partner_id" int NOT NULL,
  "billing_plan_id" int NOT NULL
);

CREATE TABLE "partner_access_logs" (
  "id" bigserial PRIMARY KEY,
  "partner_id" int NOT NULL,
  "access_time" timestamptz DEFAULT (now()),
  "ip_address" varchar(50),
  "user_agent" text,
  "action" varchar(50) NOT NULL,
  "description" text DEFAULT null,
  "partner_api_call_log_id" int DEFAULT null
);

CREATE TABLE "partner_api_call_logs" (
  "id" bigserial PRIMARY KEY,
  "partner_id" int NOT NULL,
  "access_time" timestamptz DEFAULT (now()),
  "status" varchar(50) NOT NULL,
  "document_type" varchar(50) NOT NULL,
  "document_number" varchar(50) NOT NULL,
  "metadata" json DEFAULT '{}'
);

CREATE TABLE "partner_change_logs" (
  "id" bigserial PRIMARY KEY,
  "partner_id" int NOT NULL,
  "changed_at" timestamptz DEFAULT (now()),
  "changed_by" varchar(150),
  "field_name" varchar(150) NOT NULL,
  "old_value" varchar(150),
  "new_value" varchar(150),
  "change_reason" text DEFAULT null
);

CREATE INDEX ON "national_identity_card" ("document_number");

CREATE INDEX ON "national_identity_card" ("national_id_number");

CREATE INDEX ON "passport" ("document_number");

CREATE INDEX ON "residence_permit" ("document_number");

CREATE INDEX ON "driving_licence" ("document_number");

CREATE INDEX ON "gendarme_card" ("document_number");

CREATE INDEX ON "gendarme_card" ("national_id_number");

CREATE INDEX ON "police_card" ("document_number");

CREATE INDEX ON "police_card" ("national_id_number");

COMMENT ON COLUMN "national_identity_card"."application_id" IS 'Application ID';

COMMENT ON COLUMN "national_identity_card"."application_date" IS 'Application date';

COMMENT ON COLUMN "national_identity_card"."document_number" IS 'Document ID. It changes for every new application of a person';

COMMENT ON COLUMN "national_identity_card"."national_id_number" IS 'National Identification Number. Unique Citizen Identifier which can not be changes';

COMMENT ON COLUMN "national_identity_card"."poc_firstname" IS 'Name of contact person';

COMMENT ON COLUMN "passport"."application_id" IS 'Application ID';

COMMENT ON COLUMN "passport"."application_date" IS 'Application date';

COMMENT ON COLUMN "passport"."document_type" IS 'Passport Type';

COMMENT ON COLUMN "passport"."document_number" IS 'Document ID. It changes for every new application of a person';

COMMENT ON COLUMN "passport"."national_id_number" IS 'National Identification Number. Unique Citizen Identifier which can not be changes';

COMMENT ON COLUMN "passport"."poc_firstname" IS 'Name of contact person';

COMMENT ON COLUMN "residence_permit"."application_id" IS 'Application ID';

COMMENT ON COLUMN "residence_permit"."application_date" IS 'Application date';

COMMENT ON COLUMN "residence_permit"."document_type" IS 'Residence permit Type';

COMMENT ON COLUMN "residence_permit"."document_number" IS 'Document ID. It changes for every new application of a person';

COMMENT ON COLUMN "residence_permit"."poc_firstname" IS 'Name of contact person';

COMMENT ON COLUMN "residence_permit"."tax_id_number" IS 'Tax Identification Number / Quitus fiscal';

COMMENT ON COLUMN "residence_permit"."criminal_record_number" IS 'Criminal record  Number / Casier judiciare';

COMMENT ON COLUMN "driving_licence"."application_id" IS 'Application ID';

COMMENT ON COLUMN "driving_licence"."application_date" IS 'Application date';

COMMENT ON COLUMN "driving_licence"."document_number" IS 'Document ID. It changes for every new application of a person';

COMMENT ON COLUMN "driving_licence"."national_id_number" IS 'National Identification Number. Unique Citizen Identifier which can not be changes';

COMMENT ON COLUMN "driving_licence"."poc_firstname" IS 'Name of contact person';

COMMENT ON COLUMN "vehicle_registration"."application_id" IS 'Application ID';

COMMENT ON COLUMN "vehicle_registration"."application_date" IS 'Application date';

COMMENT ON COLUMN "vehicle_registration"."document_number" IS 'Document ID. It changes for every new application of a person';

COMMENT ON COLUMN "vehicle_registration"."national_id_number" IS 'National Identification Number. Unique Citizen Identifier which can not be changes';

COMMENT ON COLUMN "military_card"."application_id" IS 'Application ID';

COMMENT ON COLUMN "military_card"."application_date" IS 'Application date';

COMMENT ON COLUMN "military_card"."document_number" IS 'Document ID. It changes for every new application of a person';

COMMENT ON COLUMN "military_card"."national_id_number" IS 'National Identification Number. Unique Citizen Identifier which can not be changes';

COMMENT ON COLUMN "military_card"."poc_firstname" IS 'Name of contact person';

COMMENT ON COLUMN "gendarme_card"."application_id" IS 'Application ID';

COMMENT ON COLUMN "gendarme_card"."application_date" IS 'Application date';

COMMENT ON COLUMN "gendarme_card"."document_number" IS 'Document ID. It changes for every new application of a person';

COMMENT ON COLUMN "gendarme_card"."national_id_number" IS 'National Identification Number. Unique Citizen Identifier which can not be changes';

COMMENT ON COLUMN "gendarme_card"."service_number" IS 'Service numner';

COMMENT ON COLUMN "gendarme_card"."poc_firstname" IS 'Name of contact person';

COMMENT ON COLUMN "police_card"."application_id" IS 'Application ID';

COMMENT ON COLUMN "police_card"."application_date" IS 'Application date';

COMMENT ON COLUMN "police_card"."document_number" IS 'Document ID. It changes for every new application of a person';

COMMENT ON COLUMN "police_card"."national_id_number" IS 'National Identification Number. Unique Citizen Identifier which can not be changes';

COMMENT ON COLUMN "police_card"."poc_firstname" IS 'Name of contact person';

COMMENT ON COLUMN "api_auth"."partner_id" IS 'Référence à l''identifiant de partenaire';

COMMENT ON COLUMN "api_auth"."username" IS 'Nom d''utilisateur (optionnel si email suffit)';

COMMENT ON COLUMN "api_auth"."email" IS 'Adresse email (utilisée pour la connexion et la communication)';

COMMENT ON COLUMN "api_auth"."hashed_password" IS 'Mot de passe sécurisé (hashé)';

COMMENT ON COLUMN "api_auth"."enabled" IS 'Compte actif ou non';

COMMENT ON COLUMN "api_auth"."password_changed_at" IS 'Date de dernière modification du mot de passe';

COMMENT ON COLUMN "api_auth"."created_at" IS 'Date de création du compte';

COMMENT ON COLUMN "api_auth"."updated_at" IS 'Date de dernière mise à jour du compte';

COMMENT ON COLUMN "api_auth_session"."username" IS 'Nom d''utilisateur concerné';

COMMENT ON COLUMN "api_auth_session"."refresh_token" IS 'Jeton de rafraîchissement pour prolonger la session';

COMMENT ON COLUMN "api_auth_session"."user_agent" IS 'Navigateur ou client utilisé';

COMMENT ON COLUMN "api_auth_session"."client_ip" IS 'Adresse IP du client';

COMMENT ON COLUMN "api_auth_session"."is_blocked" IS 'Session bloquée ou non';

COMMENT ON COLUMN "api_auth_session"."expires_at" IS 'Date d''expiration de la session';

COMMENT ON COLUMN "api_auth_session"."created_at" IS 'Date de création de la session';

COMMENT ON COLUMN "billing_plans"."code" IS 'Code unique du plan (standard, premium...)';

COMMENT ON COLUMN "billing_plans"."name" IS 'Code unique du plan (standard, premium...)';

COMMENT ON COLUMN "billing_plans"."description" IS 'Description détaillée du plan';

COMMENT ON COLUMN "billing_plans"."rate_per_request" IS 'Coût par requête API';

COMMENT ON COLUMN "billing_plans"."currency" IS 'Devise utilisée (ex : XOF)';

COMMENT ON COLUMN "billing_plans"."monthly_request_quota" IS 'Nombre de requêtes mensuelles autorisées';

COMMENT ON COLUMN "billing_plans"."auto_block_on_quota_exceed" IS 'Blocage automatique en cas de dépassement du quota';

COMMENT ON COLUMN "partners"."legal_name" IS 'Raison sociale de l''entité partenaire';

COMMENT ON COLUMN "partners"."commercial_name" IS 'Nom commercial si différent de la raison sociale';

COMMENT ON COLUMN "partners"."registration_number" IS 'Numéro d''immatriculation (RCCM)';

COMMENT ON COLUMN "partners"."tax_identification_number" IS 'Numéro d''identification fiscale (NIF)';

COMMENT ON COLUMN "partners"."admin_contact_name" IS 'Nom du contact administratif';

COMMENT ON COLUMN "partners"."admin_contact_email" IS 'Email du contact administratif';

COMMENT ON COLUMN "partners"."admin_contact_phone" IS 'Téléphone du contact administratif';

COMMENT ON COLUMN "partners"."tech_contact_name" IS 'Nom du contact technique';

COMMENT ON COLUMN "partners"."tech_contact_email" IS 'Email du contact technique';

COMMENT ON COLUMN "partners"."tech_contact_phone" IS 'Téléphone du contact technique';

COMMENT ON COLUMN "partners"."contract_signed" IS 'Contrat signé ou non';

COMMENT ON COLUMN "partners"."contract_signed_at" IS 'Date de signature du contrat';

COMMENT ON COLUMN "partners"."contract_expiration" IS 'Date d''expiration du contrat';

COMMENT ON COLUMN "partners"."compliance_status" IS 'Statut de conformité : pending, approved, suspended, rejected, revoked';

COMMENT ON COLUMN "partners"."api_key" IS 'Clé d''accès API du partenaire';

COMMENT ON COLUMN "partners"."api_secret" IS 'Secret API pour signature sécurisée';

COMMENT ON COLUMN "partners"."allowed_ips" IS 'Liste blanche des IP autorisées';

COMMENT ON COLUMN "partners"."authentication_mode" IS 'Mode d''authentification : API_KEY, HMAC, JWT';

COMMENT ON COLUMN "partners"."is_active" IS 'Statut actif ou inactif';

COMMENT ON COLUMN "partners"."activation_date" IS 'Date d’activation';

COMMENT ON COLUMN "partners"."deactivation_date" IS 'Date de désactivation';

COMMENT ON COLUMN "partners"."billing_plan" IS 'Type de plan tarifaire appliqué';

COMMENT ON COLUMN "partners"."billing_plan_id" IS 'Référence au plan tarifaire';

COMMENT ON COLUMN "partners"."billing_cycle" IS 'Cycle de facturation : monthly, quarterly...';

COMMENT ON COLUMN "partners"."payment_method" IS 'Méthode de paiement : invoice, prepaid...';

COMMENT ON COLUMN "partners"."alert_email_enabled" IS 'Alertes par email activées';

COMMENT ON COLUMN "partners"."last_alert_sent_at" IS 'Date de dernière alerte envoyée';

COMMENT ON COLUMN "partners"."metadata" IS 'Métadonnées personnalisées';

COMMENT ON COLUMN "partners"."created_at" IS 'Date de création';

COMMENT ON COLUMN "partners"."updated_at" IS 'Date de dernière mise à jour';

COMMENT ON COLUMN "partner_access_logs"."partner_id" IS 'Référence au partenaire';

COMMENT ON COLUMN "partner_access_logs"."access_time" IS 'Date et heure d''accès';

COMMENT ON COLUMN "partner_access_logs"."ip_address" IS 'IP du client appelant';

COMMENT ON COLUMN "partner_access_logs"."user_agent" IS 'Client HTTP utilisé';

COMMENT ON COLUMN "partner_access_logs"."action" IS 'Action effectuée (LOGIN, API_CALL...)';

COMMENT ON COLUMN "partner_access_logs"."description" IS 'Description ou contexte de l''action';

COMMENT ON COLUMN "partner_access_logs"."partner_api_call_log_id" IS 'Référence à l''appel API concerné';

COMMENT ON COLUMN "partner_api_call_logs"."partner_id" IS 'Référence au partenaire';

COMMENT ON COLUMN "partner_api_call_logs"."access_time" IS 'Horodatage de l''accès';

COMMENT ON COLUMN "partner_api_call_logs"."status" IS 'Statut de la requête (succès, erreur...)';

COMMENT ON COLUMN "partner_api_call_logs"."document_type" IS 'Type de document consulté (CNI, passeport...)';

COMMENT ON COLUMN "partner_api_call_logs"."document_number" IS 'Numéro de document recherché';

COMMENT ON COLUMN "partner_api_call_logs"."metadata" IS 'Métadonnées personnalisées';

COMMENT ON COLUMN "partner_change_logs"."partner_id" IS 'Référence au partenaire';

COMMENT ON COLUMN "partner_change_logs"."changed_at" IS 'Date du changement';

COMMENT ON COLUMN "partner_change_logs"."changed_by" IS 'Auteur du changement (utilisateur ou système)';

COMMENT ON COLUMN "partner_change_logs"."field_name" IS 'Champ modifié';

COMMENT ON COLUMN "partner_change_logs"."old_value" IS 'Ancienne valeur';

COMMENT ON COLUMN "partner_change_logs"."new_value" IS 'Nouvelle valeur';

COMMENT ON COLUMN "partner_change_logs"."change_reason" IS 'Motif du changement';

ALTER TABLE "api_auth_email_check" ADD FOREIGN KEY ("username") REFERENCES "api_auth" ("username");

ALTER TABLE "partner_billing_plans" ADD FOREIGN KEY ("partner_id") REFERENCES "partners" ("id");

ALTER TABLE "partner_billing_plans" ADD FOREIGN KEY ("billing_plan_id") REFERENCES "billing_plans" ("id");

ALTER TABLE "api_auth" ADD FOREIGN KEY ("partner_id") REFERENCES "partners" ("id");

ALTER TABLE "partners" ADD FOREIGN KEY ("billing_plan_id") REFERENCES "billing_plans" ("id");

ALTER TABLE "partner_api_call_logs" ADD FOREIGN KEY ("partner_id") REFERENCES "partners" ("id");

ALTER TABLE "partner_access_logs" ADD FOREIGN KEY ("partner_id") REFERENCES "partners" ("id");

ALTER TABLE "partner_access_logs" ADD FOREIGN KEY ("partner_api_call_log_id") REFERENCES "partner_api_call_logs" ("id");

ALTER TABLE "partner_change_logs" ADD FOREIGN KEY ("partner_id") REFERENCES "partners" ("id");
