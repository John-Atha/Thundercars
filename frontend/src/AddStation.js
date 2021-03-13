import React from 'react';
import './AddStation.css';
import MyNavbar from './MyNavbar';
import {countriesGet, currentProvidersGet, operatorsGet, statusTypesGet, usageTypesGet, stationOwnerOBJECTGet, stationAddressPost, stationPost, stationSpotPost, connTypesGet, currTypesGet, levelsGet, spotPost, isLogged} from './api';
import UnAuthorized from './UnAuthorized';

class AddStation extends React.Component {
    
    constructor(props) {
        super(props);
        this.state = {
            userId: localStorage.getItem('userId'),
            role: localStorage.getItem('role'),
            uuid: "",
            currentProvider: "",
            stationOwner: null, // will be filled with me
            operator: "",
            usageType: "",
            addressLine1: "",
            addressLine2: "",
            generalComments: "",
            contactEmail: "",
            postCode: "",
            stateOrProvince: "",
            relatedUrl: "",
            title: "",
            latitude: "",
            longtitude: "",
            accessComments: "",
            town: "",
            contactTelephone1: "",
            contactTelephone2: "",
            country: "",
            comments: "",
            dateCreated: "",
            statusType: "",
            submissionStatus: "",
            rating: "",
            costPerkWh: "",
            //stationOwner: "",
            countries: [{}],
            currentProviders: [{}],
            operators: [{}],
            statusTypes: [{}],
            usageTypes: [{}],
            error: "Insert compulsory info",
            submitDisabled: true,
            connType: "",
            currType: "",
            level: "",
            connTypes: [{}],
            currTypes: [{}],
            levels: [{}],
            amps: "",
            voltage: "",
            power: "",
            spotComments: "",
            quantity: "",
            quantityAvailable: "",
            quantityOperational: "",
            logged: false,
        }
        
        this.handleInput = this.handleInput.bind(this);    
        this.handleSubmit = this.handleSubmit.bind(this);    
        this.submitActivate = this.submitActivate.bind(this);    
        this.allowed = this.allowed.bind(this);    
    }

    handleInput = (e) => {
        const name = e.target.name;
        const value = e.target.value;
        this.setState( {
            [name]: value
        })
        console.log(name+":  ");
        console.log(value);
    }

    allowed = () => {
        if (this.state.uuid.length!==0 &&
            this.state.latitude.length!==0 &&
            this.state.longtitude.length!==0 &&
            this.state.title.length!==0 &&
            this.state.costPerkWh.length!==0 &&
            this.state.addressLine1.length!==0 &&
            this.state.currentProvider.length!==0 &&
            this.state.operator.length!==0 &&
            this.state.contactEmail.length!==0 &&
            this.state.contactTelephone1.length!==0) {
                this.setState({
                    error: null
                });
                return true;
        }
        else {
            this.setState({
                error: "Insert compulsory info"
            });
            return false;
        }
    }

    submitActivate = () => {
        let disabled = !this.allowed();
        const submitButton = document.getElementById('add-station-submit');
        if (disabled) {
            submitButton.style.backgroundColor="#9999";
            submitButton.style.color="white";
            this.setState ({
                submitDisabled: true
            });
        }
        else {
            submitButton.style.backgroundColor="rgb(103 255 88 / 60%)";
            submitButton.style.color="white";
            this.setState ({
                submitDisabled: false
            });
        }
        console.log("submit disabled: " + this.state.submitDisabled);
    }

