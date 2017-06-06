import React, { Component } from 'react';
import Card from "./components/Card"

class MemberShow extends Component {
  constructor(props) {
    super(props)
    this.state = {
      member: {},
      cards: [],
      card: "about"
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
      this.setState({ member: body.member });
      this.setState({ cards: body.cards });
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
            <div className="row buttons align-center">
              <div className="column small-3 medium-2 large-2">
                <div className="button large align-center align-middle money">
                  <i className="fa fa-money fa-2x"></i>
                </div>
              </div>
              <div className="column small-3 medium-2 large-2">
                <div className="button large align-center align-self-middle gift">
                  <i className="fa fa-gift fa-2x"></i>
                </div>
              </div>
              <div className="column small-3 medium-2 large-2">
                <div className="button large align-center align-middle handshake">
                  <i className="fa fa-handshake-o fa-2x"></i>
                </div>
              </div>
            </div>
          </div>
          <Card
            type={this.state.cards.}
          />
        </div>
      </div>
    )
  }
}

export default MemberShow;
