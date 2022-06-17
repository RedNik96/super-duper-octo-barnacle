from fastapi import FastAPI

description = """
Bring your shopping list to the cloud. 🚀

You will be able to:

* create & share shopping list (_not implemented_).
  * share lists via links (that include a GUID) so there is no nee to sign up (_not implemented_).
* sign up
  * create recurrings shopping lists/items (_not implemented_).
  * list all items ever bougth (_not implemented_).
  * utilizing shopping history for a type ahead (_not implemented_).
  * make an inventory to know what you have got at home (_not implemented_).
"""

app = FastAPI(
    title="Shopping list",
    description=description,
    version="0.0.1"
)


@app.get("/")
async def root():
    return {"msg": "Hello World"}
