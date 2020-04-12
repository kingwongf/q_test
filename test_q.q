a: 1 2 3 4
b: 100 101 103
(|/) 20 10 40 30 / max
(&/) 20 10 40 30 / min

100 {x, sum -2#x}/ 0 1 / fibonacci


\P 0
{[xn] xn - ((xn*xn)-2)%(2*xn)}\[1.0000] / "\" is scan overload, display all iterations
{[xn] xn - ((xn*xn)-2)%(2*xn)}/[1.500] / "/" is over overload, iterates until tol

buys: 2 3 1 4 5f
sells: 5 3 1
sum[sells]
6&sums[buys]

sums[sells] &\: sums[buys]

deltas sums[sells] &\: sums[buys]


d:`a`b`c!10 20 30

d[`a]

`c1`c2!(10 20 30; 1.1 2.2 3.3)

dc:`c1`c2!(10 20 30; 1.1 2.2 3.3)

dc[;1]

t:flip `c1`c2!(10 20 30; 1.1 2.2 3.3)
t[;`c2]

df: ([] c1:1000+til 10; c2:`b`a`b`a`c`a`b`a`a`b; c3: 10*1+til 10)
df

select c1 from df

select from df

select c1, val:2*c3 from df

select count c1, sum c3 by c2 from df
select from df
select count c2 by ovrund: c3<=40 from df
select from df where c2=`a

`c3 xasc df

10?20

10?1.0

a: 1 2 3 4
b: 100 101 103
10?`a

10?`aapl`ibm

/
trade table
\
dts:2015.01.01+1000000?31
tms:1000000?24:00:00.000000000
syms:1000000?`aapl`goog`ibm
vols:10*1+1000000?1000
pxs:90.0+(1000000?2001)%100
trades:([] dt:dts; tm:tms; sym:syms; vol:vols; px:pxs)
trades:`dt`tm xasc trades

trades:update px:6*px from trades where sym=`goog
trades:update px:2*px from trades where sym=`ibm
5#trades

select avg px, avg vol by sym from trades

select min px, max px by sym from trades

5 xbar til 15

1 2 3 wavg 50 60 70

select vwap:vol wavg px by sym, bkt: 100000000 xbar tm from trades

vwap

select tm, max px- mins px from trades where sym=`aapl

select mins px from trades where sym=`aapl

("s";"t"; "r"; "i"; "n"; "g") / string is a list of chars

`:path/filename

ds:([] c1:`a`b`c; c2:1.1 2.2 3.3)
ds

`:qDevelopment/test_ds set ds

get `:qDevelopment/test_ds

`:qDevelopment/txt_test.txt 0: ("Meaning"; "of"; "life")

read0 `:qDevelopment/txt_test.txt

`:qDevelopment/test_q_trades.csv 0: csv 0: trades

read0 `:qDevelopment/test_q_trades.csv

("SF"; enlist ",") 0: `:qDevelopment/test_q_trades.csv

trades

\p  / show port number

h:hopen `:localhost:5042 / on connection from client to server

h "6*7"


h (`f; 6; 7)

(neg h) (`echo; 42) / on client


