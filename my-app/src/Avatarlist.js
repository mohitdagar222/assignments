import React from 'react';

const Avatarlist = (props) => {
    return (
        <div className="avatar"> 
            <img style={{height: 200, width: 200}} src={`https://robohash.org/${props.name}.png}`} alt="Avatar" />
            <h1> This is {props.name} avatar</h1>
            <p>Web Developer</p>
            {props.children}
        </div>
    )
}

export default Avatarlist;