    componentDidMount() {
        isLogged()
        .then(response => {
            console.log(response);
            this.setState({
                logged: true,
            })
            countriesGet()
            .then(response => {
                console.log(response);
                this.setState({
                    countries: response.data,
                    country: response.data[0].id+",,"+response.data[0].title+",,"+response.data[0].continentCode+",,"+response.data[0].isocode
                })

                //console.log(this.state.countries);
            })
            .catch(err => {
                console.log(err);
            })
            currentProvidersGet()
            .then(response => {
                console.log(response);
                this.setState({
                    currentProviders: response.data,
                    currentProvider:response.data[0].id+",,"+response.data[0].name+",,"+( response.data[0].country ? (response.data[0].country.id+",,"+response.data[0].country.title+",,"+response.data[0].country.continentCode+",,"+response.data[0].country.isocode) : "null,,null,,null,,null")
                })
                //console.log(this.state.currentProviders);
            })
            .catch(err=> {
                console.log(err);
            })
            operatorsGet()
            .then(response => {
                console.log(response);
                this.setState({
                    operators: response.data,
                    operator: response.data[0].id+",,"+response.data[0].title+",,"+response.data[0].websiteUrl+",,"+response.data[0].comments+",,"+response.data[0].primaryPhone+",,"+response.data[0].secondaryPhone+","
                    +response.data[0].isPrivateIndividual+",,"+response.data[0].bookingUrl+",,"+response.data[0].contactEmail+",,"+response.data[0].isRestrictedEdit+",,"+response.data[0].faultReportEmail
                })
            })
            .catch(err => {
                console.log(err);
            })
            statusTypesGet()
            .then(response=>{
                this.setState({
                    statusTypes: response.data,
                    statusType: response.data[0].id+",,"+response.data[0].title+",,"+response.data[0].isOperational+",,"+response.data[0].isUserSelectable,
                })
            })
            .catch(err => {
                console.log(err);
            })
            usageTypesGet()
            .then(response => {
                console.log(response);
                this.setState({
                    usageTypes: response.data,
                    usageType: response.data[0].id+",,"+response.data[0].title+",,"+response.data[0].isMembershipRequired
                })
            })
            .catch(err => {
                console.log(err);
            })
            stationOwnerOBJECTGet(this.state.userId)
            .then(response => {
                console.log(response);
                this.setState({
                    stationOwner: response.data
                });
                console.log(this.state.stationOwner);
            })
            .catch(err=> {
                console.log(err);
            })
            connTypesGet()
            .then(response =>{
                console.log(response);
                this.setState({
                    connTypes: response.data,
                    connType: response.data[0].id+",,"+response.data[0].title+",,"+response.data[0].formalName+",,"+response.data[0].category
                })
            })
            .catch(err => {
                console.log(err);
            })
            currTypesGet()
            .then(response => {
                console.log(response);
                this.setState({
                    currTypes: response.data,
                    currType: response.data[0].id+",,"+response.data[0].title+",,"+response.data[0].description
                })
            })
            .catch(err=> {
                console.log(err);
            })
            levelsGet()
            .then(response => {
                console.log(response);
                this.setState({
                    levels: response.data,
                    level: response.data[0].id+",,"+response.data[0].title+",,"+response.data[0].comments+",,"+response.data[0].isFastChargeCapable
                })
            })
            .catch(err => {
                console.log(err);
            })
        })
        .catch(err => {
            console.log(err);
            this.setState({
                logged: false,
            })
        })

    }

