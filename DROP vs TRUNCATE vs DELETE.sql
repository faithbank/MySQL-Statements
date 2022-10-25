# DROP vs TRUNCATE vs DELETE

# DROP removes the entire record, and there is no rolling back.
# Use DROP statement only when sure you're not going to use the table anymore.

# TRUNCATE removes all recors from the table, like using DELETE without a WHERE clause.
# The structure of the table remains intact, and auto-increment values are reset.

# DELETE removes records row by row according to the specified WHERE conditions.
# If the WHERE block is ommitted, the output resembles that of TRUNCATE. 

# TRUNCATE vs DELETE without WHERE
/* TRUNCATE delivers the output quicker. DELETE removes the information row by row.
/* Auto-increment values are not reset with delete.