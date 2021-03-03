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

export const dcChargerPost = (obj) => {
    const requestUrl = "/admin/dcchargersmod";
    return axios.post(requestUrl, obj);
}

export const acChargerPost = (obj) => {
    const requestUrl = "/admin/acchargersmod";
    return axios.post(requestUrl, obj);
}

export const acChargerPortPost = (obj) => {
    const requestUrl = "/admin/acchargerportsmod";
    return axios.post(requestUrl, obj);
}

export const dcChargerPortPost = (obj) => {
    const requestUrl = "/admin/dcchargerportsmod";
    return axios.post(requestUrl, obj);
}

export const PowerPerChargingPost = (obj) => {
    const requestUrl = "admin/powerperchargingpointmod";
    return axios.post(requestUrl, obj);
}

export const UserVehiclePost = (obj) => {
    const requestUrl = `admin/userhasvehiclesmod`;
    return axios.post(requestUrl, obj);
}

export const getVehicles = (id) => {
    const requestUrl = `/user/${id}/myvehicles`;
    return axios.get(requestUrl);
};

export const getOneVehicle = (userId,vehId) => {
    const requestUrl = `user/${userId}/myvehicles/${vehId}`;
    return axios.get(requestUrl);
}

export const getOneAcCharger = (acId) => {
    const requestUrl = `acchargers/${acId}`;
    return axios.get(requestUrl);
}

export const vehiclePost = (obj) => {
    const requestUrl = "admin/vehiclesmod";
    return axios.post(requestUrl, obj);
}

export const countriesGet = () => {
    const requestUrl = "/admin/countries";
    return axios.get(requestUrl);
}

export const currentProvidersGet = () => {
    const requestUrl = "/admin/currentproviders";
    return axios.get(requestUrl);
}

export const operatorsGet = () => {
    const requestUrl = "/admin/operators";
    return axios.get(requestUrl);
}

export const statusTypesGet = () => {
    const requestUrl = "/admin/statustypes";
    return axios.get(requestUrl);
}

export const usageTypesGet = () => {
    const requestUrl = "/admin/usagetypes";
    return axios.get(requestUrl);
}

export const connTypesGet = () => {
    const requestUrl = '/admin/connectiontypes';
    return axios.get(requestUrl);
}

export const currTypesGet = () => {
    const requestUrl = '/currenttypes';
    return axios.get(requestUrl);
}

export const levelsGet = () => {
    const requestUrl = '/admin/levels';
    return axios.get(requestUrl);
}

export const stationOwnerOBJECTGet = (id) => {
    const requestUrl = `/stationowners/${id}`;
    return axios.get(requestUrl);
}

export const stationAddressPost = (obj) => {
    const requestUrl = "/admin/addressesmod";
    return axios.post(requestUrl, obj);
}

export const stationPost = (obj) => {
    const requestUrl = "/admin/chargingstationsmod";
    return axios.post(requestUrl, obj);
}

export const stationPut = (obj, id) => {
    const requestUrl = `/admin/chargingstationsmod/${id}`;
    return axios.put(requestUrl, obj);
}

export const spotPost = (obj) => {
    const requestUrl = "admin/chargingspotsmod";
    return axios.post(requestUrl, obj);
}

export const spotPut = (obj, id) => {
    const requestUrl = `admin/chargingspotsmod/${id}`;
    return axios.put(requestUrl, obj);
}

export const userAddressPost = (obj) => {
    const requestUrl = "/admin/useraddressesmod";
    return axios.post(requestUrl, obj);
};

export const stationSpotPost = (obj) => {
    const requestUrl = "/admin/chargingstationspotsmod";
    return axios.post(requestUrl, obj);
}

export const stationSpotGet = (id) => {
    const requestUrl = `admin/chargingstationspots/${id}`;
    return axios.get(requestUrl);
}


export const userPost = (obj, postAddr) => {
    const requestUrl = `/admin/${postAddr}`;
    return axios.post(requestUrl, obj);
};

export const getUserStats = (id) => {
    const requestUrl = `/user/${id}/statistics`;
    return axios.get(requestUrl);
}

export const getVehicleSessions = (id, startDate, endDate) => {
    let requestUrl = `SessionsPerEV/${id}`;
    if (startDate.length!==0) {
        requestUrl = requestUrl.concat('/').concat(startDate.replace('-','').replace('-',''));
        if (endDate.length!==0) {
            requestUrl = requestUrl.concat('/').concat(endDate.replace('-','').replace('-',''));  
        }
    }
    return axios.get(requestUrl);
}

export const getAllUserVehicle = () => {
    const requestUrl = 'admin/userhasvehicles';
    return axios.get(requestUrl);
}

export const UserVehicleDelete = (id) => {
    const requestUrl = `admin/userhasvehiclesmod/${id}`;
    return axios.delete(requestUrl);
}

export const StationSpotDelete = (id) => {
    const requestUrl = `admin/chargingstationspotsmod/${id}`;
    return axios.delete(requestUrl);
}

export const getUserProfile = (id) => {
    const requestUrl = `user/${id}/profile`;
    return axios.get(requestUrl);
}

export const getStationOwnerProfile = (id) => {
    const requestUrl = `stationowners/${id}/profile`;
    return axios.get(requestUrl);
}

export const getUserOBJECT = (id) => {
    const requestUrl = `users/${id}`;
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

export const getOneStationOBJECT = (id) => {
    const requestUrl = `admin/chargingstations/${id}`;
    return axios.get(requestUrl);
}

export const getOneSpotOBJECT = (id) => {
    const requestUrl = `admin/chargingspots/${id}`;
    return axios.get(requestUrl);
}

export const getStationStats = (id, startDate, endDate) => {
    let requestUrl = `SessionsPerStation/${id}`;
    if (startDate.length!==0) {
        requestUrl = requestUrl.concat('/').concat(startDate.replace('-','').replace('-',''));
        if (endDate.length!==0) {
            requestUrl = requestUrl.concat('/').concat(endDate.replace('-','').replace('-',''));  
        }
    }
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

export const getSpotSessions = (id, startDate, endDate) => {
    let requestUrl = `SessionsPerPoint/${id}`;
    if (startDate.length!==0) {
        requestUrl = requestUrl.concat('/').concat(startDate.replace('-','').replace('-',''));
        if (endDate.length!==0) {
            requestUrl = requestUrl.concat('/').concat(endDate.replace('-','').replace('-',''));  
        }
    }
    return axios.get(requestUrl);
}

/*
export const getStationOwnerStats = (id) => {
    const request
}*/