import ReactOnRails from 'react-on-rails';

import TimerApp from './TimerApp';

ReactOnRails.setOptions({
  traceTurbolinks: TRACE_TURBOLINKS, // eslint-disable-line no-undef
});

ReactOnRails.register({
  TimerApp,
});