    handleSubmit = (e) => {
        console.log("SUBMITTED");
        let objectFinal = null;
        let currentProv = null;
        let stationOwner = this.state.stationOwner;
        let operator = null;
        let usageType = null;
        let postAddress = null;
        let getAddress = null;
        let statusType = null;
        let submissionStatus = null;
        let connType = null;
        let level = null;
        let currType = null;


        // build operator nested object
        // value={key.id+",,"+key.title+",,"+key.websiteUrl+",,"+key.comments+",,"+key.primaryPhone+",,"+key.secondaryPhone+","
        //     +key.isPrivateIndividual+",,"+key.bookingUrl+",,"+key.contactEmail+",,"+key.isRestrictedEdit+",,"+key.faultReportEmail}
        let operatorStr = this.state.operator;
        let operParts = operatorStr.split(",,");
        operator = {
            title:               operParts[1] ==="null" ? null : operParts[1] , 
            id:                  operParts[0] ==="null" ? null : operParts[0] , 
            websiteUrl:          operParts[2] ==="null" ? null : operParts[2] , 
            comments:            operParts[3] ==="null" ? null : operParts[3] , 
            primaryPhone:        operParts[4] ==="null" ? null : operParts[4] , 
            secondaryPhone:      operParts[5] ==="null" ? null : operParts[5] , 
            isPrivateIndividual: operParts[6] ==="null" ? null : operParts[6] , 
            bookingUrl:          operParts[7] ==="null" ? null : operParts[7] , 
            contactEmail:        operParts[8] ==="null" ? null : operParts[8] , 
            isRestrictedEdit:    operParts[9] ==="null" ? null : operParts[9] , 
            faultReportEmail:    operParts[10]==="null" ? null : operParts[10],
        };
        // build usageType nested object
        let usageTypeStr = this.state.usageType;
        let usageTypeParts = usageTypeStr.split(",,");
        usageType = {
            id:                    usageTypeParts[0] ==="null" ? null : usageTypeParts[0] ,
            title:                 usageTypeParts[1] ==="null" ? null : usageTypeParts[1] ,
            isMembershipRequired:  usageTypeParts[2] ==="null" ? null : usageTypeParts[2] ,
        };
        // build currentProvider nested object
        let currentProvStr = this.state.currentProvider;
        let currentProvParts = currentProvStr.split(",,");
        currentProv = {
            id:             currentProvParts[0] ,
            name:           currentProvParts[1] ==="null" ? null : currentProvParts[1] ,
            country:  {
                id:            currentProvParts[2] ,
                title:         currentProvParts[3] ,
                continentCode: currentProvParts[4] ,
                isocode:       currentProvParts[5] ,
            }
        };
        // build submissionStatus nested object
        submissionStatus = {
            id:     1,
            title:  "Submission Under Review" ,
            isLive: false,
        }
        // build statusType nested object
        let statusTypeStr = this.state.statusType;
        let statusTypeParts = statusTypeStr.split(",,");
        statusType = {
            id:               statusTypeParts[0]==="null" ? null : statusTypeParts[0],
            title:            statusTypeParts[1]==="null" ? null : statusTypeParts[1],
            isOperational:    statusTypeParts[2]==="null" ? null : statusTypeParts[2],
            isUserSelectable: statusTypeParts[3]==="null" ? null : statusTypeParts[3]
        }
        // build address nested object
        let countryStr = this.state.country;
        let countryParts =countryStr.split(",,");
        postAddress = {
            country: {
                id:              countryParts[0]==="null" ? null : countryParts[0] ,
                title:           countryParts[1]==="null" ? null : countryParts[1] ,
                continentCode:   countryParts[2]==="null" ? null : countryParts[2] ,
                isocode:         countryParts[3]==="null" ? null : countryParts[3] ,
            },
            contactTelephone1: this.state.contactTelephone1 ? (this.state.contactTelephone1.length===0 ? null : this.state.contactTelephone1) : null,
            contactTelephone2: this.state.contactTelephone2 ? (this.state.contactTelephone2.length===0 ? null : this.state.contactTelephone2) : null,
            title:             this.state.title             ? (this.state.title.length===0             ? null : this.state.title            ) : null,
            addressLine1:      this.state.addressLine1      ? (this.state.addressLine1.length===0      ? null : this.state.addressLine1     ) : null,
            addressLine2:      this.state.addressLine2      ? (this.state.addressLine2.length===0      ? null : this.state.addressLine2     ) : null,
            stateOrProvince:   this.state.stateOrProvince   ? (this.state.stateOrProvince.length===0   ? null : this.state.stateOrProvince  ) : null,
            town:              this.state.town              ? (this.state.town.length===0              ? null : this.state.town             ) : null,
            postcode:          this.state.postCode          ? (this.state.postCode.length===0          ? null : this.state.postCode         ) : null,
            latitude:          this.state.latitude          ? (this.state.latitude.length===0          ? null : parseFloat(this.state.latitude) ) : null,
            longtitude:        this.state.longtitude        ? (this.state.longtitude.length===0        ? null : parseFloat(this.state.longtitude) ) : null,
            relatedUrl:        this.state.relatedUrl        ? (this.state.relatedUrl.length===0        ? null : this.state.relatedUrl       ) : null,
            generalComments:   this.state.generalComments   ? (this.state.generalComments.length===0   ? null : this.state.generalComments  ) : null,
            contactEmail:      this.state.contactEmail      ? (this.state.contactEmail.length===0      ? null : this.state.contactEmail     ) : null,
            accessComments:    this.state.accessComments    ? (this.state.accessComments.length===0    ? null : this.state.accessComments   ) : null
        }
        // buils conn type nested object
        let connTypeStr = this.state.connType;
        let connTypeParts = connTypeStr.split(",,");
        connType = {
            id:          connTypeParts[0]==="null" ? null : connTypeParts[0],
            title:       connTypeParts[1]==="null" ? null : connTypeParts[1],
            comments:    connTypeParts[2]==="null" ? null : connTypeParts[2],
            isFastChargeCapable: connTypeParts[3]==="true" ? true : false
        }
        let currTypeStr = this.state.currType;
        let currTypeParts = currTypeStr.split(",,");
        currType = {
            id:          currTypeParts[0]==="null" ? null : currTypeParts[0] ,
            title:       currTypeParts[1]==="null" ? null : currTypeParts[1] ,
            description: currTypeParts[2]==="null" ? null : currTypeParts[2] ,
        }
        let levelStr = this.state.level;
        let levelParts = levelStr.split(",,");
        level = {
            id:          levelParts[0]==="null" ? null : levelParts[0] ,
            title:       levelParts[1]==="null" ? null : levelParts[1] ,
            comments:    levelParts[2]==="null" ? null : levelParts[2] ,
            category:    levelParts[3]==="null" ? null : levelParts[3] ,
        }
        let spotObjPost = {
            connectionType: connType,
            level: level,
            currentType: currType,
            amps: this.state.amps,
            voltage: this.state.voltage,
            powerkw: this.state.power,
            comments: this.state.spotComments
        }
        console.log(postAddress);
        stationAddressPost(postAddress)
        .then(response => {
            console.log(response);
            getAddress = response.data;
            console.log(getAddress);
            objectFinal = {
                uuid: this.state.uuid,
                currentProvider: currentProv,
                stationOwner: stationOwner,
                operator: operator,
                usageType: usageType,
                address: getAddress,
                comments: this.state.comments ? (this.state.comments.length===0 ? null : this.state.comments) : null,
                dateLastConfirmed: null,
                dateLastStatusUpdate: null,
                dateCreated: this.state.dateCreated ? this.state.dateCreated : "2020-01-01",
                statusType: statusType,
                submissionStatus: submissionStatus,
                rating: 3.0,
                costPerKwh: this.state.costPerkWh
            }
            console.log(objectFinal);
            stationPost(objectFinal)
            .then(response => {
                console.log(response);
                let stationObjGet = response.data;
                let stationID = response.data.id;
                console.log(spotObjPost);
                spotPost(spotObjPost)
                .then(response => {
                    console.log(response);
                    let spotObjGet = response.data;
                    let stationSpotObject = {
                        chargingStation: stationObjGet,
                        chargingSpot: spotObjGet,
                        quantity:            this.state.quantity.length===0            ? null : this.state.quantity           ,
                        quantityAvailable:   this.state.quantityAvailable.length===0   ? null : this.state.quantityAvailable  ,
                        quantityOperational: this.state.quantityOperational.length===0 ? null : this.state.quantityOperational,
                    }
                    stationSpotPost(stationSpotObject)
                    .then(response => {
                        console.log(response);
                        this.setState({
                            error: "Submitted succesfully"
                        })
                        window.location.href=`stations/${stationID}`;
                    })
                    .catch(err => {
                        console.log(err);
                        this.setState({
                            error: "Could not create, probably invalid UUID"
                        })
                    })
                })
                .catch(err => {
                    console.log(err);
                    this.setState({
                        error: "Could not create, probably invalid UUID"
                    })
                })
            })
            .catch(err => {
                console.log(err);
                this.setState({
                    error: "Could not create, probably invalid UUID"
                })
            })

        })
        .catch(err => {
            console.log(err);
            this.setState({
                error: "Could not create, probably invalid UUID"
            })
        })
        e.preventDefault()
    }

