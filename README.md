# Simple benchmarks

Simple load testing popular HTTP servers.

Running:

```
docker-compose up influxdb grafana
docker-compose run k6 run /scripts/GET-hello-world.js
```

## Test 1: Hello World

A simple GET endpoint that returns the text "hello world"

# golang

```
Creating simple-benchmarks_k6_run ... done

          /\      |‾‾| /‾‾/   /‾‾/
     /\  /  \     |  |/  /   /  /
    /  \/    \    |     (   /   ‾‾\
   /          \   |  |\  \ |  (‾)  |
  / __________ \  |__| \__\ \_____/ .io

  execution: local
     script: /scripts/GET-hello-world.js
     output: InfluxDBv1 (http://influxdb:8086)

  scenarios: (100.00%) 1 scenario, 5 max VUs, 50s max duration (incl. graceful stop):
           * default: Up to 5 looping VUs for 20s over 3 stages (gracefulRampDown: 30s, gracefulStop: 30s)


running (20.0s), 0/5 VUs, 48450 complete and 0 interrupted iterations
default ✓ [======================================] 0/5 VUs  20s

     ✓ status is 200

     checks.........................: 100.00% ✓ 48450       ✗ 0
     data_received..................: 5.9 MB  295 kB/s
     data_sent......................: 4.9 MB  247 kB/s
     http_req_blocked...............: avg=15.18µs  min=6.29µs   med=9.08µs   max=17.11ms p(90)=15.16µs  p(95)=21.83µs
     http_req_connecting............: avg=193ns    min=0s       med=0s       max=3.98ms  p(90)=0s       p(95)=0s
     http_req_duration..............: avg=1.17ms   min=264.58µs med=798.87µs max=48.17ms p(90)=2.08ms   p(95)=3.06ms
       { expected_response:true }...: avg=1.17ms   min=264.58µs med=798.87µs max=48.17ms p(90)=2.08ms   p(95)=3.06ms
     http_req_failed................: 0.00%   ✓ 0           ✗ 48450
     http_req_receiving.............: avg=126.82µs min=46.75µs  med=76.5µs   max=30.5ms  p(90)=178.33µs p(95)=256.68µs
     http_req_sending...............: avg=56.14µs  min=21.91µs  med=33µs     max=25.68ms p(90)=65.54µs  p(95)=107.46µs
     http_req_tls_handshaking.......: avg=0s       min=0s       med=0s       max=0s      p(90)=0s       p(95)=0s
     http_req_waiting...............: avg=988.99µs min=164.41µs med=657µs    max=35.14ms p(90)=1.85ms   p(95)=2.72ms
     http_reqs......................: 48450   2421.506268/s
     iteration_duration.............: avg=1.56ms   min=502.45µs med=1.11ms   max=69.95ms p(90)=2.59ms   p(95)=3.74ms
     iterations.....................: 48450   2421.506268/s
     vus............................: 1       min=1         max=5
     vus_max........................: 5       min=5         max=5
```

# elixir - cowboy_plug

```
Creating simple-benchmarks_k6_run ... done

          /\      |‾‾| /‾‾/   /‾‾/
     /\  /  \     |  |/  /   /  /
    /  \/    \    |     (   /   ‾‾\
   /          \   |  |\  \ |  (‾)  |
  / __________ \  |__| \__\ \_____/ .io

  execution: local
     script: /scripts/GET-hello-world.js
     output: InfluxDBv1 (http://influxdb:8086)

  scenarios: (100.00%) 1 scenario, 5 max VUs, 50s max duration (incl. graceful stop):
           * default: Up to 5 looping VUs for 20s over 3 stages (gracefulRampDown: 30s, gracefulStop: 30s)


running (20.0s), 0/5 VUs, 55746 complete and 0 interrupted iterations
default ✓ [======================================] 0/5 VUs  20s

     ✓ status is 200

     checks.........................: 100.00% ✓ 55746       ✗ 0
     data_received..................: 8.6 MB  432 kB/s
     data_sent......................: 5.7 MB  284 kB/s
     http_req_blocked...............: avg=12.36µs  min=5.87µs     med=8µs      max=10.68ms p(90)=12.04µs p(95)=17.08µs
     http_req_connecting............: avg=1.06µs   min=0s         med=0s       max=3.15ms  p(90)=0s      p(95)=0s
     http_req_duration..............: avg=1.03ms   min=-439056ns  med=779.47µs max=32.94ms p(90)=1.79ms  p(95)=2.47ms
       { expected_response:true }...: avg=1.03ms   min=-439056ns  med=779.47µs max=32.94ms p(90)=1.79ms  p(95)=2.47ms
     http_req_failed................: 0.00%   ✓ 0           ✗ 55746
     http_req_receiving.............: avg=101.13µs min=47.91µs    med=70.79µs  max=30.25ms p(90)=151.7µs p(95)=208.75µs
     http_req_sending...............: avg=43.75µs  min=-1369223ns med=29.91µs  max=11.39ms p(90)=56.54µs p(95)=88.83µs
     http_req_tls_handshaking.......: avg=0s       min=0s         med=0s       max=0s      p(90)=0s      p(95)=0s
     http_req_waiting...............: avg=887.29µs min=210.04µs   med=648.43µs max=32.65ms p(90)=1.6ms   p(95)=2.22ms
     http_reqs......................: 55746   2786.225052/s
     iteration_duration.............: avg=1.36ms   min=533.41µs   med=1.07ms   max=33.52ms p(90)=2.21ms  p(95)=2.97ms
     iterations.....................: 55746   2786.225052/s
     vus............................: 1       min=1         max=5
     vus_max........................: 5       min=5         max=5
```

References:
https://k6.io/docs/
https://k6.io/docs/results-visualization/influxdb-+-grafana/
https://github.com/luketn/docker-k6-grafana-influxdb
