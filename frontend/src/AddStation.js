import React from 'react';
import './AddStation.css';
import MyNavbar from './MyNavbar';
import {countriesGet, currentProvidersGet, operatorsGet, statusTypesGet, usageTypesGet, stationOwnerOBJECTGet, stationAddressPost, stationPost} from './api';

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
            stationOwner: "",
            countries: [{}],
            currentProviders: [{}],
            operators: [{}],
            statusTypes: [{}],
            usageTypes: [{}],
            error: "Insert compulsory info",
            submitDisabled: true
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
            submitButton.style.backgroundColor="rgb(233, 21, 21)";
            submitButton.style.color="white";
            this.setState ({
                submitDisabled: false
            });
        }
        console.log("submit disabled: " + this.state.submitDisabled);
    }

    componentDidMount() {
        countriesGet()
        .then(response => {
            console.log(response);
            this.setState({
                countries: response.data
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
                currentProviders: response.data
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
                operators: response.data
            })
        })
        .catch(err => {
            console.log(err);
        })
        statusTypesGet()
        .then(response=>{
            this.setState({
                statusTypes: response.data
            })
        })
        .catch(err => {
            console.log(err);
        })
        usageTypesGet()
        .then(response => {
            console.log(response);
            this.setState({
                usageTypes: response.data
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
    }

    handleSubmit = () => {
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
        // value={key.id+","+key.title+","+key.websiteUrl+","+key.comments+","+key.primaryPhone+","+key.secondaryPhone+","
        //     +key.isPrivateIndividual+","+key.bookingUrl+","+key.contactEmail+","+key.isRestrictedEdit+","+key.faultReportEmail}
        let operatorStr = this.state.operator;
        let operParts = operatorStr.split(",");
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
        let usageTypeParts = usageTypeStr.split(",");
        usageType = {
            id:                    usageTypeParts[0] ==="null" ? null : usageTypeParts[0] ,
            title:                 usageTypeParts[1] ==="null" ? null : usageTypeParts[1] ,
            isMembershipRequired:  usageTypeParts[2] ==="null" ? null : usageTypeParts[2] ,
        };
        // build currentProvider nested object
        let currentProvStr = this.state.currentProvider;
        let currentProvParts = currentProvStr.split(",");
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
        let statusTypeParts = statusTypeStr.split(",");
        statusType = {
            id:               statusTypeParts[0]==="null" ? null : statusTypeParts[0],
            title:            statusTypeParts[1]==="null" ? null : statusTypeParts[1],
            isOperational:    statusTypeParts[2]==="null" ? null : statusTypeParts[2],
            isUserSelectable: statusTypeParts[3]==="null" ? null : statusTypeParts[3]
        }
        // build address nested object
        let countryStr = this.state.country;
        let countryParts =countryStr.split(",");
        postAddress = {
            country: {
                id:              countryParts[0]==="null" ? null : countryParts[0] ,
                title:           countryParts[1]==="null" ? null : countryParts[1] ,
                continentCode:   countryParts[2]==="null" ? null : countryParts[2] ,
                isocode:         countryParts[3]==="null" ? null : countryParts[3] ,
            },
            contactTelephone1: this.state.contactTelephone1 ? (this.state.contactTelephone1.length===0 ? null : this.state.contactTelephone1) : null,
            contactTelephone2: this.state.contactTelephone2 ? (this.state.contactTelephone2.length===0 ? null : this.state.contactTelephone2) : null,
            title:             this.state.title             ? (this.state.title.length===0             ? this.state.addressLine1 : this.state.title            ) : this.state.addressLine1,
            addressLine1:      this.state.addressLine1      ? (this.state.addressLine1.length===0      ? null : this.state.addressLine1     ) : null,
            addressLine2:      this.state.addressLine2      ? (this.state.addressLine2.length===0      ? null : this.state.addressLine2     ) : null,
            stateOrProvince:   this.state.stateOrProvince   ? (this.state.stateOrProvince.length===0   ? null : this.state.stateOrProvince  ) : null,
            town:              this.state.town              ? (this.state.town.length===0              ? null : this.state.town             ) : null,
            postcode:          this.state.postCode          ? (this.state.postCode.length===0          ? null : this.state.postCode         ) : null,
            latitude:          this.state.latitude          ? (this.state.latitude.length===0          ? null : parseFloat(this.state.latitude)         ) : null,
            longtitude:        this.state.longtitude        ? (this.state.longtitude.length===0        ? null : parseFloat(this.state.longtitude)       ) : null,
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
                uuid: this.state.uuid,
                currentProvider: currentProv,
                stationOwner: stationOwner,
                operator: operator,
                usageType: usageType,
                address: getAddress,
                comments: this.state.comments,
                dateLastConfirmed: null,
                dateLastStatusUpdate: null,
                dateCreated: this.state.dateCreated,
                statusType: statusType,
                submissionStatus: submissionStatus,
                rating: 3.0,
                costPerKwh: this.state.costPerkWh
            }
            console.log(objectFinal);
            stationPost(objectFinal)
            .then(response => {
                console.log(response);
                this.setState({
                    error: "Submitted succesfully"
                })
            })
            .catch(err => {
                console.log(err);
            })
        })
        .catch(err => {
            console.log(err);
        })
    }

    render() {
        return (
            <div className="allpage">
                <MyNavbar />
                <div className="general-page-container more-blur center-content">
                    <div className="specific-title">
                        <div className="station-info-title">
                            Add station
                            {this.state.error!==null && ( 
                                <div className="error-message">
                                    {this.state.error}
                                </div>
                            )}    
                        </div> 
                    </div>
                    <form id="add-station-info-container">
                        <div className="add-station-first-container">                        
                            <input className="add-station-input" id="add-station-uuid" placeholder="UUID*" type="text" name="uuid" value={this.state.uuid} onChange={this.handleInput} onKeyUp ={this.submitActivate} />
                            <input className="add-station-input" id="add-station-date-created" placeholder="Date created" name="dateCreated" type="date" value={this.state.dateCreated} onChange={this.handleInput} onKeyUp ={this.submitActivate} />
                            <input className="add-station-input" id="add-station-cost-per" placeholder="Cost per kWh*" name="costPerkWh" type="number" step=".01" value={this.state.costPerkWh} onChange={this.handleInput} onKeyUp ={this.submitActivate} />                       
                        </div>
                        <textarea className="add-station-input" id="add-station-comments" placeholder="Comments" name="comments" value={this.state.comments} onChange={this.handleInput} onKeyUp ={this.submitActivate} />                       
                        
                        <div className="add-station-selects-container">
                            <select className="add-station-input" id="add-station-current" name="currentProvider" value={this.state.currentProvider} onChange={this.handleInput} >
                            {
                                this.state.currentProviders.map((key, value) =>{
                                    //console.log(value);
                                    if(key.country) {
                                        return(
                                            <option key={value.id} value={key.id+","+key.name+","+key.country.id+","+key.country.title+","+key.country.continentCode+","+key.country.isocode}>{key.name}</option>
                                        )
                                    }
                                })
                            }
                            </select>
                            <select className="add-station-input" id="add-station-operator" name="operator" value={this.state.operator} onChange={this.handleInput} >
                            {
                                this.state.operators.map((key, value) =>{
                                    //console.log(value);
                                        return(
                                            <option key={value.id} value={key.id+","+key.title+","+key.websiteUrl+","+key.comments+","+key.primaryPhone+","+key.secondaryPhone+","
                                            +key.isPrivateIndividual+","+key.bookingUrl+","+key.contactEmail+","+key.isRestrictedEdit+","+key.faultReportEmail}>{key.title}</option>
                                        )
                                })
                            }
                            </select>
                            <select className="add-station-input" id="add-station-status-type" name="statusType" value={this.state.statusType} onChange={this.handleInput} >
                            {
                                this.state.statusTypes.map((key, value) =>{
                                    //console.log(value);
                                        return(
                                            <option key={value.id} value={key.id+","+key.title+","+key.isOperational+","+key.isUserSelectable}>{key.title}</option>
                                        )
                                })
                            }
                            </select>
                            <select className="add-station-input" id="add-station-usage-type" name="usageType" value={this.state.usageType} onChange={this.handleInput} >
                            {
                                this.state.usageTypes.map((key, value) =>{
                                    //console.log(value);
                                        return(
                                            <option key={value.id} value={key.id+","+key.title+","+key.isMembershipRequired}>{key.title}</option>
                                        )
                                })
                            }
                            </select>
                        </div>
                        
                        <div className="add-station-address-container">

                            <input className="add-station-input" id="add-station-first-addr" placeholder="First address*" type="text" name="addressLine1" value={this.state.addressLine1} onChange={this.handleInput} onKeyUp ={this.submitActivate} />
                            <input className="add-station-input" id="add-station-second-addr" placeholder="Secondary address" type="text" name="addressLine2" value={this.state.addressLine2} onChange={this.handleInput} onKeyUp ={this.submitActivate} />

                            <input className="add-station-input" id="add-station-town" placeholder="Town" type="text" name="town" value={this.state.town} onChange={this.handleInput} onKeyUp ={this.submitActivate} />
                            <input className="add-station-input" id="add-station-state" placeholder="State/Province" type="text" name="stateOrProvince" value={this.state.stateOrProvince} onChange={this.handleInput} onKeyUp ={this.submitActivate} />

                            <input className="add-station-input" id="add-station-latitude" placeholder="Latitude" type="number" step=".0001" name="latitude" value={this.state.latitude} onChange={this.handleInput} onKeyUp ={this.submitActivate} />
                            <input className="add-station-input" id="add-station-longtitude" placeholder="Longtitude" type="number" step=".0001" name="longtitude" value={this.state.longtitude} onChange={this.handleInput} onKeyUp ={this.submitActivate} />

                            <input className="add-station-input" id="add-station-postcode" placeholder="Postcode" type="text" name="postCode" value={this.state.postCode} onChange={this.handleInput} onKeyUp ={this.submitActivate} />
                            <input className="add-station-input" id="add-station-email" placeholder="Contact email*" type="email" name="contactEmail" value={this.state.contactEmail} onChange={this.handleInput} onKeyUp ={this.submitActivate} />

                            <input className="add-station-input" id="add-station-tel1" placeholder="Contact telephone1*" type="tel" name="contactTelephone1" value={this.state.contactTelephone1} onChange={this.handleInput} onKeyUp ={this.submitActivate} />
                            <input className="add-station-input" id="add-station-tel2" placeholder="Contact telephone2" type="tel" name="contactTelephone2" value={this.state.contactTelephone2} onChange={this.handleInput} onKeyUp ={this.submitActivate} />

                            <textarea className="add-station-input" id="add-station-addr-gen-comments" placeholder="Address general comments" type="text" name="addressGenComments" value={this.state.addressGenComments} onChange={this.handleInput} onKeyUp ={this.submitActivate} />
                            <textarea className="add-station-input" id="add-station-access-comments" placeholder="Access comments" type="text" name="accessComments" value={this.state.accessComments} onChange={this.handleInput} onKeyUp ={this.submitActivate} />

                            <input className="add-station-input" id="add-station-addr-rel-url" placeholder="Address relative url" type="text" name="relatedUrl" value={this.state.relatedUrl} onChange={this.handleInput} onKeyUp ={this.submitActivate} />

                            <select className="add-station-input" id="add-station-country-input" type="text"  name="country" value={this.state.country} onChange={this.handleInput} >
                            {
                                this.state.countries.map((key, value) =>{
                                    //console.log(this.state.countries);
                                    //console.log("value:");
                                    //console.log(key);
                                    return(
                                        <option key={value.id} value={key.id+","+key.title+","+key.continentCode+","+key.isocode}>{key.title}</option>
                                    )
                                })
                            }
                            </select>                  

                        </div>

                        <input id="add-station-submit" className="add-station-input" name="submit" type="submit" value="Submit" disabled={this.state.submitDisabled} onClick={this.handleSubmit}/>
                                                                        
                    </form>
                </div>
            </div>

        )
    }


}

export default AddStation;