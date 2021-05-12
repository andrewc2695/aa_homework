import React from 'react';
import { HashRouter } from 'react-router-dom';
import {Route} from 'react-router-dom';
import ClickMe from './frontend/clickMe';
import Clock from './frontend/clock';
import Main from './frontend/main';
import Weather from './frontend/weather'
function Root() {
    let variable = "hi";
    return(
        <HashRouter>
            <div>
                <Route exact path="/" component={Main} />
                <Route path="/clock" render={(props) => (
                    <Clock {...props} user={"squid"} />
                )}/>
                <Route path ="/click" render={(props) => (
                    <ClickMe {...props} />
                )}/>
                <Route path="/weather" component={Weather}/>
            </div>
        </HashRouter>
    )
}

export default Root;