import axios from "axios";
import config from "./config";

axios.defaults.baseURL = config.apiUrl;

const out = config.notLoggedKey;
const logged = localStorage.getItem('token');

export const isLogged = () => {
    const requestUrl = `/${logged}/admin/healthcheck`;
    return axios.get(requestUrl);
}

export const logoutPost = (userId, role) => {
    const requestUrl = `/${logged}/logout`;
    return axios.post(requestUrl,
                    userId+":"+role,
                    {
                        headers: {
                            "Content-Type": "text/plain"
                        }
                    }
    )
}

export const loginPost = (params) => {
    const requestUrl = `/${out}/login`;
    return axios.post(requestUrl,
                      params,
                      {
                          headers: {
                              "Content-Type": "application/x-www-form-urlencoded"
                          }
                      });
};

export const dcChargerPost = (obj) => {
    const requestUrl = `/${logged}/dcchargersmod`;
    return axios.post(requestUrl, obj);
}

export const acChargerPost = (obj) => {
    const requestUrl = `/${logged}/acchargersmod`;
    return axios.post(requestUrl, obj);
}

export const acChargerPortPost = (obj) => {
    const requestUrl = `/${logged}/acchargerportsmod`;
    return axios.post(requestUrl, obj);
}

export const dcChargerPortPost = (obj) => {
    const requestUrl = `/${logged}/dcchargerportsmod`;
    return axios.post(requestUrl, obj);
}

export const PowerPerChargingPost = (obj) => {
    const requestUrl = `/${logged}/powerperchargingpointmod`;
    return axios.post(requestUrl, obj);
}

export const UserVehiclePost = (obj) => {
    const requestUrl = `/${logged}/userhasvehiclesmod`;
    return axios.post(requestUrl, obj);
}

export const getVehicles = (id) => {
    const requestUrl = `/${logged}/user/${id}/myvehicles`;
    return axios.get(requestUrl);
};

export const getOneVehicle = (userId,vehId) => {
    const requestUrl = `/${logged}/user/${userId}/myvehicles/${vehId}`;
    return axios.get(requestUrl);
}

export const getOneAcCharger = (acId) => {
    const requestUrl = `/${out}/acchargers/${acId}`;
    return axios.get(requestUrl);
}

export const vehiclePost = (obj) => {
    const requestUrl = `/${logged}/vehiclesmod`;
    return axios.post(requestUrl, obj);
}

export const countriesGet = () => {
    const requestUrl = `/${out}/countries`;
    return axios.get(requestUrl);
}

export const userAddressPut = (id, obj) => {
    const requestUrl = `/${logged}/useraddressesmod/${id}`;
    return axios.put(requestUrl, obj);
}

export const userPutWithPass = (id, obj) => {
    const requestUrl = `/${logged}/usersmodandpass/${id}`;
    return axios.put(requestUrl, obj);
}

export const userPutNoPass = (id, obj) => {
    const requestUrl = `/${logged}/usersmodnopass/${id}`;
    return axios.put(requestUrl, obj);
}

export const stationOwnerPut = (id, obj) => {
    const requestUrl = `/${logged}/stationownersmod/${id}`;
    return axios.put(requestUrl, obj);
}

export const stationOwnerPutNoPass = (id, obj) => {
    const requestUrl = `/${logged}/stationownersmodnopass/${id}`;
    return axios.put(requestUrl, obj);
}

export const currentProvidersGet = () => {
    const requestUrl = `/${out}/currentproviders`;
    return axios.get(requestUrl);
}

export const operatorsGet = () => {
    const requestUrl = `/${out}/operators`;
    return axios.get(requestUrl);
}

export const statusTypesGet = () => {
    const requestUrl = `/${out}/statustypes`;
    return axios.get(requestUrl);
}

export const usageTypesGet = () => {
    const requestUrl = `/${out}/usagetypes`;
    return axios.get(requestUrl);
}

export const connTypesGet = () => {
    const requestUrl = `/${out}/connectiontypes`;
    return axios.get(requestUrl);
}

export const currTypesGet = () => {
    const requestUrl = `/${out}/currenttypes`;
    return axios.get(requestUrl);
}

export const levelsGet = () => {
    const requestUrl = `/${out}/levels`;
    return axios.get(requestUrl);
}

export const stationOwnerOBJECTGet = (id) => {
    const requestUrl = `/${logged}/stationowners/${id}`;
    return axios.get(requestUrl);
}

export const stationAddressPost = (obj) => {
    const requestUrl = `/${logged}/addressesmod`;
    return axios.post(requestUrl, obj);
}

export const stationPost = (obj) => {
    const requestUrl = `/${logged}/chargingstationsmod`;
    return axios.post(requestUrl, obj);
}

