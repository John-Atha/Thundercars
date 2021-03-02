import React from 'react';
import './MyStationStatistics.css';
import {getStationStats, getStations, getOneStation} from './api'
import MyNavbar from './MyNavbar'; 
import CanvasJSReact from './canvasjs.react';
//var CanvasJSReact = require('./canvasjs.react');
//var CanvasJS = CanvasJSReact.CanvasJS;
var CanvasJSChart = CanvasJSReact.CanvasJSChart;

class StationStatisticsDiv extends React.Component {

    constructor(props) {
        super(props);
        this.state = {
            key: this.props.key,
            index: this.props.index,
            stationId: this.props.stationId,
            stationTitle: this.props.stationTitle,
            operatorName: this.props.stationOperator,
            totalKWhDelivered: 0,
            sessionsNumber: 0,
            spotsUsedNumber: 0,
            pointsSummary: [],
            diagramOptions1: null,
            diagramOptions2: null,
            diagram1: 0,
            diagram2: 0,
            startDate: this.props.startDate,
            endDate: this.props.endDate,
        }
        this.attr2="Total kWh Delivered";
        this.attr3="Sessions Number";
        this.attr4="Distinct Spots Used";
        this.attr5="Sessions Summary List";
        this.attr6="Point Sessions";
        this.attr7="Point Id";
        this.attr8="Point Energy Delivered";
    }

    componentDidMount() {
        getStationStats(this.state.stationId, this.state.startDate, this.state.endDate)
        .then(response => {
            console.log(response);
            let l = response.data[this.attr5];
            let pieData1 = [];
            console.log(l);
            for( var i=0; i<l.length; i++) {
                console.log(100*l[i][this.attr6]/response.data[this.attr3]);
                console.log("Point "+l[i][this.attr7]);
                pieData1.push({
                    y: Math.round(100*l[i][this.attr6]/response.data[this.attr3]),
                    label: "Point "+l[i][this.attr7]
                })
            }
            console.log(pieData1);
            let pieData2 = [];
            console.log(l);
            for( i=0; i<l.length; i++) {
                console.log(100*l[i][this.attr8]/response.data[this.attr2]);
                console.log("Point "+l[i][this.attr7]);
                pieData2.push({
                    y: Math.round(100*l[i][this.attr8]/response.data[this.attr2]),
                    label: "Point "+l[i][this.attr7]
                })
            }
            console.log(pieData2);
            this.setState({
                totalKWhDelivered: response.data[this.attr2],
                sessionsNumber: response.data[this.attr3],
                spotsUsedNumber: response.data[this.attr4],
                pointsSummary: response.data[this.attr5],
                
                diagram1: pieData1.length,
                diagramOptions1 : {
                    exportEnabled: true,
                    animationEnabled: true,
                    backgroundColor: "black",
                    height: 250,
                    title: {
                        text: "Number of sessions per charging spot",
                        fontSize: 20,
                        fontColor: "white",
                    },
                    legend: {
                        fontColor: "white",
                    },
                    data: [{
                        type: "pie",
                        startAngle: 75,
                        toolTipContent: "<b>{label}</b>: {y}%",
                        showInLegend: "true",
                        legendText: "{label}",
                        indexLabelFontSize: 16,
                        indexLabelFontColor: "white",
                        indexLabel: "{label} - {y}%",
                        dataPoints: pieData1
                    }]
                },
                diagram2: pieData2.length,
                diagramOptions2 : {
                    exportEnabled: true,
                    animationEnabled: true,
                    backgroundColor: "black",
                    height: 250,
                    title: {
                        text: "kWh delivered per charging spot",
                        fontSize: 20,
                        fontColor: "white",
                    },
                    legend: {
                        fontColor: "white",
                    },
                    data: [{
                        type: "pie",
                        startAngle: 75,
                        toolTipContent: "<b>{label}</b>: {y}%",
                        showInLegend: "true",
                        legendText: "{label}",
                        indexLabelFontSize: 16,
                        indexLabelFontColor: "white",
                        indexLabel: "{label} - {y}%",
                        dataPoints: pieData2
                    }]
                }
            })
        })
        .catch(err => {
            console.log(err);
            this.setState({
                diagram1: 0,
                diagram2: 0,
            })
        })
    }

