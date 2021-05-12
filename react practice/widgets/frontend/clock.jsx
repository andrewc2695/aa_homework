/** @jsx jsx */
import React from 'react'
import { css, jsx } from '@emotion/react'
import ClickMe from "./clickMe"
import { Link } from 'react-router-dom';
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
        debugger
    }

    componentWillUnmount(){
        clearInterval(this.timeInterval);
        debugger
    }

    render(){
        return(
            <div>
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

                </div>
                <div>
                    Hi {this.props.user} lets click things!
                    <Link to="/click" clickcount={"hi"}>Click to click</Link>
                </div>
            </div>
        )
    }

}

export default Clock;