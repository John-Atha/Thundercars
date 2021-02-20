import React from 'react';
import ReactDOM from 'react-dom';
import { BrowserRouter, Switch, Route, useParams } from "react-router-dom";
import './index.css';
//import App from './App';
import Login from './Login';
import Register from './Register';
import Home from './Home';
import MyVehicles from './MyVehicles';
import NotFound from './NotFound';
import MyStatistics from './MyStatistics';
import reportWebVitals from './reportWebVitals';
import 'bootstrap/dist/css/bootstrap.css';


ReactDOM.render(
  <React.StrictMode>
    <BrowserRouter>
      <Switch>
        <Route path="/home" exact>
          <Home />
        </Route>
        <Route path="/" exact>
          <Login />
        </Route>
        <Route path="/register" exact>
          <Register />
        </Route>
        <Route path="/myVehicles" exact>
          <MyVehicles />
        </Route>
        <Route path="/myStatistics" exact>
          <MyStatistics />
        </Route>
        <Route path="*">
          <NotFound />
        </Route>
      </Switch>
    </BrowserRouter>
  </React.StrictMode>,
  document.getElementById('root')
);

