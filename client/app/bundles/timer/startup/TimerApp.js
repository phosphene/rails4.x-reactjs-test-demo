import React, { Component, cloneElement } from 'react';
import { useStrict } from 'mobx';
import { Provider } from 'mobx-react';
import { Router, browserHistory } from 'react-router';
import routes from './routes';

import { store } from '../Timer';

export default function TimerApp() {
  return (
    <Provider store={store}>
      <Router history={browserHistory}>
        {routes}
      </Router>
    </Provider>
   );
}

