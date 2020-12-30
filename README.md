# v-http
Examples of http server on V language

```
brew install vlang
v run main.v
```

```
brew install wrk
```
Program main use one cpu 99.9%, 5.05 CPU time(5s test), 772KB RAM when under max load.

```
wrk -t1 -c1 -d5 --latency http://127.0.0.1
Running 5s test @ http://127.0.0.1
  1 threads and 1 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    28.58us   11.13us 492.00us   94.47%
    Req/Sec    33.56k     1.99k   36.20k    68.63%
  Latency Distribution
     50%   26.00us
     75%   27.00us
     90%   30.00us
     99%   83.00us
  170267 requests in 5.10s, 18.67MB read
Requests/sec:  33390.05
Transfer/sec:      3.66MB
```
```
wrk -t2 -c32 -d5 --latency http://127.0.0.1
Running 5s test @ http://127.0.0.1
  2 threads and 32 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency   233.82us   72.99us   1.16ms   78.94%
    Req/Sec    64.91k     1.96k   69.43k    69.61%
  Latency Distribution
     50%  214.00us
     75%  250.00us
     90%  341.00us
     99%  470.00us
  658699 requests in 5.10s, 72.24MB read
Requests/sec: 129140.36
```
```
Model Name:	MacBook Pro
Processor Name:	Quad-Core Intel Core i7
Processor Speed:	2.9 GHz
Number of Processors:	1
Total Number of Cores:	4
L2 Cache (per Core):	256 KB
L3 Cache:	8 MB
Memory:	16 GB
```
