# Questions

## 1. 

```console
curl -o nginx_logs_examples.log https://raw.githubusercontent.com/elastic/examples/master/Common%20Data%20Formats/nginx_logs/nginx_logs


awk '{print $1}' nginx_logs_examples.log | sort | uniq -c | sort -nr | awk '{print $2": -> "$1}' > nginx_requests.total.txt 
```
