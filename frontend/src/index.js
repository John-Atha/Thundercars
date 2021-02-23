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
import MyStations from './MyStations';
import Station from './Station';
import reportWebVitals from './reportWebVitals';
import 'bootstrap/dist/css/bootstrap.css';


function FindStation() {
  let {id} = useParams();
  return <Station id={id} />;
}


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
        <Route path="/myStations" exact>
          <MyStations />
        </Route>
        <Route path="/stations/:id" exact>
          <FindStation />
        </Route>
        <Route path="*">
          <NotFound />
        </Route>
      </Switch>
    </BrowserRouter>
  </React.StrictMode>,
  document.getElementById('root')
);

