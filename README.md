Reproducing Error described in Rails Pull 1993
=============================================

https://github.com/rails/rails/pull/1993

This error demonstrates that Rails will rename columns automatically under the hood on certain migrations. The auto-rename may cause the migration to fail due to the name now exceeding the index character limit of 64.

```bash
==  CauseIndexToTempify: migrating ============================================
-- rename_column(:some_table, :column1, :column2)
rake aborted!
An error has occurred, this and all later migrations canceled:

Index name 'temp_this_is_a_really_long_name_which_is_just_an_example_little_longe' on table 'altered_some_table' is too long; the limit is 64 characters

Tasks: TOP => db:migrate
(See full trace by running task with --trace)
```
