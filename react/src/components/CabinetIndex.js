import React, { Component } from 'react';
import { Router } from 'react-router';

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
        index
      </div>
    )
  }
}

export default CabinetIndex;
