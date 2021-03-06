import React, { Component } from 'react';
import { Redirect } from 'react-router-dom';
import axios from 'axios';
import moment from 'moment';
import './profile.component.css';
import { Alert } from 'reactstrap';
import { HoneyBadgerUrl } from '../../Constants';


export class Profile extends Component {
    constructor() {
        super();
        this.state = {
            value: [],
            profile: [],
            profile_userName: '',
            profile_dob: '',
            profile_loaded: false,
            checked_promo: true,
        };
        //used to allow modification the form and to deal with form submissions
        this.handleSubmit = this.handleSubmit.bind(this);
        this.handleChange = this.handleChange.bind(this);
       // this.handleDob = this.handleDob.bind(this);
    }
    //load data if it exists
    componentDidMount() {
        let profile = document.cookie.match(new RegExp('(^| )' + 'userId' + '=([^;]+)'));

        //splits the cookie to get the login id and the userName
        profile = profile[2].split(',');
        console.log(profile[0]);
        this.setState({ profile: profile });
        this.setState({ profile_userName: profile[1] });

        //pulls in the data from the backend with the id
        let loaded = false;
        fetch("https://localhost:5001/api/profiles/getprofiles/" + profile[0]).then(res => res.text()).then((res) => {
            if (res.profileId === null) {
                loaded = false;
                console.log(res);
                this.setState({ profile_loaded: false });
            }
            else {
                loaded = true;
                console.log(res);
                this.setState({ profile_loaded: true });
            }
        })
        console.log('Loaded :' + loaded);
        if (loaded === false) {
            fetch(HoneyBadgerUrl + "/api/profiles/getprofiles/" + profile[0])
                .then(response => response.json()).then(jsonData => modifyDate(jsonData))
                .then(data => this.setState({ value: data }));        
        }
        if (this.state.value != null) {
            //set the state for the promo checkbox.
            if (this.state.value.Promotion === 1) {
                this.setState({ checked_promo: true });
            }
            else {
                this.setState({ checked_promo: false });
            }
        }
        else {
            this.setState({ profile_loaded: false });
        }
    }
    //allow modifying the data
    handleChange(event) {
        this.setState({ value: event.target.value, profile_userName: event.target.value });
    }
    //handles the changes made to the checkbox.
    handleCheck = (e) => {
        this.setState({ checked_promo: !this.state.checked_promo });
    }
    //click handler submit the update
    handleSubmit(event) {
        //prevents the default event from happening 
        event.preventDefault();

        console.log(this.state.value);

        //creates the profiel object.
        let profileObject = {
            //id, display name, actual name, gender, dob, email, promo
            ProfileId: this.state.profile[0],  
            gender: this.gender.value,
            email: this.email.value,
            userAddress: this.user_Address.value,
            dob: this.dob.value,
            Promotion: this.state.checked_promo,
            ActualName: this.actual_name.value,
            DisplayName: this.display_name.value,   
        };

        //if the object is null... it will create an empty object.
        if (profileObject === null) {

            let profileObject = {
                //id, display name, actual name, gender, dob, email, promo
                ProfileId: this.state.profile_id,
                DisplayName: null,
                ActualName: null,
                gender: null,
                dob: null,
                Promotion: false,
                email: null,
            };
        }
        //if the profile was not loaded successfully, create a new profile object with the fields
        if (this.state.profile_loaded != true) {
            createProfile(profileObject);
        }
        else {
            // use put to update the profile
            updateProfile(profileObject);      
        }
    }   
    render() {
        return (
            <div className="profile-form">
                <h2>User Profile</h2>
                <form method='POST' onSubmit={this.handleSubmit}>
                    <input type="text" name="id" value={this.state.value.displayid} ref={(display_id) => this.display_id = display_id} hidden></input>
                    <label for="display name">Display Name:</label>
                    <input type="text" name="display name" value={this.state.value.displayName} ref={(display_name) => this.display_name = display_name} onChange={this.handleChange} required></input>
                    <label for="actual name">Actual Name:</label>
                    <input type="text" name="actual name" value={this.state.value.actualName} onChange={this.handleChange} ref={(actual_name) => this.actual_name = actual_name} required></input>
                    <label for="gender">Gender:</label>
                    <input type="text" name="gender" value={this.state.value.gender} onChange={this.handleChange} ref={(gender) => this.gender = gender} required></input>
                    <label for="Address">Address:</label>
                    <input type="text" name="Address" value={this.state.value.userAddress} ref={(user_Address) => this.user_Address = user_Address} onChange={this.handleChange} required></input>

                    <label for="birth date">Date of Birth:</label>
                    <input type="date" name="birth date" value={this.state.value.dob} onChange={this.handleChange} ref={(dob) => this.dob = dob} max="2019-11-17"></input>

                    <label for="email">Email:</label>
                    <input type="email" name="email" value={this.state.value.email} onChange={this.handleChange} ref={(email) => this.email = email} required></input>

                    <label for="credit-card" hidden>Credit Card</label>
                    <input type="number" name="credit-card" hidden />

                    <div id='checkbox-items'>
                        <label class="checkbox-label" for="promo">Receive Promotions from HBGS?
                            <input class="checkbox-input" type="checkbox" name="promo" DeafaultChecked={this.state.checked_promo} onChange={this.handleCheck} ref={(promo) => this.promo = promo}></input>
                        </label><br />
                        <label class="checkbox-label" for="physical-book"hidden>Physical Book<input class="checkbox-input" type="checkbox" name="physical-book" hidden /></label>
                    </div>
                    <input type="submit" value="submit" />
                </form>
            </div>
        );
    }
}
//used to add a new profile to the database(only used if an empty object is returned from the backend)
export function createProfile(data) {
    const config = {
        headers: {
            'Content-Type': 'application/json'
        }
    };
    axios.post("https://localhost:5001/api/profiles/add/", data, config).then(res => {
        alert('Successfully added your profile');
    });
    //redirects the view to display the games
    return window.location.reload();
}
//function is used to update a profile if it exists in the database.
export  function updateProfile(data) {

    const config = {
            headers: {
                'Content-Type': 'application/json'
            }
        };
    axios.put(`https://localhost:5001/api/profiles/update/`, data, config).then(res => {
        alert('Successfully updated your profile');
    });

    return window.location.reload();
}
//this function is required to allow data coming from the api to be modified.
//the c# adds a timestamp on all dates. It will appear in the input if left with the timestamp.
export function modifyDate(json) {

    //formats the date
    var myDate = moment(json.dob).format('YYYY-MM-DD');
    //sends back the json with the modifed date.
    const data = {
        actualName: json.actualName,
        displayName: json.displayName,
        dob: myDate,
        email: json.email,
        gender: json.gender,
        profileId: json.profileId,
        profileImage: json.profileImage,
        promotion: json.promotion,
        userAddress: json.userAddress
    }
    return data;
}
