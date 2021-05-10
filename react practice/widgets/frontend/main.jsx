import React from 'react'
import {Link} from 'react-router-dom'
/** @jsx jsx */
import { css, jsx } from '@emotion/react'


const Main = () => {
    return(
        <div>
            <Link to="/clock" css={
                css`
                color: black;
                font-size: 50px;
                text-decoration: none;
                &:hover {
                    color: purple;
                }
            `}>Clock</Link>
        </div>
    )
}

export default Main;