export const stationPut = (obj, id) => {
    const requestUrl = `/${logged}/chargingstationsmod/${id}`;
    return axios.put(requestUrl, obj);
}

export const spotPost = (obj) => {
    const requestUrl = `/${logged}/chargingspotsmod`;
    return axios.post(requestUrl, obj);
}

export const spotPut = (obj, id) => {
    const requestUrl = `/${logged}/chargingspotsmod/${id}`;
    return axios.put(requestUrl, obj);
}

export const userAddressPost = (obj) => {
    const requestUrl = `/${out}/useraddressesmod`;
    return axios.post(requestUrl, obj);
};

export const stationSpotPost = (obj) => {
    const requestUrl = `/${logged}/chargingstationspotsmod`;
    return axios.post(requestUrl, obj);
}

export const stationSpotGet = (id) => {
    const requestUrl = `/${logged}/chargingstationspots/${id}`;
    return axios.get(requestUrl);
}


export const userPost = (obj, postAddr) => {
    const requestUrl = `/${out}/${postAddr}`;
    return axios.post(requestUrl, obj);
};

export const getUserStats = (id) => {
    const requestUrl = `/${logged}/user/${id}/statistics`;
    return axios.get(requestUrl);
}

export const getVehicleSessions = (id, startDate, endDate) => {
    let requestUrl = `/${logged}/SessionsPerEV/${id}`;
    if (startDate.length!==0) {
        requestUrl = requestUrl.concat('/').concat(startDate.replace('-','').replace('-',''));
        if (endDate.length!==0) {
            requestUrl = requestUrl.concat('/').concat(endDate.replace('-','').replace('-',''));  
        }
    }
    return axios.get(requestUrl);
}

export const getAllUserVehicle = () => {
    const requestUrl = `/${logged}/userhasvehicles`;
    return axios.get(requestUrl);
}

export const UserVehicleDelete = (id) => {
    const requestUrl = `/${logged}/userhasvehiclesmod/${id}`;
    return axios.delete(requestUrl);
}

export const StationSpotDelete = (id) => {
    const requestUrl = `/${logged}/chargingstationspotsmod/${id}`;
    return axios.delete(requestUrl);
}

export const userDelete = (id) => {
    const requestUrl = `/${logged}/usersmod/${id}`;
    return axios.delete(requestUrl);
}

export const stationOwnerDelete = (id) => {
    const requestUrl = `/${logged}/stationownersmod/${id}`;
    return axios.delete(requestUrl);
}

export const stationDelete = (id) => {
    const requestUrl = `/${logged}/chargingstationsmod/${id}`;
    return axios.delete(requestUrl);
}

export const getUserProfile = (id) => {
    const requestUrl = `/${logged}/user/${id}/profile`;
    return axios.get(requestUrl);
}

export const getStationOwnerProfile = (id) => {
    const requestUrl = `/${logged}/stationowners/${id}/profile`;
    return axios.get(requestUrl);
}
export const getAllStations = () => {
    const requestUrl = `/${out}/chargingstations`;
    return axios.get(requestUrl);
  }
export const getUserOBJECT = (id) => {
    const requestUrl = `/${logged}/users/${id}`;
    return axios.get(requestUrl);
}

export const getStations = (id) => {
    const requestUrl = `/${logged}/stationowners/${id}/mystations`;
    return axios.get(requestUrl);
}

export const getOneStation = (id) => {
    const requestUrl = `/${out}/chargingstations/${id}`;
    return axios.get(requestUrl);
}

export const getOneStationOBJECT = (id) => {
    const requestUrl = `/${out}/chargingstationsdb/${id}`;
    return axios.get(requestUrl);
}

export const getOneSpotOBJECT = (id) => {
    const requestUrl = `/${out}/chargingspotsdb/${id}`;
    return axios.get(requestUrl);
}

export const getStationStats = (id, startDate, endDate) => {
    let requestUrl = `/${logged}/SessionsPerStation/${id}`;
    if (startDate.length!==0) {
        requestUrl = requestUrl.concat('/').concat(startDate.replace('-','').replace('-',''));
        if (endDate.length!==0) {
            requestUrl = requestUrl.concat('/').concat(endDate.replace('-','').replace('-',''));  
        }
    }
    return axios.get(requestUrl);
}

export const getOneSpot = (id) => {
    const requestUrl = `/${out}/chargingspots/${id}`;
    return axios.get(requestUrl);
}

export const getStationOwnerStatistics = (id) => {
    const requestUrl = `/${logged}/stationowners/${id}/mystatistics`;
    return axios.get(requestUrl);
}

export const getSpotSessions = (id, startDate, endDate) => {
    let requestUrl = `/${logged}/SessionsPerPoint/${id}`;
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