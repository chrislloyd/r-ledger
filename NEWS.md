ledgeR 0.5.3
============

* Removed ``include_cleared``, ``include_pending``, ``include_unmarked``, ``convert_to_cost``, and ``convert_to_market_value`` arguments from ``register`` (#6).
* Added ``flags`` arguments to ``register`` (#6).
* Added a new ``mark`` column to imported data frames with values ``"*"``, ``"!"``, or ``""`` (#6).
* For hledger/beancount files added new ``historical_cost``, ``hc_commodity``, ``market_value`` and ``mv_commodity`` columns (#6).
* Wrote and exported S3 methods so can use ``rio::import`` to read in registers (#7).
* Now throws an error if required binaries not found (#8).
* Fixed bug in importing hledger or beancount files (now automatically casts ``amount`` field to numeric).
* Added new ``net_worth`` function.


