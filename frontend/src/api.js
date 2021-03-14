import axios from "axios";
import config from "./config";

axios.defaults.baseURL = config.apiUrl;

let USERID = localStorage.getItem('userId')!==null ?  localStorage.getItem('userId').toString() : "52";
let ROLE = localStorage.getItem('role')!==null     ?  localStorage.getItem('role') : "VehicleOwner";
let TOKEN = localStorage.getItem('token')!==null   ?  localStorage.getItem('token').toString() : "1";

const dummy = "wiefweifhbv2397f2vfu22837514899tyjiwbc";
console.log("USERID: " + USERID);
console.log("ROLE: " + ROLE);
console.log("TOKEN: " + TOKEN);
let headerData = TOKEN + ":" + USERID + ":" + (ROLE==="Admin" ? "1" : (ROLE==="VehicleOwner" ? "2" : "3")) ;
console.log(headerData);

export const isLogged = () => {
    const requestUrl = `/admin/auth`;
    return axios.get(requestUrl, {
                    
                    headers: {
                        'X-OBSERVATORY-AUTH' : headerData,
                    }
        
    });
}

export const logoutPost = () => {
    const requestUrl = `/logout`;
    return axios.post(requestUrl,
                    {
                        headers: {
                            'X-OBSERVATORY-AUTH' : headerData,
                        }
                    }
    )
}

export const loginPost = (params) => {
    const requestUrl = `/login`;
    return axios.post(requestUrl,
                      params,
                      {
                          headers: {
                              "Content-Type": "application/x-www-form-urlencoded",
                              'X-OBSERVATORY-AUTH' : dummy,
                          }
                      });
};

export const dcChargerPost = (obj) => {
    const requestUrl = `/dcchargersmod`;
    return axios.post(requestUrl, obj, {
                    
        headers: {
            'X-OBSERVATORY-AUTH' : headerData,
        }
    });
}

export const acChargerPost = (obj) => {
    const requestUrl = `/acchargersmod`;
    return axios.post(requestUrl, obj, {
                    
        headers: {
            'X-OBSERVATORY-AUTH' : headerData,
        }
    });
}

export const acChargerPortPost = (obj) => {
    const requestUrl = `/acchargerportsmod`;
    return axios.post(requestUrl, obj, {
                    
        headers: {
            'X-OBSERVATORY-AUTH' : headerData,
        }
    });
}

export const dcChargerPortPost = (obj) => {
    const requestUrl = `/dcchargerportsmod`;
    return axios.post(requestUrl, obj, {
                    
        headers: {
            'X-OBSERVATORY-AUTH' : headerData,
        }
    });
}

export const PowerPerChargingPost = (obj) => {
    const requestUrl = `/powerperchargingpointmod`;
    return axios.post(requestUrl, obj, {
                    
        headers: {
            'X-OBSERVATORY-AUTH' : headerData,
        }
    });
}

export const UserVehiclePost = (obj) => {
    const requestUrl = `/userhasvehiclesmod`;
    return axios.post(requestUrl, obj, {
                    
        headers: {
            'X-OBSERVATORY-AUTH' : headerData,
        }
    });
}

export const getVehicles = (id) => {
    const requestUrl = `user/${id}/myvehicles`;
    return axios.get(requestUrl, {
                    
        headers: {
            'X-OBSERVATORY-AUTH' : headerData,
        }
    });
};

export const getOneVehicle = (userId,vehId) => {
    const requestUrl = `/user/${userId}/myvehicles/${vehId}`;
    return axios.get(requestUrl, {
                    
        headers: {
            'X-OBSERVATORY-AUTH' : headerData,
        }
    });
}

export const getOneAcCharger = (acId) => {
    const requestUrl = `/acchargers/${acId}`;
    return axios.get(requestUrl, {
                    
        headers: {
            'X-OBSERVATORY-AUTH' : dummy,
        }
    });
}

export const vehiclePost = (obj) => {
    const requestUrl = `/vehiclesmod`;
    return axios.post(requestUrl, obj, {
                    
        headers: {
            'X-OBSERVATORY-AUTH' : headerData,
        }
    });
}

export const countriesGet = () => {
    const requestUrl = `/countries`;
    return axios.get(requestUrl, {
                    
        headers: {
            'X-OBSERVATORY-AUTH' : dummy,
        }
    });
}

export const userAddressPut = (id, obj) => {
    const requestUrl = `/useraddressesmod/${id}`;
    return axios.put(requestUrl, obj, {
                    
        headers: {
            'X-OBSERVATORY-AUTH' : headerData,
        }
    });
}

export const userPutWithPass = (id, obj) => {
    const requestUrl = `/usersmodandpass/${id}`;
    return axios.put(requestUrl, obj, {
                    
        headers: {
            'X-OBSERVATORY-AUTH' : headerData,
        }
    });
}

export const userPutNoPass = (id, obj) => {
    const requestUrl = `/usersmodnopass/${id}`;
    return axios.put(requestUrl, obj, {
                    
        headers: {
            'X-OBSERVATORY-AUTH' : headerData,
        }
    });
}

