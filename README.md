# OriginTrail_DevOps_Test-
Bash Script to auto deploy 5 OriginTrail Nodes.
-----------------------------------------------
**API Access setup**

To use the API, you’ll first generate a personal access token. Personal access tokens function like ordinary OAuth access tokens. You can use them to authenticate to the API by including one in a bearer-type Authorization header with your request

Follow Tutorial to setup Personal access token(Bearer Token) URL https://docs.digitalocean.com/reference/api/create-personal-access-token/.

**Setup SSH-Key and retrieve the SSH-ID**

To list all of the keys in your account, send a GET request to /v2/account/keys.

The response will be a JSON object with a key set to ssh_keys. The value of this will be an array of key objects, each of which contain the standard key attributes

curl -X GET -H "Content-Type: application/json" -H "Authorization: Bearer <$Your_TOKEN>" "https://api.digitalocean.com/v2/account/keys" 


**Usage**

Clone script and set your Bearer Token and SSH-Key ID

Set excute permissions on file (chmod +x OriginTrail_nodes.sh)

Run Bash Script (./OriginTrail_nodes.sh)

