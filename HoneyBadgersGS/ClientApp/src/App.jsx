import React, { Component } from 'react';
import { Route } from 'react-router';
import { Layout } from './components/Layout';
import { Home } from './components/Home';
import { Profile } from './components/Profile/profile.component';
import { FriendList } from './components/Friend-List/friendList-Component';
import { GameDetails } from './components/Game-Detail/gameDetails.component';
<<<<<<< HEAD
import { Cart } from './components/Cart';
=======
import { Cart } from './components/Cart/Cart';
import { Events} from './components/Events';
>>>>>>> origin/frontend
import AuthorizeRoute from './components/api-authorization/AuthorizeRoute';
import ApiAuthorizationRoutes from './components/api-authorization/ApiAuthorizationRoutes';
import { ApplicationPaths } from './components/api-authorization/ApiAuthorizationConstants';
import './custom.css'
import { Wishlist } from './components/Wishlist/WishList';

export default class App extends Component {
  static displayName = App.name;

  render () {
    return (
      <Layout>
        <Route exact path='/' component={Home} />
        <Route exact path='/gameDetail' component={GameDetails} />
        <Route path='/cart' component={Cart} />
        <Route exact path='/Details/:id' component={GameDetails} />
        <Route exact path='/Profile' component={Profile} />
<<<<<<< HEAD
        <Route exact path='/FriendList' component={FriendList} />
=======
        <Route exact path='/Events' component={Event} />
        <Route exact path='/Wishlist' component={Wishlist}/>    
>>>>>>> origin/frontend
        <Route path={ApplicationPaths.ApiAuthorizationPrefix} component={ApiAuthorizationRoutes} />
      </Layout>
    );
  }
}
