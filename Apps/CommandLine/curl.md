- [Json args as STDIN](#json-args-as-stdin)
- [Converting to `curl` if `Powershell` is not accessable](#converting-to-curl-if-powershell-is-not-accessable)
  - [Invoke-RestMethod](#invoke-restmethod)
  - [The `curl` equivalent](#the-curl-equivalent)


# Json args as STDIN


# Converting to `curl` if `Powershell` is not accessable

## Invoke-RestMethod 

```powershell
$Headers = @{ 'Authorization' = "Bearer <PAT here>" } 
$Response = Invoke-RestMethod -Uri 'https://app.asana.com/api/1.0/workspaces' -Headers $Headers
```

## The `curl` equivalent

```sh 
curl -X GET https://app.asana.com/api/1.0/workspaces \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer <PAT here>'
```
