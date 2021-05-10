/** @jsx jsx */
import React from 'react'
import { css, jsx } from '@emotion/react'
class Clock extends React.Component {
    constructor(props){
        super(props);
        this.state = {time: new Date()};
        this.timeInterval;
        debugger
    }

    componentDidMount(){
        console.log("hi")
        this.timeInterval = setInterval(() => {
            this.setState({time: new Date()});
        }, 1000)
    }

    componentWillUnmount(){
        clearInterval(this.timeInterval);
    }

    render(){
        return(
            <div css={
                css`
                width: 30%;
                height: 100px;
                background-color: hotpink;
                font-size: 24px;
                border-radius: 4px;
                margin-left: auto;
                margin-right: auto;
                display: flex;
                justify-content: center;
                align-items: center;
                &:hover {
                    color: lightgreen;
                }`
            }>
                <div>Current Time:{this.state.time.getHours()}:{this.state.time.getMinutes()}:{this.state.time.getSeconds()}</div>
                {this.props.user}
            </div>
        )
    }

}

export default Clock;