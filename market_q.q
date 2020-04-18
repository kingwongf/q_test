read0 `:/Users/kingf.wong/Development/q_test/market_hist.csv

tab:("S FFFFFFFFFFFF";enlist ",") 0: `:/Users/kingf.wong/Development/q_test/market_hist.csv

tab:xcol[`$ssr[;" ";""]each string cols tab;tab]
tab
meta tab

/ trying to c

6 xexp 2

UKEquity: select UKEquity from tab

/ EWMA


.quantQ.stats.expma1:{[lambda;vector]
/ lambda -- memory
/ vector -- data
{[x;y;z] (x*y)+z}\[ first vector; 1 - lambda; vector * lambda]
};

.quantQ.stats.expma1[0.2; UKEquity]

select .q.ema[0.2; UKEquity] from tab

.q.ema[0.2, select from tab]

