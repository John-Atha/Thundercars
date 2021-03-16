import React from 'react';
import ReactDOM from 'react-dom';
import { BrowserRouter, Switch, Route, useParams } from "react-router-dom";
import './index.css';
import Login from './Login';
import Register from './Register';
import Home from './Home';
import Profile from './Profile';
import UpdateProfile from './UpdateProfile';
import MyVehicles from './MyVehicles';
import Vehicle from './Vehicle';
import AddVehicle from './AddVehicle';
import AddProcess from './AddProcess';
import AcCharger from './AcCharger';
import NotFound from './NotFound';
import UserMyStatistics from './UserMyStatistics';
import UserVehicleStatistics from './UserVehicleStatistics';
import MyStations from './MyStations';
import MySpots from './MySpots';
import Station from './Station';
import AddStation from './AddStation';
import AddSpot from './AddSpot';
import UpdateStation from './UpdateStation';
import Spot from './Spot';
import MyStationStatistics from './MyStationStatistics';
import VehiclesDetailedSessions from './VehiclesDetailedSessions';
import MySpotsDetailedSessions from './MySpotsDetailedSessions';
import StationOwnerStatistics from './StationOwnerStatistics'; 
//import Developers from './Developers';
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

function FindUpdateStation() {
  let{id} = useParams();
  return <UpdateStation id={id} />;
}

function FindVehicle() {
  let {id} = useParams();
  return <Vehicle id={id}/>;
}

function FindAcCharger() {
  let {id} = useParams();
  return <AcCharger id={id}/>;
}

function FindAddProcess() {
  let {id} = useParams();
  return <AddProcess id={id} />;
}

ReactDOM.render(
  <React.StrictMode>
    <BrowserRouter>
      <Switch>
        <Route path="/" exact>
          <Home />
        </Route>
        <Route path="/login" exact>
          <Login />
        </Route>
        <Route path="/register" exact>
          <Register />
        </Route>
        <Route path="/profile" exact>
          <Profile />
        </Route>
        <Route path="/updateprofile" exact>
          <UpdateProfile />
        </Route>
        <Route path="/myVehicles" exact>
          <MyVehicles />
        </Route>
        <Route path="/vehicles/:id" exact>
          <FindVehicle />  
        </Route>
        <Route path="/AddVehicle" exact>
          <AddVehicle />
        </Route>
        <Route path="/acchargers/:id" exact>
          <FindAcCharger />
        </Route>
        <Route path="/UserMyStatistics" exact>
          <UserMyStatistics />
        </Route>
        <Route path="/UserVehicleStatistics" exact>
          <UserVehicleStatistics />
        </Route>
        <Route path="/myStationStatistics" exact>
          <MyStationStatistics />
        </Route>
        <Route path="/StationsMonthlyStatistics" exact>
          <StationOwnerStatistics />
        </Route>
        <Route path="/mySpotsDetailedSessions" exact>
          <MySpotsDetailedSessions />
        </Route>
        <Route path="/VehiclesDetailedSessions" exact>
          <VehiclesDetailedSessions />
        </Route>
        <Route path="/myStations" exact>
          <MyStations />
        </Route>
        <Route path="/stations/:id" exact>
          <FindStation />
        </Route>
        <Route path="/addStation" exact>
          <AddStation />
        </Route>
        <Route path="/stations/:id/update" exact>
          <FindUpdateStation />
        </Route>
        <Route path="/addSpot" exact>
          <AddSpot />
        </Route>
        <Route path="/mySpots" exact>
          <MySpots />
        </Route>
        <Route path="/spots/:id" exact>
          <FindSpot />
        </Route>
        <Route path="/addProcess/:id" exatc>
          <FindAddProcess />
        </Route> 
        <Route path="*">
          <NotFound />
        </Route>
      </Switch>
    </BrowserRouter>
  </React.StrictMode>,
  document.getElementById('root')
);