export const stationOwnerPut = (id, obj) => {
    const requestUrl = `/stationownersmod/${id}`;
    return axios.put(requestUrl, obj, {
                    
        headers: {
            'X-OBSERVATORY-AUTH' : headerData,
        }
    });
}

export const stationOwnerPutNoPass = (id, obj) => {
    const requestUrl = `/stationownersmodnopass/${id}`;
    return axios.put(requestUrl, obj, {
                    
        headers: {
            'X-OBSERVATORY-AUTH' : headerData,
        }
    });
}

export const currentProvidersGet = () => {
    const requestUrl = `/currentproviders`;
    return axios.get(requestUrl, {
                    
        headers: {
            'X-OBSERVATORY-AUTH' : dummy,
        }
    });
}

export const operatorsGet = () => {
    const requestUrl = `/operators`;
    return axios.get(requestUrl, {
                    
        headers: {
            'X-OBSERVATORY-AUTH' : dummy,
        }
    });
}

export const statusTypesGet = () => {
    const requestUrl = `/statustypes`;
    return axios.get(requestUrl, {
                    
        headers: {
            'X-OBSERVATORY-AUTH' : dummy,
        }
    });
}

export const usageTypesGet = () => {
    const requestUrl = `/usagetypes`;
    return axios.get(requestUrl, {
                    
        headers: {
            'X-OBSERVATORY-AUTH' : dummy,
        }
    });
}

export const connTypesGet = () => {
    const requestUrl = `/connectiontypes`;
    return axios.get(requestUrl, {
                    
        headers: {
            'X-OBSERVATORY-AUTH' : dummy,
        }
    });
}

export const currTypesGet = () => {
    const requestUrl = `/currenttypes`;
    return axios.get(requestUrl, {
                    
        headers: {
            'X-OBSERVATORY-AUTH' : dummy,
        }
    });
}

export const levelsGet = () => {
    const requestUrl = `/levels`;
    return axios.get(requestUrl, {
                    
        headers: {
            'X-OBSERVATORY-AUTH' : dummy,
        }
    });
}

export const stationOwnerOBJECTGet = (id) => {
    const requestUrl = `/stationowners/${id}`;
    return axios.get(requestUrl, {
                    
        headers: {
            'X-OBSERVATORY-AUTH' : headerData,
        }
    });
}

export const stationAddressPost = (obj) => {
    const requestUrl = `/addressesmod`;
    return axios.post(requestUrl, obj, {
                    
        headers: {
            'X-OBSERVATORY-AUTH' : headerData,
        }
    });
}

export const stationPost = (obj) => {
    const requestUrl = `/chargingstationsmod`;
    return axios.post(requestUrl, obj, {
                    
        headers: {
            'X-OBSERVATORY-AUTH' : headerData,
        }
    });
}

export const stationPut = (obj, id) => {
    const requestUrl = `/chargingstationsmod/${id}`;
    return axios.put(requestUrl, obj, {
                    
        headers: {
            'X-OBSERVATORY-AUTH' : headerData,
        }
    });
}

export const spotPost = (obj) => {
    const requestUrl = `/chargingspotsmod`;
    return axios.post(requestUrl, obj, {
                    
        headers: {
            'X-OBSERVATORY-AUTH' : headerData,
        }
    });
}

export const spotPut = (obj, id) => {
    const requestUrl = `/chargingspotsmod/${id}`;
    return axios.put(requestUrl, obj, {
                    
        headers: {
            'X-OBSERVATORY-AUTH' : headerData,
        }
    });
}

export const userAddressPost = (obj) => {
    const requestUrl = `/useraddressesmod`;
    return axios.post(requestUrl, obj, {
                    
        headers: {
            'X-OBSERVATORY-AUTH' : dummy,
        }
    });
};

export const stationSpotPost = (obj) => {
    const requestUrl = `/chargingstationspotsmod`;
    return axios.post(requestUrl, obj, {
                    
        headers: {
            'X-OBSERVATORY-AUTH' : headerData,
        }
    });
}

export const stationSpotGet = (id) => {
    const requestUrl = `/chargingstationspots/${id}`;
    return axios.get(requestUrl, {
                    
        headers: {
            'X-OBSERVATORY-AUTH' : dummy,
        }
    });
}


export const userPost = (obj, postAddr) => {
    const requestUrl = `/${postAddr}`;
    return axios.post(requestUrl, obj, {
                    
        headers: {
            'X-OBSERVATORY-AUTH' : dummy,
        }
    });
};

export const getUserStats = (id) => {
    const requestUrl = `/user/${id}/statistics`;
    return axios.get(requestUrl, {
                    
        headers: {
            'X-OBSERVATORY-AUTH' : headerData,
        }
    });
}

export const getVehicleSessions = (id, startDate, endDate) => {
    let requestUrl = `/SessionsPerEV/${id}`;
    console.log(headerData);
    if (startDate.length!==0) {
        requestUrl = requestUrl.concat('/').concat(startDate.replace('-','').replace('-',''));
        if (endDate.length!==0) {
            requestUrl = requestUrl.concat('/').concat(endDate.replace('-','').replace('-',''));  
        }
    }
    return axios.get(requestUrl, {
                    
        headers: {
            'X-OBSERVATORY-AUTH' : headerData,
        }
    });
}

