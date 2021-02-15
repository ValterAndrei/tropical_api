## Tropical API

![Rails Tests](https://github.com/valterandrei/tropical_api/workflows/Rails%20Tests/badge.svg)

## API call

### Search weather forecast for 5 days:

> GET
```
https://tropical-api-prod.herokuapp.com/forecast?q={city name}
```
```
https://tropical-api-prod.herokuapp.com/forecast?q={city name},{state code}
```
```
https://tropical-api-prod.herokuapp.com/forecast?q={city name},{state code},{country code}
```
Examples:
```
https://tropical-api-prod.herokuapp.com/forecast?q=Caconde,br
```
```
https://tropical-api-prod.herokuapp.com/forecast?q=Caconde,br&lang=pt_br&units=imperial&cnt=30
```


### Post tweet:

> POST
```
https://tropical-api-prod.herokuapp.com/notification
```
~~~json
{
	"q": "Caconde"
}
~~~

Examples:
```
https://tropical-api-prod.herokuapp.com/notification
```
~~~json
{
	"q": "Caconde",
  "units": "imperial",
  "lang": "pt_br"
}
~~~

Parameters
| Param | Type | Description |
|-------|:----:|------------:|
| q | required | City name, state code and country code divided by comma.|
| cnt | optional | A number of timestamps, which will be returned in the API response.|
| units | optional | Units of measurement. `standard`, `metric` and `imperial` units are available. If you do not use the `units` parameter, standard units will be applied by default.|
| lang | optional | [Learn more](https://openweathermap.org/forecast5#multi)



## Development

1. Build image
```
docker-compose build
```

2. Access bash
```
docker-compose run --rm web bash
```

3. Install dependencies
```
bundle
```

4. Setup database
```
rails db:create
```

5. Tests
```
rspec
```

6. Create file `web-variables.env` in project root path.
```
# Tropical
TROPICAL_APPID=your_key

# Twitter
CONSUMER_KEY=your_key
CONSUMER_SECRET=your_key
ACCESS_TOKEN=2your_key
ACCESS_SECRET=your_key
```

7. Run project
```
docker-compose up web
```
