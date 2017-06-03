import React, { Component } from 'react';
import { Router } from 'react-router';
import MemberItem from './MemberItem'

class CabinetIndex extends Component {
  constructor(props) {
    super(props);

    this.state = {
      selected_button: null
    }

  }

  render() {
    return(
      <div className="cabinet-index">
        <div className="row small-up-3 medium-up-4 large-up-5">
          <MemberItem/>
          <MemberItem/>
          <MemberItem/>
          <MemberItem/>
          <MemberItem/>
          <MemberItem/>
          <MemberItem/>
          <MemberItem/>
          <MemberItem/>
          <MemberItem/>
          <MemberItem/>
          <MemberItem/>
          <MemberItem/>
          <MemberItem/>
          <MemberItem/>
        </div>
      </div>
    )
  }
}

export default CabinetIndex;