export const getAllUserVehicle = () => {
    const requestUrl = `/userhasvehicles`;
    return axios.get(requestUrl, {
                    
        headers: {
            'X-OBSERVATORY-AUTH' : headerData,
        }
    });
}

export const UserVehicleDelete = (id) => {
    const requestUrl = `/userhasvehiclesmod/${id}`;
    return axios.delete(requestUrl, {
                    
        headers: {
            'X-OBSERVATORY-AUTH' : headerData,
        }
    });
}

export const StationSpotDelete = (id) => {
    const requestUrl = `/chargingstationspotsmod/${id}`;
    return axios.delete(requestUrl, {
                    
        headers: {
            'X-OBSERVATORY-AUTH' : headerData,
        }
    });
}

export const userDelete = (id) => {
    const requestUrl = `/usersmod/${id}`;
    return axios.delete(requestUrl, {
                    
        headers: {
            'X-OBSERVATORY-AUTH' : headerData,
        }
    });
}

export const stationOwnerDelete = (id) => {
    const requestUrl = `/stationownersmod/${id}`;
    return axios.delete(requestUrl, {
                    
        headers: {
            'X-OBSERVATORY-AUTH' : headerData,
        }
    });
}

export const stationDelete = (id) => {
    const requestUrl = `/chargingstationsmod/${id}`;
    return axios.delete(requestUrl, {
                    
        headers: {
            'X-OBSERVATORY-AUTH' : headerData,
        }
    });
}

export const getUserProfile = (id) => {
    const requestUrl = `/user/${id}/profile`;
    return axios.get(requestUrl, {
                    
        headers: {
            'X-OBSERVATORY-AUTH' : headerData,
        }
    });
}

export const getStationOwnerProfile = (id) => {
    const requestUrl = `/stationowners/${id}/profile`;
    return axios.get(requestUrl, {
                    
        headers: {
            'X-OBSERVATORY-AUTH' : headerData,
        }
    });
}
export const getAllStations = () => {
    const requestUrl = `/chargingstations`;
    return axios.get(requestUrl, {
                    
        headers: {
            'X-OBSERVATORY-AUTH' : dummy,
        }
    });
  }
export const getUserOBJECT = (id) => {
    const requestUrl = `/users/${id}`;
    return axios.get(requestUrl, {
                    
        headers: {
            'X-OBSERVATORY-AUTH' : headerData,
        }
    });
}

export const getStations = (id) => {
    const requestUrl = `/stationowners/${id}/mystations`;
    return axios.get(requestUrl, {
                    
        headers: {
            'X-OBSERVATORY-AUTH' : headerData,
        }
    });
}

export const getOneStation = (id) => {
    const requestUrl = `/chargingstations/${id}`;
    return axios.get(requestUrl, {
                    
        headers: {
            'X-OBSERVATORY-AUTH' : dummy,
        }
    });
}

export const getOneStationOBJECT = (id) => {
    const requestUrl = `/chargingstationsdb/${id}`;
    return axios.get(requestUrl, {
                    
        headers: {
            'X-OBSERVATORY-AUTH' : dummy,
        }
    });
}

export const getOneSpotOBJECT = (id) => {
    const requestUrl = `/chargingspotsdb/${id}`;
    return axios.get(requestUrl, {
                    
        headers: {
            'X-OBSERVATORY-AUTH' : dummy,
        }
    });
}

export const getStationStats = (id, startDate, endDate) => {
    let requestUrl = `/SessionsPerStation/${id}`;
    if (startDate.length!==0) {
        requestUrl = requestUrl.concat('/').concat(startDate.replace('-','').replace('-',''));
        if (endDate.length!==0) {
            requestUrl = requestUrl.concat('/').concat(endDate.replace('-','').replace('-',''));  
        }
    }
    return axios.get(requestUrl, {
                    
        headers: {
            'X-OBSERVATORY-AUTH' : headerData,
        }
    });
}

export const getOneSpot = (id) => {
    const requestUrl = `/chargingspots/${id}`;
    return axios.get(requestUrl, {
                    
        headers: {
            'X-OBSERVATORY-AUTH' : dummy,
        }
    });
}

export const getStationOwnerStatistics = (id) => {
    const requestUrl = `/stationowners/${id}/mystatistics`;
    return axios.get(requestUrl, {
                    
        headers: {
            'X-OBSERVATORY-AUTH' : headerData,
        }
    });
}

export const getSpotSessions = (id, startDate, endDate) => {
    let requestUrl = `/SessionsPerPoint/${id}`;
    if (startDate.length!==0) {
        requestUrl = requestUrl.concat('/').concat(startDate.replace('-','').replace('-',''));
        if (endDate.length!==0) {
            requestUrl = requestUrl.concat('/').concat(endDate.replace('-','').replace('-',''));  
        }
    }
    return axios.get(requestUrl, {
                    
        headers: {
            'X-OBSERVATORY-AUTH' : headerData,
        }
    });
}

/*
export const getStationOwnerStats = (id) => {
    const request
}*/