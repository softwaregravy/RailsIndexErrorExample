Reproducing Error described in Rails Pull 1993
=============================================

https://github.com/rails/rails/pull/1993

This error demonstrates that Rails will rename columns automatically under the hood on certain migrations. The auto-rename may cause the migration to fail due to the name now exceeding the index character limit of 64.
