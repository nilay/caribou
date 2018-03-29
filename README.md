# README

Small REST API application built using Rails 5 and 'jsonapi-resources' gem


## Ruby version
	2.3.1


## Deployment instructions
```shell
bundle
rails db:create
rails s 
```

## API Endpoints: Get list of all websites

#### Request

```shell
curl -X GET \
  http://localhost:3000/websites \
  -H 'accept: application/vnd.api+json' \
  -H 'cache-control: no-cache' \
  -H 'content-type: application/vnd.api+json' 
```

#### Response
```json

{
    "data": [
        {
            "id": "1",
            "type": "websites",
            "links": {
                "self": "http://localhost:3000/websites/1"
            },
            "attributes": {
                "url": "http://sun.com",
                "content": null
            }
        },
        {
            "id": "2",
            "type": "websites",
            "links": {
                "self": "http://localhost:3000/websites/2"
            },
            "attributes": {
                "url": "http://sun.com",
                "content": null
            }
        }
    ]    
}

```

## API Endpoints: Add website

#### Request

```shell
curl -X POST \
  http://localhost:3000/websites \
  -H 'accept: application/vnd.api+json' \
  -H 'cache-control: no-cache' \
  -H 'content-type: application/vnd.api+json' \
  -d '{"data": {"type":"websites", "attributes":{"url":"http://devzila.com"}}}'
```

#### Response
```json

{
    "data": {
        "id": "6",
        "type": "websites",
        "links": {
            "self": "http://localhost:3000/websites/6"
        },
        "attributes": {
            "url": "http://devzila.com",
            "content": "DEVZILA SOFTWARE SOLUTIONS®  brochure KISS process Q&A\n          What are the current tools and technology are you working?\n           here here (Email Us) email: info@devzila.com View Larger Map Devzila - 2014"
        }
    }
}

```


* ...
# caribou