    componentDidUpdate(prevProps) {
        if (prevProps.startDate!==this.props.startDate || prevProps.endDate!==this.props.endDate) {
            console.log(`from ${prevProps.startDate} to ${this.props.startDate}`);
            console.log(`from ${prevProps.endDate} to ${this.props.endDate}`);
            getStationStats(this.state.stationId, this.props.startDate, this.props.endDate)
            .then(response => {
                //console.log(response);
                let l = response.data[this.attr5];
                let pieData1 = [];
                //console.log(l);
                for( var i=0; i<l.length; i++) {
                    //console.log(100*l[i][this.attr6]/response.data[this.attr3]);
                    //console.log("Point "+l[i][this.attr7]);
                    pieData1.push({
                        y: Math.round(100*l[i][this.attr6]/response.data[this.attr3]),
                        label: "Point "+l[i][this.attr7]
                    })
                }
                //console.log(pieData1);
                let pieData2 = [];
                //console.log(l);
                for( i=0; i<l.length; i++) {
                    //console.log(100*l[i][this.attr8]/response.data[this.attr2]);
                    //console.log("Point "+l[i][this.attr7]);
                    pieData2.push({
                        y: Math.round(100*l[i][this.attr8]/response.data[this.attr2]),
                        label: "Point "+l[i][this.attr7]
                    })
                }
                //console.log(pieData2);
                this.setState({
                    operatorName: response.data[this.attr1],
                    totalKWhDelivered: response.data[this.attr2],
                    sessionsNumber: response.data[this.attr3],
                    spotsUsedNumber: response.data[this.attr4],
                    pointsSummary: response.data[this.attr5],
                    diagram1: pieData1.length,
                    diagramOptions1 : {
                        exportEnabled: true,
                        animationEnabled: true,
                        backgroundColor: "black",
                        height: 250,
                        title: {
                            text: "Number of sessions per charging spot",
                            fontSize: 20,
                            fontColor: "white",
                        },
                        legend: {
                            fontColor: "white",
                        },    
                        data: [{
                            type: "pie",
                            startAngle: 75,
                            toolTipContent: "<b>{label}</b>: {y}%",
                            showInLegend: "true",
                            legendText: "{label}",
                            indexLabelFontSize: 16,
                            indexLabelFontColor: "white",
                            indexLabel: "{label} - {y}%",
                            dataPoints: pieData1
                        }]
                    },
                    diagram2: pieData2.length,
                    diagramOptions2 : {
                        exportEnabled: true,
                        animationEnabled: true,
                        backgroundColor: "black",
                        height: 250,
                        title: {
                            text: "kWh delivered per charging spot",
                            fontSize: 20,
                            fontColor: "white",
                        },
                        legend: {
                            fontColor: "white",
                        },    
                        data: [{
                            type: "pie",
                            startAngle: 75,
                            toolTipContent: "<b>{label}</b>: {y}%",
                            showInLegend: "true",
                            legendText: "{label}",
                            indexLabelFontSize: 16,
                            indexLabelFontColor: "white",
                            indexLabel: "{label} - {y}%",
                            dataPoints: pieData2
                        }]
                    }
                })
            })
            .catch(err => {
                console.log(err);
                this.setState({
                    diagram1: 0,
                    diagram2: 0,
                })
            })
        }
    }



    render() {
        return (
            <div className="one-station-stats-container center-content padding-bottom">
                <h5 className="color2 center-content margin-top-small">Station's General Info</h5>
                <div className="station-stats-info-container">
                    <div className="station-info-title darker">Title: </div>
                    <div className="station-info darker">{this.state.stationTitle}</div>
                    <div className="station-info-title">Operator: </div>
                    <div className="station-info">{this.state.operatorName}</div>
                    <div className="station-info-title darker">Total kWh delivered: </div>
                    <div className="station-info darker">{this.state.totalKWhDelivered}</div>
                    <div className="station-info-title">Sessions number: </div>
                    <div className="station-info">{this.state.sessionsNumber}</div>
                    <div className="station-info-title darker">Spots used: </div>
                    <div className="station-info darker">{this.state.spotsUsedNumber}</div>
                </div>
                { (this.state.diagram1===0 || this.state.diagram2===0) &&
                    <div className="error-message margin-top-small center-content">No sessions found, try changing the dates.</div>
                }
                { this.state.diagram1!==0 && this.state.diagram2!==0 &&
                    <h5 className="color2 margin-top-small center-content">Station's statistics</h5>
                }
                { this.state.diagram1!==0 && this.state.diagram2!==0 &&
                    <div className="spots-pie-diagrams margin-top-small">
                        <div className="flex-item">
                            <CanvasJSChart options = {this.state.diagramOptions1} />
                        </div>
                        <div className="flex-item">
                            <CanvasJSChart options = {this.state.diagramOptions2} />
                        </div>
                    </div>
                }
                
            </div>

        )
    }


}

class MyStationStatistics extends React.Component {

    constructor(props) {
        super(props);
        this.state={
            userId: localStorage.getItem('userId'),
            role: localStorage.getItem('role'),
            error: null,
            stationsList: [],
            startDate: "2021-01-27",
            endDate: "",
        }

        // because names contain space char and values cannot be retrieved
        // as value.Stations Visited
        // so I take it as value[this.attr1Name]
        this.attr1Name = "Stations Visited";
        this.attr2Name = "Total Cost";
        this.attr3Name = "Total kWh Delivered";
        this.handleInput = this.handleInput.bind(this);
    }

    componentDidMount () {
        
        if (this.state.role==="StationOwner") {
            getStations(this.state.userId)
            .then( response => {
                console.log(response);
                console.log(response.data.StationsList);
                this.setState({
                    stationsList: response.data.StationsList
                });
            })
        }
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

    render() {
        if (!localStorage.getItem('userId') || this.state.role==="VehicleOwner") {
            window.location.href = "/";
        }
        else {
            return (
                <div className="allPage">
                    <MyNavbar />
                    <div className="general-page-container more-blur center-content">
                        <div className="specific-title">
                            Statistics
                        </div>

                        <div className="time-filters-container center-content">
                                <label className="start-date-label" htmlFor="startDate">From</label>
                                <label className="end-date-label"   htmlFor="endDate">To</label>
                                <input className="start-date-input" name="startDate" type="date" value={this.state.startDate} onChange={this.handleInput}/>
                                <input className="start-date-input" name="endDate" type="date" value={this.state.endDate} onChange={this.handleInput}/>
                        </div>

                        <div className="stats-info-container">
                            {
                                this.state.stationsList.map((value, key, index)=> {
                                    console.log(value+": "+key);
                                    return (<StationStatisticsDiv
                                            key={key} 
                                            stationId={value.Id}
                                            stationTitle={value.Title}
                                            index={index+1}
                                            startDate={this.state.startDate}
                                            endDate={this.state.endDate}
                                            stationOperator={value["Operator's Name"]}
                                            /> )
                                })
                            }
                        </div>
                    </div>
                </div>
            )
        }
    }
}

export default MyStationStatistics;