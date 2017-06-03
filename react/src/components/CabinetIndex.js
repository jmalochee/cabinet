import React, { Component } from 'react';
import { Router } from 'react-router';
import MemberItem from './MemberItem'

class CabinetIndex extends Component {
  constructor(props) {
    super(props);

    this.state = {
      members: []
    }

  }

  componentDidMount() {
    fetch('/api/v1/members.json', {
      method: 'GET'
    })
    .then(response => response.json())
    .then(responseData => {
      this.setState({ members: responseData })
    })
  }


  render() {
    let members = this.state.members.map((member) => {
      return (
        <MemberItem
          image={member.image}
          name={`${member.first_name} ${member.last_name}`}
          link={`/members/${member.id}`}
          key={member.id}
        />
      )
    });

    return(
      <div className="cabinet-index">
        <div className="row small-up-3 medium-up-4 large-up-5">
          {members}
        </div>
      </div>
    )
  }
}

export default CabinetIndex;
