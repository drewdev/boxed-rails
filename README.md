# boxed-rails
Explores some patterns around rails and docker. Objective is to create a container-based console for building rails apps using a minimal footprint.

# usage
`make rails` - builds base rails image, creates volume for app code, creates new rails app

`make implode` - tears down all compose artifacts and deletes the app code volume

`docker-compose run app` - runs a shell in the app code directory
