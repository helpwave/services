-- calc_rule_specificity calculates a specificity akin to CSS' specificity [1]
-- matchers are provided in decreasing order of precedence
--
-- ACCEPTS AT MOST 31 ARGUMENTS FOR THE LOVE OF GOD DONT GO OVER THAT LIMIT
--
-- INTEGER is a number, but more importantly it's a string of 32 bits
-- the first bit is for signage (+/-), we keep it on 0.
-- this way we treat the result as a number, high precedent bit set -> number is greater
--
--
-- USAGE:
--  SELECT ..., calc_rule_specificity(highest_prio_field1 IS NOT NULL, highest_prio_field2 IS NOT NULL) as specificity FROM ...;
--
-- [1]: https://developer.mozilla.org/en-US/docs/Web/CSS/Specificity
CREATE OR REPLACE FUNCTION calc_rule_specificity(VARIADIC args boolean[])
RETURNS INTEGER AS
$$
DECLARE
	result INTEGER := 0;
	i INT;
BEGIN
	FOR i IN 1..COALESCE(array_length(args, 1), 0)
	LOOP
		result := result | args[i] :: integer << (31 - i);
	END LOOP;
	RETURN result;
END;
$$
LANGUAGE plpgsql;
