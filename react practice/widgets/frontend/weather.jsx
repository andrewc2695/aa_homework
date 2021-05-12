import React from 'react';

class Weather extends React.Component {
    constructor(props){
        super(props);
        this.state = {weather: ""};

    }

    componentDidMount(){
        let url = "http://api.openweathermap.org/data/2.5/weather?q=San%20Francisco&appid=5f5690f4ebd85909126de5e072f5362a"
        const xmlhttp = new XMLHttpRequest();

        xmlhttp.onreadystatechange = () => {
            //ready state of DONE means this is complete
            if (xmlhttp.status === 200 && xmlhttp.readyState === XMLHttpRequest.DONE) {
                const data = JSON.parse(xmlhttp.responseText);
                this.setState({ weather: data });
            }
        };
        xmlhttp.open('GET', url, true);
        xmlhttp.send();
    }

    render(){
        if(this.state.weather === "") return <div></div>
        return(
            <div>The Temperature in San Francisco is: {Math.floor((this.state.weather.main.temp - 273.15) * (9/5) + 32 )} Degrees</div>
        )
    }

}

export default Weather;

