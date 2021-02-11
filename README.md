## Tropical API

![Rails Tests](https://github.com/valterandrei/tropical_api/workflows/Rails%20Tests/badge.svg)

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

6. Run project
```
docker-compose up web
```