    render() {
        if (!this.state.userId || this.state.logged===false) {
            return (
                <UnAuthorized 
                    message="You need to create an account as a station owner to to add a new station"
                    linkMessage="Create an account"
                    link="/register" 
                />
            )
        }
        else if (this.state.role==="VehicleOwner") {
            return (
                <UnAuthorized 
                    message="You need to create an account as a station owner to add a new station"
                    linkMessage="Log out and create an account as a station owner"
                    link="/register"

                />
            )
        }
        else {
            return (
                <div className="allpage">
                    <MyNavbar />
                    <div className="general-page-container more-blur center-content padding-bottom">
                        <div className="add-station-specific-title">
                            <div className="station-info-title">
                                Add station
                                {this.state.error!==null && ( 
                                    <div className="error-message">
                                        {this.state.error}
                                    </div>
                                )}    
                            </div> 
                        </div>

                        <form id="add-station-info-container" className="center-content fix-width">
                            <div className="color2">Move your cursor over a field to for an explanation of its role</div>
                            <div className="flex-layout margin-top-small">                        
                                <input className="add-station-input flex-item-medium" title="UUID" id="add-station-uuid" placeholder="UUID*" type="text" name="uuid" value={this.state.uuid} onChange={this.handleInput} onKeyUp ={this.submitActivate} />
                                <input className="add-station-input flex-item-medium" title="Date created" id="add-station-date-created" placeholder="Date created" name="dateCreated" type="date" value={this.state.dateCreated} onChange={this.handleInput} onKeyUp ={this.submitActivate} />
                                <input className="add-station-input flex-item-medium" title="Cost per kWh" id="add-station-cost-per" placeholder="Cost per kWh*" name="costPerkWh" type="number" step=".01" value={this.state.costPerkWh} onChange={this.handleInput} onKeyUp ={this.submitActivate} />                       
                                <input className="add-station-input flex-item-medium" title="Title" id="add-station-title" placeholder="Title*" name="title" type="text" value={this.state.title} onChange={this.handleInput} onKeyUp ={this.submitActivate} />                       
                            </div>
                            <textarea className="add-station-input flex-item-expand" title="Comments" id="add-station-comments" placeholder="Comments" name="comments" value={this.state.comments} onChange={this.handleInput} onKeyUp ={this.submitActivate} />                       
                            
                            <div className="add-station-selects-container flex-layout">
                                <select className="add-station-input flex-item-medium" title="Current Provider" id="add-station-current" name="currentProvider" value={this.state.currentProvider} onChange={this.handleInput} >
                                {
                                    this.state.currentProviders.map((key, value) =>{
                                        //console.log(value);
                                        if(key.country) {
                                            return(
                                                <option key={key.id} value={key.id+",,"+key.name+",,"+key.country.id+",,"+key.country.title+",,"+key.country.continentCode+",,"+key.country.isocode}>{key.name}</option>
                                            )
                                        }
                                    })
                                }
                                </select>
                                <select className="add-station-input flex-item-medium" title="Operator" id="add-station-operator" name="operator" value={this.state.operator} onChange={this.handleInput} >
                                {
                                    this.state.operators.map((key, value) =>{
                                        //console.log(value);
                                            return(
                                                <option key={key.id} value={key.id+",,"+key.title+",,"+key.websiteUrl+",,"+key.comments+",,"+key.primaryPhone+",,"+key.secondaryPhone+","
                                                +key.isPrivateIndividual+",,"+key.bookingUrl+",,"+key.contactEmail+",,"+key.isRestrictedEdit+",,"+key.faultReportEmail}>{key.title}</option>
                                            )
                                    })
                                }
                                </select>
                                <select className="add-station-input flex-item-medium" title="Status Type" id="add-station-status-type" name="statusType" value={this.state.statusType} onChange={this.handleInput} >
                                {
                                    this.state.statusTypes.map((key, value) =>{
                                        //console.log(value);
                                            return(
                                                <option key={key.id} value={key.id+",,"+key.title+",,"+key.isOperational+",,"+key.isUserSelectable}>{key.title}</option>
                                            )
                                    })
                                }
                                </select>
                                <select className="add-station-input flex-item-medium" title="Usage Type" id="add-station-usage-type" name="usageType" value={this.state.usageType} onChange={this.handleInput} >
                                {
                                    this.state.usageTypes.map((key, value) =>{
                                        //console.log(value);
                                            return(
                                                <option key={key.id} value={key.id+",,"+key.title+",,"+key.isMembershipRequired}>{key.title}</option>
                                            )
                                    })
                                }
                                </select>
                            </div>
                            
                            <div className="add-station-address-container flex-layout">

                                <input className="add-station-input flex-item-medium" title="Fist Address" id="add-station-first-addr" placeholder="First address*" type="text" name="addressLine1" value={this.state.addressLine1} onChange={this.handleInput} onKeyUp ={this.submitActivate} />
                                <input className="add-station-input flex-item-medium" title="Second Address" id="add-station-second-addr" placeholder="Secondary address" type="text" name="addressLine2" value={this.state.addressLine2} onChange={this.handleInput} onKeyUp ={this.submitActivate} />

                                <input className="add-station-input flex-item-medium" title="Town" id="add-station-town" placeholder="Town" type="text" name="town" value={this.state.town} onChange={this.handleInput} onKeyUp ={this.submitActivate} />
                                <input className="add-station-input flex-item-medium" title="State/Province" id="add-station-state" placeholder="State/Province" type="text" name="stateOrProvince" value={this.state.stateOrProvince} onChange={this.handleInput} onKeyUp ={this.submitActivate} />

                                <input className="add-station-input flex-item-medium" title="Latitude" id="add-station-latitude" placeholder="Latitude*" type="number" step=".0001" name="latitude" value={this.state.latitude} onChange={this.handleInput} onKeyUp ={this.submitActivate} />
                                <input className="add-station-input flex-item-medium" title="Longtitude" id="add-station-longtitude" placeholder="Longtitude*" type="number" step=".0001" name="longtitude" value={this.state.longtitude} onChange={this.handleInput} onKeyUp ={this.submitActivate} />

                                <input className="add-station-input flex-item-medium" title="Postcode" id="add-station-postcode" placeholder="Postcode" type="text" name="postCode" value={this.state.postCode} onChange={this.handleInput} onKeyUp ={this.submitActivate} />
                                <input className="add-station-input flex-item-medium" title="Email" id="add-station-email" placeholder="Contact email*" type="email" name="contactEmail" value={this.state.contactEmail} onChange={this.handleInput} onKeyUp ={this.submitActivate} />

                                <input className="add-station-input flex-item-medium" title="Contact Tel1" id="add-station-tel1" placeholder="Contact telephone1*" type="tel" name="contactTelephone1" value={this.state.contactTelephone1} onChange={this.handleInput} onKeyUp ={this.submitActivate} />
                                <input className="add-station-input flex-item-medium" title="Contact Tel2" id="add-station-tel2" placeholder="Contact telephone2" type="tel" name="contactTelephone2" value={this.state.contactTelephone2} onChange={this.handleInput} onKeyUp ={this.submitActivate} />

                                <textarea className="add-station-input flex-item-expand" title="Address General Comments" id="add-station-addr-gen-comments" placeholder="Address general comments" type="text" name="addressGenComments" value={this.state.addressGenComments} onChange={this.handleInput} onKeyUp ={this.submitActivate} />
                                <textarea className="add-station-input flex-item-expand" title="Access Comments" id="add-station-access-comments" placeholder="Access comments" type="text" name="accessComments" value={this.state.accessComments} onChange={this.handleInput} onKeyUp ={this.submitActivate} />

                                <input className="add-station-input flex-item-medium" title="Address relative URL" id="add-station-addr-rel-url" placeholder="Address relative url" type="text" name="relatedUrl" value={this.state.relatedUrl} onChange={this.handleInput} onKeyUp ={this.submitActivate} />

                                <select className="add-station-input flex-item-medium" title="Country" id="add-station-country-input" type="text"  name="country" value={this.state.country} onChange={this.handleInput} >
                                {
                                    this.state.countries.map((key, value) =>{
                                        //console.log(this.state.countries);
                                        //console.log("value:");
                                        //console.log(key);
                                        return(
                                            <option key={key.id} value={key.id+",,"+key.title+",,"+key.continentCode+",,"+key.isocode}>{key.title}</option>
                                        )
                                    })
                                }
                                </select>                  

                            </div>
                                                                            
                        </form>

                        <div className="add-station-spot-specific-title margin-top-small">
                                Add a charging spot to this station!
                        </div>
                        
                        <form id="add-spot-info-container" className="center-content fix-width">

                            <div className="add-spot-first-container flex-layout">                        
                                <input className="add-station-input flex-item-medium" title="Amperes" id="add-spot-amps" placeholder="Amperes" type="number" step=".01" name="amps" value={this.state.amps} onChange={this.handleInput} onKeyUp ={this.submitActivate} />
                                <input className="add-station-input flex-item-medium" title="Voltage" id="add-spot-voltage" placeholder="Voltage" name="voltage" type="number" step=".01" value={this.state.voltage} onChange={this.handleInput} onKeyUp ={this.submitActivate} />
                                <input className="add-station-input flex-item-medium" title="Power" id="add-spot-power" placeholder="Power(kW)" name="power" type="number" step=".01" value={this.state.power} onChange={this.handleInput} onKeyUp ={this.submitActivate} />                       
                                <input className="add-station-input flex-item-medium" title="Quantity" id="add-spot-quantity" placeholder="Quantity" name="quantity" type="number" step="1" min="0" value={this.state.quantity} onChange={this.handleInput} onKeyUp ={this.submitActivate}/>                       
                                <input className="add-station-input flex-item-medium" title="Quantity Available" id="add-spot-quantity-available" placeholder="Quantity of available" name="quantityAvailable" type="number" step="1" min="0" value={this.state.quantityAvailable} onChange={this.handleInput} onKeyUp ={this.submitActivate}/>                       
                                <input className="add-station-input flex-item-medium" title="Quantity Operational" id="add-spot-quantity-operational" placeholder="Quantity of operational" name="quantityOperational" type="number" step="1" min="0" value={this.state.quantityOperational} onChange={this.handleInput} onKeyUp ={this.submitActivate}/>                       
                            </div>
                            
                            <textarea className="add-station-input-textarea" title="Comments" id="add-station-comments" placeholder="Comments" name="spotComments" value={this.state.spotComments} onChange={this.handleInput} onKeyUp ={this.submitActivate} />                       

                            <div className="add-station-selects-container flex-layout">
                                <select className="add-station-input flex-item-medium" title="Connection Type" id="add-spot-connection-type" name="connType" value={this.state.connType} onChange={this.handleInput} >
                                {
                                    this.state.connTypes.map((key, value) =>{
                                        //console.log(value);
                                        return(
                                            <option key={key.id} value={key.id+",,"+key.title+",,"+key.formalName+",,"+key.category}>{key.title}</option>
                                        )
                                    })
                                }
                                </select>
                                <select className="add-station-input flex-item-medium" title="Level" id="add-spot-level" name="level" value={this.state.level} onChange={this.handleInput} >
                                {
                                    this.state.levels.map((key, value) =>{
                                        //console.log(value);
                                            return(
                                                <option key={key.id} value={key.id+",,"+key.title+",,"+key.comments+",,"+key.isFastChargeCapable}>{key.title}</option>
                                            )
                                    })
                                }
                                </select>
                                <select className="add-station-input flex-item-medium" title="Current Type" id="add-spot-current-type" name="currType" value={this.state.currType} onChange={this.handleInput} >
                                {
                                    this.state.currTypes.map((key, value) =>{
                                        //console.log(value);
                                            return(
                                                <option key={key.id} value={key.id+",,"+key.title+",,"+key.description}>{key.title}</option>
                                            )
                                    })
                                }
                                </select>

                            </div>
                                                                                                        
                        </form>

                        <input id="add-station-submit" className="my-button submit-button margin-top-small" title="Add station" name="submit" type="submit" value="Add station" disabled={this.state.submitDisabled} onClick={this.handleSubmit}/>

                    </div>
                </div>
            )
        }
        
    }


}

export default AddStation;