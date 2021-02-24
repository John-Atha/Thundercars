import axios from "axios";
import config from "./config";

axios.defaults.baseURL = config.apiUrl;

export const loginPost = (obj) => {
    const requestUrl = "/login";
    return axios.post(requestUrl,
                      obj,
                      {
                          headers: {
                              "Content-Type": "text/plain"
                          }
                      });
};

export const getVehicles = (id) => {
    const requestUrl = `/user/${id}/myvehicles`;
    return axios.get(requestUrl);
};

export const countriesGet = () => {
    const requestUrl = "/admin/countries";
    return axios.get(requestUrl);
}

export const userAddressPost = (obj) => {
    const requestUrl = "/admin/useraddressesmod";
    return axios.post(requestUrl, obj);
};

export const userPost = (obj, postAddr) => {
    const requestUrl = `/admin/${postAddr}`;
    return axios.post(requestUrl, obj);
};

export const getUserStats = (id) => {
    const requestUrl = `/user/${id}/statistics`;
    return axios.get(requestUrl);
}

export const getStations = (id) => {
    const requestUrl = `stationowners/${id}/mystations`;
    return axios.get(requestUrl);
}

export const getOneStation = (id) => {
    const requestUrl = `chargingstations/${id}`;
    return axios.get(requestUrl);
}

export const getStationStats = (id) => {
    const requestUrl = `SessionsPerStation/${id}`;
    return axios.get(requestUrl);
}

export const getOneSpot = (id) => {
    const requestUrl = `chargingspots/${id}`;
    return axios.get(requestUrl);
}

export const getStationOwnerStatistics = (id) => {
    const requestUrl = `stationowners/${id}/mystatistics`;
    return axios.get(requestUrl);
}

/*
export const getStationOwnerStats = (id) => {
    const request
}*/