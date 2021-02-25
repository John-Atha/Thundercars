import React from 'react';
import ReactDOM from 'react-dom';
import { BrowserRouter, Switch, Route, useParams } from "react-router-dom";
import './index.css';
//import App from './App';
import Login from './Login';
import Register from './Register';
import Home from './Home';
import MyVehicles from './MyVehicles';
import Vehicle from './Vehicle';
import NotFound from './NotFound';
import UserMyStatistics from './UserMyStatistics';
import MyStations from './MyStations';
import MySpots from './MySpots';
import Station from './Station';
import Spot from './Spot';
import MyStationStatistics from './MyStationStatistics';
import MySpotStatistics from './MySpotStatistics';
import StationOwnerStatistics from './StationOwnerStatistics'; 
//import reportWebVitals from './reportWebVitals';
import 'bootstrap/dist/css/bootstrap.css';


function FindStation() {
  let {id} = useParams();
  return <Station id={id} />;
}

function FindSpot() {
  let {id} = useParams();
  return <Spot id={id} />;
}

function FindVehicle() {
  let {id} = useParams();
  return <Vehicle id={id}/>;
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
        <Route path="/vehicles/:id">
          <FindVehicle />  
        </Route>
        <Route path="/UserMyStatistics" exact>
          <UserMyStatistics />
        </Route>
        <Route path="/UserVehicleStatistics" exact>
          <UserMyStatistics />
        </Route>
        <Route path="/myStationStatistics" exact>
          <MyStationStatistics />
        </Route>
        <Route path="/StationOwnerStatistics">
          <StationOwnerStatistics />
        </Route>
        <Route path="/mySpotStatistics" exact>
          <MySpotStatistics />
        </Route>
        <Route path="/myStations" exact>
          <MyStations />
        </Route>
        <Route path="/stations/:id">
          <FindStation />
        </Route>
        <Route path="/mySpots" exact>
          <MySpots />
        </Route>
        <Route path="/spots/:id">
          <FindSpot />
        </Route>
        <Route path="*">
          <NotFound />
        </Route>
      </Switch>
    </BrowserRouter>
  </React.StrictMode>,
  document.getElementById('root')
);

