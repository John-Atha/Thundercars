import requests
import pytest
import json



base_url = 'http://localhost:8765/evcharge/api/'


def test_validation():
    head = {"X-OBSERVATORY-AUTH" : "lala-lala-lala:1:3"}
    try:
        resp = requests.get(base_url + "/admin/healthcheck")
        assert resp.status_code == 200

    except requests.exceptions.ConnectionError:
        pytest.skip()

def test_database():
    head = {"X-OBSERVATORY-AUTH" : "wiefweifhbv2397f2vfu22837514899tyjiwbc"}
    data = {
        "connectionTime": "2020-02-02T11:44:52.000+0000",
        "disconnectTime": "2020-02-02T18:04:27.000+0000",
        "doneChargingTime": "2020-02-02T16:20:26.000+0000",
        "timezone": "local",
        "kwhDelivered": 42.85,
        "cost": 7.66,
        "paymentWay": "Paypal",
        "rating": 3.9,
        "chargingProgram": "slow"
        }
    try:
        resp = requests.get(base_url + "chargingprocesses/a", headers=head)
        assert resp.status_code == 400
        resp = requests.post(base_url + "chargingprocessesmod", json=data, headers = head)
        assert resp.status_code == 200
        resp = resp.json()
        id = resp["id"]

        resp = requests.get(base_url + "chargingprocesses/" + str(id), headers={"X-OBSERVATORY-AUTH" : "lala-lala-lala:1:3"})
        assert resp.status_code == 401

        resp = requests.get(base_url + "chargingprocesses/" + str(id), headers=head).json()
        assert id == resp["id"]

        resp = requests.delete(base_url + "chargingprocessesmod/" + str(id), headers=head)
        assert resp.status_code == 200

    except requests.exceptions.ConnectionError:
        pytest.skip()

