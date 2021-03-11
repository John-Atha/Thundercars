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
    const requestUrl = "/dcchargersmod";
    return axios.post(requestUrl, obj);
}

export const acChargerPost = (obj) => {
    const requestUrl = "/acchargersmod";
    return axios.post(requestUrl, obj);
}

export const acChargerPortPost = (obj) => {
    const requestUrl = "/acchargerportsmod";
    return axios.post(requestUrl, obj);
}

export const dcChargerPortPost = (obj) => {
    const requestUrl = "/dcchargerportsmod";
    return axios.post(requestUrl, obj);
}

export const PowerPerChargingPost = (obj) => {
    const requestUrl = "powerperchargingpointmod";
    return axios.post(requestUrl, obj);
}

export const UserVehiclePost = (obj) => {
    const requestUrl = `userhasvehiclesmod`;
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
    const requestUrl = "vehiclesmod";
    return axios.post(requestUrl, obj);
}

export const countriesGet = () => {
    const requestUrl = "/countries";
    return axios.get(requestUrl);
}

export const userAddressPut = (id, obj) => {
    const requestUrl = `/useraddressesmod/${id}`;
    return axios.put(requestUrl, obj);
}

export const userPutWithPass = (id, obj) => {
    const requestUrl = `usersmodandpass/${id}`;
    return axios.put(requestUrl, obj);
}

export const userPutNoPass = (id, obj) => {
    const requestUrl = `usersmodnopass/${id}`;
    return axios.put(requestUrl, obj);
}

export const stationOwnerPut = (id, obj) => {
    const requestUrl = `stationownersmod/${id}`;
    return axios.put(requestUrl, obj);
}

export const stationOwnerPutNoPass = (id, obj) => {
    const requestUrl = `stationownersmodnopass/${id}`;
    return axios.put(requestUrl, obj);
}


export const currentProvidersGet = () => {
    const requestUrl = "/currentproviders";
    return axios.get(requestUrl);
}

export const operatorsGet = () => {
    const requestUrl = "/operators";
    return axios.get(requestUrl);
}

export const statusTypesGet = () => {
    const requestUrl = "/statustypes";
    return axios.get(requestUrl);
}

export const usageTypesGet = () => {
    const requestUrl = "/usagetypes";
    return axios.get(requestUrl);
}

export const connTypesGet = () => {
    const requestUrl = '/connectiontypes';
    return axios.get(requestUrl);
}

export const currTypesGet = () => {
    const requestUrl = '/currenttypes';
    return axios.get(requestUrl);
}

export const levelsGet = () => {
    const requestUrl = '/levels';
    return axios.get(requestUrl);
}

export const stationOwnerOBJECTGet = (id) => {
    const requestUrl = `/stationowners/${id}`;
    return axios.get(requestUrl);
}

export const stationAddressPost = (obj) => {
    const requestUrl = "/addressesmod";
    return axios.post(requestUrl, obj);
}

export const stationPost = (obj) => {
    const requestUrl = "/chargingstationsmod";
    return axios.post(requestUrl, obj);
}

export const stationPut = (obj, id) => {
    const requestUrl = `/chargingstationsmod/${id}`;
    return axios.put(requestUrl, obj);
}

export const spotPost = (obj) => {
    const requestUrl = "chargingspotsmod";
    return axios.post(requestUrl, obj);
}

export const spotPut = (obj, id) => {
    const requestUrl = `chargingspotsmod/${id}`;
    return axios.put(requestUrl, obj);
}

export const userAddressPost = (obj) => {
    const requestUrl = "/useraddressesmod";
    return axios.post(requestUrl, obj);
};

export const stationSpotPost = (obj) => {
    const requestUrl = "/chargingstationspotsmod";
    return axios.post(requestUrl, obj);
}

export const stationSpotGet = (id) => {
    const requestUrl = `chargingstationspots/${id}`;
    return axios.get(requestUrl);
}


export const userPost = (obj, postAddr) => {
    const requestUrl = `/${postAddr}`;
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
    const requestUrl = 'userhasvehicles';
    return axios.get(requestUrl);
}

export const UserVehicleDelete = (id) => {
    const requestUrl = `userhasvehiclesmod/${id}`;
    return axios.delete(requestUrl);
}

export const StationSpotDelete = (id) => {
    const requestUrl = `chargingstationspotsmod/${id}`;
    return axios.delete(requestUrl);
}

export const userDelete = (id) => {
    const requestUrl = `usersmod/${id}`;
    return axios.delete(requestUrl);
}

export const stationOwnerDelete = (id) => {
    const requestUrl = `stationownersmod/${id}`;
    return axios.delete(requestUrl);
}

export const stationDelete = (id) => {
    const requestUrl = `chargingstationsmod/${id}`;
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
export const getAllStations = () => {
    const requestUrl = `chargingstations`;
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
    const requestUrl = `chargingstationsdb/${id}`;
    return axios.get(requestUrl);
}

export const getOneSpotOBJECT = (id) => {
    const requestUrl = `chargingspotsdb/${id}`;
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