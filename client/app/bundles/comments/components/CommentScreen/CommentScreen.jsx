import React, { PropTypes } from 'react';

import BaseComponent from 'libs/components/BaseComponent';

import CommentBox from '../CommentBox/CommentBox';
import css from './CommentScreen.scss';

export default class CommentScreen extends BaseComponent {

  static propTypes = {
    actions: PropTypes.object.isRequired,
    data: PropTypes.object.isRequired,
    locationState: PropTypes.object,
  };

  renderNotification() {
    const { locationState } = this.props;

    if (!locationState || !locationState.redirectFrom) return null;

    return (
      <div className={`bg-success ${css.notification}`}>
        You have been redirected from
        <strong>
          {locationState.redirectFrom}
        </strong>
      </div>
    );
  }

  render() {
    const { data, actions } = this.props;

    return (
      <div>
        {this.renderNotification()}
        <div>
          <CommentBox
            pollInterval={60000}
            data={data}
            actions={actions}
            ajaxCounter={data.get('ajaxCounter')}
          />
          <div className="container">
           Blah Blah
          </div>
        </div>
      </div>
    );
  }
}
