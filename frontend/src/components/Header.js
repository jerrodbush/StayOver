import React from 'react';
import { Link, NavLink } from 'react-router-dom'


function Header({ setLoggedIn, currentUser })
{

    const handleLogout = () =>
    {
        setLoggedIn(false)
    }

    return (
        <div id='slide'>
            <button onClick={handleLogout}>Logout</button>
            <div className="flex_container">
                <p id='title'>STAYOVER</p>
                <Link to="/" className="navbar">Home</Link>
                <NavLink to="/properties" className="navbar" >Properties</NavLink>
                <NavLink to="/favorites" className="navbar">Favorites</NavLink>
                <NavLink to={`/${currentUser.username}`} className="navbar" >My Account</NavLink>
            </div>
        </div>
    )
}

export default Header