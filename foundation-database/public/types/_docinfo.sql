SELECT dropIfExists('FUNCTION', '_docinfo()', 'public', true);
SELECT dropIfExists('VIEW',     'docinfo',    'public', true);
SELECT dropIfExists('TYPE',     'docinfo',    'public', true);

CREATE TYPE _docinfo AS (
  id            integer,
  target_number text,
  target_type   text,
  target_id     integer,
  source_type   text,
  source_id     integer,
  name          text,
  description   text,
  purpose       text
);
