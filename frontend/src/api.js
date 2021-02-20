import axios from "axios";
import config from "./config";

axios.defaults.baseURL = config.apiUrl;

export const loginPost = (obj) => {
    const requestUrl = "/evcharge/api/login";
    return axios.post(requestUrl,
                      obj,
                      {
                          headers: {
                              "Content-Type": "text/plain"
                          }
                      });
};

export const getVehicles = (id) => {
    const requestUrl = `/evcharge/api/user/${id}/myvehicles` ;
    return axios.get(requestUrl);
}