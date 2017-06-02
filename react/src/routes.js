import React from 'react';
import { Route, IndexRoute } from 'react-router';
import Layout from './components/Layout';
import CabinetIndex from './components/CabinetIndex';

let routes = (
  <Route path="/" component={Layout}>
    <IndexRoute component={CabinetIndex}/>
  </Route>
);

export default routes;
