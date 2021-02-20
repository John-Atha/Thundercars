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

export const countriesGet = () => {
    const requestUrl = "/admin/countries";
    return axios.get(requestUrl);
}

export const userAddressPost = (obj) => {
    const requestUrl = "/admin/useraddressesmod";
    return axios.post(requestUrl, obj);
};

export const userPost = (obj) => {
    const requestUrl = "/admin/usersmod";
    return axios.post(requestUrl, obj);
};
