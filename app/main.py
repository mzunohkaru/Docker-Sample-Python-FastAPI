from typing import Union

from fastapi import FastAPI

app = FastAPI()

# http://127.0.0.1:8080/
@app.get("/")
def read_root():
    return {"Hello": "World"}


# http://127.0.0.1:8080/items/4?q=helloDocker
@app.get("/items/{item_id}")
def read_item(item_id: int, q: Union[str, None] = None):
    return {"item_id": item_id, "q": q}