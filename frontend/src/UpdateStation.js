import React from 'react';
import './UpdateStation.css';
import MyNavbar from './MyNavbar';
import {getStations, getOneStationOBJECT,
    countriesGet, currentProvidersGet,
    operatorsGet, statusTypesGet, usageTypesGet,
    stationOwnerOBJECTGet, stationAddressPost,
    stationPut} from './api';
import UnAuthorized from './UnAuthorized';
 

class UpdateStation extends React.Component {
    constructor(props) {
        super(props);
        this.state = {
            userId: localStorage.getItem('userId'),
            role: localStorage.getItem('role'),
            stationId: this.props.id,
            ownership: false,
            error: null,
            submitDisabled: true,
            uuid: "",
            currentProvider: "",
            stationOwner: null, // will be filled with me
            operator: "",
            usageType: "",
            address: "",
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
        }
        this.submitActivate=this.submitActivate.bind(this);
        this.allowed=this.allowed.bind(this);
        this.handleSubmit=this.handleSubmit.bind(this);
        this.handleInput=this.handleInput.bind(this);
        this.initObject = null;
    }

    componentDidMount() {
        if (this.state.role==="StationOwner") {
            getStations(this.state.userId)
            .then(response => {
                console.log(response);
                for (var i=0; i<response.data.StationsList.length; i++) {
                    console.log(response.data.StationsList[i].Id);
                    console.log(this.state.stationId);
                    if (parseInt(response.data.StationsList[i].Id)===parseInt(this.state.stationId)) {
                        this.setState({
                            ownership: true,
                        });
                        break;
                    }
                }
                console.log(this.state.ownership);
                if (this.state.ownership===true) {
                    getOneStationOBJECT(this.state.stationId)
                    .then(response => {
                        // initializations
                        this.initObject = response.data;
                        this.setState({
                            uuid: response.data.uuid ? response.data.uuid : "",
                            //currentProvider: response.data.currentProvider,
                            stationOwner: response.data.stationOwner,
                            //usageType: response.data.usageType,
                            address: response.data.address,
                            //country: response.data.address ? response.data.address.country : null, 
                            addressLine1: response.data.address      ? (response.data.address.addressLine1      ? ( response.data.address.addressLine1.length===0 ? ""  : response.data.address.addressLine1     ): ""): "",
                            addressLine2: response.data.address      ? (response.data.address.addressLine2      ? ( response.data.address.addressLine2.length===0 ? ""  : response.data.address.addressLine2     ): ""): "",
                            contactTelephone1: response.data.address ? (response.data.address.contactTelephone1 ? ( response.data.address.contactTelephone1.length===0 ? ""  : response.data.address.contactTelephone1): ""): "",
                            contactTelephone2: response.data.address ? (response.data.address.contactTelephone2 ? ( response.data.address.contactTelephone2.length===0 ? ""  : response.data.address.contactTelephone2): ""): "",
                            town: response.data.address              ? (response.data.address.town              ? ( response.data.address.town.length===0 ? ""  : response.data.address.town             ): ""): "",
                            title: response.data.address             ? (response.data.address.title             ? ( response.data.address.title.length===0 ? ""  : response.data.address.title            ): ""): "",
                            latitude: response.data.address          ? (response.data.address.latitude          ? ( response.data.address.latitude.length===0 ? ""  : response.data.address.latitude         ): ""):"",
                            longtitude: response.data.address        ? (response.data.address.longtitude        ? ( response.data.address.longtitude.length===0 ? ""  : response.data.address.longtitude       ): ""):"",
                            relatedUrl: response.data.address        ? (response.data.address.relatedUrl        ? ( response.data.address.relatedUrl.length===0 ? ""  : response.data.address.relatedUrl       ): ""):"",
                            postCode: response.data.address          ? (response.data.address.postcode          ? ( response.data.address.postcode.length===0 ? ""  : response.data.address.postcode         ): ""):"",
                            contactEmail: response.data.address      ? (response.data.address.contactEmail      ? ( response.data.address.contactEmail.length===0 ? ""  : response.data.address.contactEmail     ): ""):"",
                            generalComments: response.data.address   ? (response.data.address.generalComments   ? ( response.data.address.generalComments.length===0 ? ""  : response.data.address.generalComments  ): ""):"",
                            accessComments: response.data.address    ? (response.data.address.accessComments    ? ( response.data.address.accessComments.length===0 ? ""  : response.data.address.accessComments   ): ""):"",
                            stateOrProvince: response.data.address   ? (response.data.address.stateOrProvince   ? ( response.data.address.stateOrProvince.length===0 ? ""  : response.data.address.stateOrProvince  ): ""):"",
                            comments: response.data.comments    ? response.data.comments : "",
                            costPerkWh: response.data.costPerKwh ? (response.data.costPerKwh.length===0 ? "" : response.data.costPerKwh) : "",
                            //statusType: response.data.statusType,
                            //submissionStatus: response.data.submissionStatus,
                        })
                            //prefill select menus
                        countriesGet()
                        .then(response => {
                            console.log(response);
                            this.setState({
                                countries: response.data,
                                country: this.initObject.address ? (
                                        this.initObject.address.country ? ( 
                                        this.initObject.address.country.id+",,"+
                                        this.initObject.address.country.title+",,"+
                                        this.initObject.address.country.continentCode+",,"+
                                        this.initObject.address.country.isocode )
                                        : "null,,null,,null,null" )
                                        : "null,,null,,null,null"
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
                                currentProvider: this.initObject.currentProvider.id+",,"+this.initObject.currentProvider.name+",,"+
                                    ( this.initObject.currentProvider.country ? 
                                        (this.initObject.currentProvider.country.id+",,"+
                                        this.initObject.currentProvider.country.title+",,"+
                                        this.initObject.currentProvider.country.continentCode+",,"+
                                        this.initObject.currentProvider.country.isocode)
                                        : "null,,null,,null,,null")
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
                                operator: this.initObject.operator.id+",,"+this.initObject.operator.title+",,"+this.initObject.operator.websiteUrl+",,"+this.initObject.operator.comments+",,"+this.initObject.operator.primaryPhone+",,"+this.initObject.operator.secondaryPhone+","
                                +this.initObject.operator.isPrivateIndividual+",,"+this.initObject.operator.bookingUrl+",,"+this.initObject.operator.contactEmail+",,"+this.initObject.operator.isRestrictedEdit+",,"+this.initObject.operator.faultReportEmail
                            })
                        })
                        .catch(err => {
                            console.log(err);
                        })
                        statusTypesGet()
                        .then(response=>{
                            this.setState({
                                statusTypes: response.data,
                                statusType: this.initObject.statusType.id+",,"+
                                    this.initObject.statusType.title+",,"+
                                    this.initObject.statusType.isOperational+",,"+
                                    this.initObject.statusType.isUserSelectable,
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
                                usageType: this.initObject.usageType.id+",,"+
                                    this.initObject.usageType.title+",,"+
                                    this.initObject.usageType.isMembershipRequired
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
                    })
                    .catch(err=> {
                        console.log(err);
                    })
                }
                else {
                    this.setState({
                        error: "Only the station owner is allowed to update the station's information",
                    })
                    console.log(this.state.error);
                }
            })
            .catch(err => {
                console.log(err);
                this.setState({
                    error: "You don't own any stations"
                })
            })
        }


    }

    allowed = () => {
        
        if (this.state.uuid &&
            this.state.latitude &&
            this.state.longtitude &&
            this.state.title &&
            this.state.costPerkWh   &&
            this.state.addressLine1 &&
            this.state.currentProvider &&
            this.state.operator &&
            this.state.contactTelephone1
        ) {
            if (this.state.uuid.length!==0 &&
                this.state.latitude.length!==0 &&
                this.state.longtitude.length!==0 &&
                this.state.title.length!==0 &&
                this.state.costPerkWh.length!==0 &&
                this.state.addressLine1.length!==0 &&
                this.state.currentProvider.length!==0 &&
                this.state.operator.length!==0 &&
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
        else {
            this.setState({
                error: "Insert compulsory info"
            });
            return false;
        }
    }

    submitActivate = () => {
        let disabled = !this.allowed();
        const submitButton = document.getElementById('update-station-submit');
        if (disabled) {
            submitButton.style.backgroundColor="#9999";
            submitButton.style.color="white";
            this.setState ({
                submitDisabled: true
            });
        }
        else {
            submitButton.style.backgroundColor="rgb(109, 160, 205)";
            submitButton.style.color="black";
            this.setState ({
                submitDisabled: false
            });
        }
        console.log("submit disabled: " + this.state.submitDisabled);
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
            isPrivateIndividual: operParts[6] ==="null" ? null : (operParts[6]==="false" ? false : true), 
            bookingUrl:          operParts[7] ==="null" ? null : operParts[7] , 
            contactEmail:        operParts[8] ==="null" ? null : operParts[8] , 
            isRestrictedEdit:    operParts[9] ==="null" ? null : (operParts[9]==="false" ? false : true), 
            faultReportEmail:    operParts[10]==="null" ? null : operParts[10],
        };
        // build usageType nested object
        let usageTypeStr = this.state.usageType;
        let usageTypeParts = usageTypeStr.split(",,");
        usageType = {
            id:                    usageTypeParts[0] ==="null" ? null : usageTypeParts[0] ,
            title:                 usageTypeParts[1] ==="null" ? null : usageTypeParts[1] ,
            isMembershipRequired:  usageTypeParts[2] ==="null" ? null : (usageTypeParts[2]==="false" ? false : true),
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
            isOperational:    statusTypeParts[2]==="null" ? null : (statusTypeParts[2]==="false" ? false : true),
            isUserSelectable: statusTypeParts[3]==="null" ? null : (statusTypeParts[3]==="false" ? false : true) 
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
        console.log(postAddress);
        stationAddressPost(postAddress)
        .then(response => {
            console.log(response);
            getAddress = response.data;
            console.log(getAddress);
            objectFinal = {
                id: this.state.stationId,
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
            stationPut(objectFinal, this.state.stationId)
            .then(response => {
                console.log(response);
                window.location.href=`/stations/${this.state.stationId}`
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
        if (!this.state.userId) {
            return (
                <UnAuthorized 
                    message="You need to create an account as a station owner to have access to your stations listing feature"
                    linkMessage="Create an account"
                    link="/register" 
                />
            )
        }
        else if (this.state.role==="VehicleOwner") {
            return (
                <UnAuthorized 
                    message="You need to create an account as a station owner to update the information about a station you own"
                    linkMessage="Log out and create an account as a station owner"
                    link="/register"
                />
            )
        }

        else {
            return(
                <div className="allpage">
                    <MyNavbar />
                    <div className="general-page-container more-blur center-content">
                        
                        <div className="add-station-specific-title">
                            <div className="station-info-title">
                                Update station
                                {this.state.error!==null && ( 
                                    <div className="error-message">
                                        {this.state.error}
                                    </div>
                                )}    
                            </div> 
                        </div>

                        {this.state.ownership===true &&
                            <form id="update-station-info-container" className="flex-layout">

                                <input className="add-station-input flex-item-medium" id="add-station-uuid" placeholder="UUID*" type="text" name="uuid" value={this.state.uuid} onChange={this.handleInput} onKeyUp ={this.submitActivate} />
                                <input className="add-station-input flex-item-medium" id="add-station-cost-per" placeholder="Cost per kWh*" name="costPerkWh" type="number" step=".01" value={this.state.costPerkWh} onChange={this.handleInput} onKeyUp ={this.submitActivate} />                       
                                <input className="add-station-input flex-item-medium" id="add-station-title" placeholder="Title*" name="title" type="text" value={this.state.title} onChange={this.handleInput} onKeyUp ={this.submitActivate} />                       
                                
                                <textarea className="add-station-input flex-item-expand" id="add-station-comments" placeholder="Comments" name="comments" value={this.state.comments} onChange={this.handleInput} onKeyUp ={this.submitActivate} />                       
                                
                                    <select className="add-station-input flex-item-medium" id="add-station-current" name="currentProvider"
                                    value={this.state.currentProvider}                                                                                                                                                   
                                    onChange={this.handleInput} >
                                    {
                                        this.state.currentProviders.map((key, value) =>{
                                            //console.log(value);
                                            return(
                                                <option key={key.id} value={key.id+",,"+key.name+",,"+ (key.country ? key.country.id+",,"+key.country.title+",,"+key.country.continentCode+",,"+key.country.isocode
                                                                                                                    : "null,,null,,null,,null,,null")}>{key.name}</option>
                                            )
                                        })
                                    }
                                    </select>
                                    
                                    <select className="add-station-input flex-item-medium" id="add-station-operator" name="operator"
                                    value={this.state.operator} onChange={this.handleInput} >
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
                                    
                                    <select className="add-station-input flex-item-medium" id="add-station-status-type" name="statusType" value={this.state.statusType} onChange={this.handleInput} >
                                    {
                                        this.state.statusTypes.map((key, value) =>{
                                            //console.log(value);
                                                return(
                                                    <option key={key.id} value={key.id+",,"+key.title+",,"+key.isOperational+",,"+key.isUserSelectable}>{key.title}</option>
                                                )
                                        })
                                    }
                                    </select>
                                    <select className="add-station-input flex-item-medium" id="add-station-usage-type" name="usageType" value={this.state.usageType} onChange={this.handleInput} >
                                    {
                                        this.state.usageTypes.map((key, value) =>{
                                            //console.log(value);
                                                return(
                                                    <option key={key.id} value={key.id+",,"+key.title+",,"+key.isMembershipRequired}>{key.title}</option>
                                                )
                                        })
                                    }
                                    </select>
                                

                                    <input className="add-station-input flex-item-medium" id="add-station-first-addr" placeholder="First address*" type="text" name="addressLine1" value={this.state.addressLine1} onChange={this.handleInput} onKeyUp ={this.submitActivate} />
                                    <input className="add-station-input flex-item-medium" id="add-station-second-addr" placeholder="Secondary address" type="text" name="addressLine2" value={this.state.addressLine2} onChange={this.handleInput} onKeyUp ={this.submitActivate} />

                                    <input className="add-station-input flex-item-medium" id="add-station-town" placeholder="Town" type="text" name="town" value={this.state.town} onChange={this.handleInput} onKeyUp ={this.submitActivate} />
                                    <input className="add-station-input flex-item-medium" id="add-station-state" placeholder="State/Province" type="text" name="stateOrProvince" value={this.state.stateOrProvince} onChange={this.handleInput} onKeyUp ={this.submitActivate} />

                                    <input className="add-station-input flex-item-medium" id="add-station-latitude" placeholder="Latitude*" type="number" step=".0001" name="latitude" value={this.state.latitude} onChange={this.handleInput} onKeyUp ={this.submitActivate} />
                                    <input className="add-station-input flex-item-medium" id="add-station-longtitude" placeholder="Longtitude*" type="number" step=".0001" name="longtitude" value={this.state.longtitude} onChange={this.handleInput} onKeyUp ={this.submitActivate} />

                                    <input className="add-station-input flex-item-medium" id="add-station-postcode" placeholder="Postcode" type="text" name="postCode" value={this.state.postCode} onChange={this.handleInput} onKeyUp ={this.submitActivate} />
                                    <input className="add-station-input flex-item-medium" id="add-station-email" placeholder="Contact email" type="email" name="contactEmail" value={this.state.contactEmail} onChange={this.handleInput} onKeyUp ={this.submitActivate} />

                                    <input className="add-station-input flex-item-medium" id="add-station-tel1" placeholder="Contact telephone1*" type="tel" name="contactTelephone1" value={this.state.contactTelephone1} onChange={this.handleInput} onKeyUp ={this.submitActivate} />
                                    <input className="add-station-input flex-item-medium" id="add-station-tel2" placeholder="Contact telephone2" type="tel" name="contactTelephone2" value={this.state.contactTelephone2} onChange={this.handleInput} onKeyUp ={this.submitActivate} />

                                    <textarea className="add-station-input flex-item-expand" id="add-station-addr-gen-comments" placeholder="Address general comments" type="text" name="addressGenComments" value={this.state.addressGenComments} onChange={this.handleInput} onKeyUp ={this.submitActivate} />
                                    <textarea className="add-station-input flex-item-expand" id="add-station-access-comments" placeholder="Access comments" type="text" name="accessComments" value={this.state.accessComments} onChange={this.handleInput} onKeyUp ={this.submitActivate} />

                                    <input className="add-station-input flex-item-medium" id="add-station-addr-rel-url" placeholder="Address relative url" type="text" name="relatedUrl" value={this.state.relatedUrl} onChange={this.handleInput} onKeyUp ={this.submitActivate} />

                                    <select className="add-station-input flex-item-medium" id="add-station-country-input" type="text"  name="country"
                                    value={this.state.country} 
                                    onChange={this.handleInput} >
                                    {
                                        this.state.countries.map((key, value) =>{
                                            return(
                                                <option key={key.id} value={key.id+",,"+key.title+",,"+key.continentCode+",,"+key.isocode}>{key.title}</option>
                                            )
                                        })
                                    }
                                    </select>                  
                                                                                       
                            </form>
                        }

                        {this.state.ownership===true &&

                            <input id="update-station-submit" className="submit-button my-button flex-item-small margin-top-small" name="submit" type="submit" value="Submit" disabled={this.state.submitDisabled} onClick={this.handleSubmit}/>
                        }
                        
                        
                    </div>
                </div>
            )
        }
    }
}

export default UpdateStation;