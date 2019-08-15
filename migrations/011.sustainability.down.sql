-- Remove sustainability fields, update in paralell with adding new fields
-- BREEAM rating
ALTER TABLE buildings DROP COLUMN IF EXISTS sust_breeam_rating;

-- DEC (display energy certifcate, only applies to non domestic buildings)
ALTER TABLE buildings DROP COLUMN IF EXISTS sust_dec;

-- Aggregate EPC rating (Estimated) for a building, derived from inidividual certificates
ALTER TABLE buildings DROP COLUMN IF EXISTS sust_aggregate_estimate_epc;

-- Last significant retrofit date YYYY
ALTER TABLE buildings DROP COLUMN IF EXISTS sust_retrofit_date;
