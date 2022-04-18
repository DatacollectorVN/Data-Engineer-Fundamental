SELECT GROUP_CONCAT('Nathan', ' ', 'Ngo') AS ConcatenatedString;
-- OUTPUT: Nathan Ngo
SELECT GROUP_CONCAT('Nathan', ' ', NULL, 'Ngo') AS ConcatenatedString;
-- OUTPUT: NULL