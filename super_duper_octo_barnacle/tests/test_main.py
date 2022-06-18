from fastapi.testclient import TestClient

from super_duper_octo_barnacle.main import app

client = TestClient(app)


def test_read_main():
    response = client.get("/")
    assert response.status_code == 201
    assert response.json() == {"msg": "Hello World"}