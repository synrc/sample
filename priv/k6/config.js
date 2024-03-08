{
  "hosts": {
    "local": "127.0.0.1"
  },
  "stages": [
    {
      "duration": "1m",
      "target": 10
    }
  ],
  "thresholds": {
    "http_req_duration": ["avg<100", "p(95)<200"]
  },
  "noConnectionReuse": true,
  "type": "browser",
  "vus": "10",
  "duration": "3m",
  "userAgent": "MyK6UserAgentString/1.0"
}
