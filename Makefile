app-config = --database=postgresql --skip-javascripta --skip-turbolinks --api --quiet
rails:
	@echo "Generating image:"
	@docker build --quiet --tag rails_alpine .
	@echo "Creating volume:"
	@docker volume create --name app-src
	@echo "Making rails..."
	@docker run --rm --volume app-src:/src --name app rails_alpine rails new /src/app $(app-config)
	@echo "Complete!"

implode:
	@docker-compose down
	@docker volume rm app-src
