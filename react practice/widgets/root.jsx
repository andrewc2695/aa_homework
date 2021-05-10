import React from 'react';
import { HashRouter } from 'react-router-dom';
import {Route} from 'react-router-dom';
import Clock from './frontend/clock';
import Main from './frontend/main';
function Root() {
    return(
        <HashRouter>
            <div>
                <Route path="/main" component={Main} />
                <Route path="/clock" render={(props) => (
                    <Clock {...props} user={"squid"} />
                )}/>
                
            </div>
        </HashRouter>
    )
}

export default Root;