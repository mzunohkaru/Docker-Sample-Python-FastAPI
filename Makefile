.PHONY: setup up d b ps makefile

run:
	docker-compose exec uvicorn main:app --reload