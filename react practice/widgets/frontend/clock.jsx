import React from 'react'
class Clock extends React.Component {
    constructor(props){
        super(props);
        this.state = {time: new Date()};
        this.timeInterval;
    }

    componentDidMount(){
        this.timeInterval = setInterval(() => {
            this.setState({time: new Date()});
        }, 1000)
    }

    componentWillUnmount(){
        clearInterval(this.timeInterval);
    }

    render(){
        return(
            <div>
                time:{this.state.time.getHours()}:{this.state.time.getMinutes()}:{this.state.time.getSeconds()}
            </div>
        )
    }

}

export default Clock;