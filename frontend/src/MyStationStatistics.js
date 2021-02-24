import React from 'react';
import './MyStationStatistics.css';
import {getStationStats, getStations} from './api'
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
            operatorName: null,
            totalKWhDelivered: null,
            sessionsNumber: null,
            spotsUsedNumber: null,
            pointsSummary: [],
            diagramOptions1: null,
            diagramOptions2: null
        }
        this.attr1="Operator Name";
        this.attr2="Total kWh Delivered";
        this.attr3="Sessions Number";
        this.attr4="Distinct Spots Used";
        this.attr5="Sessions Summary List";
        this.attr6="Point Sessions";
        this.attr7="Point Id";
        this.attr8="Point Energy Delivered";
    }

    componentDidMount() {
        getStationStats(this.state.stationId)
        .then(response => {
            console.log(response);
            let l = response.data[this.attr5];
            let pieData1 = [];
            console.log(l);
            for( var i=0; i<l.length; i++) {
                console.log(100*l[i][this.attr6]/response.data[this.attr3]);
                console.log("Point "+l[i][this.attr7]);
                pieData1.push({
                    y: 100*l[i][this.attr6]/response.data[this.attr3],
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
                operatorName: response.data[this.attr1],
                totalKWhDelivered: response.data[this.attr2],
                sessionsNumber: response.data[this.attr3],
                spotsUsedNumber: response.data[this.attr4],
                pointsSummary: response.data[this.attr5],
                diagramOptions1 : {
                    exportEnabled: true,
                    animationEnabled: true,
                    backgroundColor: "#DADCDB",
                    height: 250,
                    title: {
                        text: "Number of sessions per charging spot",
                        fontSize: 20
                    },
                    data: [{
                        type: "pie",
                        startAngle: 75,
                        toolTipContent: "<b>{label}</b>: {y}%",
                        showInLegend: "true",
                        legendText: "{label}",
                        indexLabelFontSize: 16,
                        indexLabel: "{label} - {y}%",
                        dataPoints: pieData1
                    }]
                },
                diagramOptions2 : {
                    exportEnabled: true,
                    animationEnabled: true,
                    backgroundColor: "#DADCDB",
                    height: 250,
                    title: {
                        text: "kWh delivered per charging spot",
                        fontSize: 20
                    },
                    data: [{
                        type: "pie",
                        startAngle: 75,
                        toolTipContent: "<b>{label}</b>: {y}%",
                        showInLegend: "true",
                        legendText: "{label}",
                        indexLabelFontSize: 16,
                        indexLabel: "{label} - {y}%",
                        dataPoints: pieData2
                    }]
                }
            })
        })
        .catch(err => {
            console.log(err);
        })
    }

    render() {
        return (
            <div className="one-station-stats-container center-content">
                <h5 className="orangeColor center-content">Station's General Info</h5>
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
                <div className="spots-pie-diagrams">
                    <h5 className="orangeColor center-content">Station's General Info</h5>
                    <CanvasJSChart id="pie-diagram1" options = {this.state.diagramOptions1} />
                    <CanvasJSChart id="pie-diagram2"options = {this.state.diagramOptions2} />
                </div>
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
            stationsList: []
        }

        // because names contain space char and values cannot be retrieved
        // as value.Stations Visited
        // so I take it as value[this.attr1Name]
        this.attr1Name = "Stations Visited";
        this.attr2Name = "Total Cost";
        this.attr3Name = "Total kWh Delivered";
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
                        <div id="stats-info-container">
                            {
                                this.state.stationsList.map((value, key, index)=> {
                                    console.log(value+": "+key);
                                    return (<StationStatisticsDiv
                                            key={key} 
                                            stationId={value.Id}
                                            stationTitle={value.Title}
                                            index={index+1}
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