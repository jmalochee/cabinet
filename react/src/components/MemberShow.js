import React, { Component } from 'react';

class MemberShow extends Component {
  constructor(props) {
    super(props)
    this.state = {
      member: {}
    }

  }

  componentDidMount() {
    fetch(`/api/v1/members/${this.props.params.id}.json`)
    .then(response => {
      if(response.ok) {
        return response;
      } else {
        let errorMessage = `${response.status} ($response.statusText)`,
        error = new Error(errorMessage);
        throw(error);
      }
    })
    .then(response => response.json())
    .then(body => {
      this.setState({ member: body });
    })
    .catch(error => console.error(`Error in fetch: ${error.message}`));
  }

  render() {
    return(
      <div className="row member-show">
        <div className="column">
          <div className="card text-center">
            <img src={this.state.member.image}/>
            <div className="card-section text-center">
              <p>{`${this.state.member.first_name} ${this.state.member.last_name}`}</p>
              <p>{this.state.member.position}</p>
            </div>
            <div className="card-section text-left">
              <p>{this.state.member.about}</p>
            </div>
          </div>
        </div>
      </div>
    )
  }
}

export default MemberShow;
