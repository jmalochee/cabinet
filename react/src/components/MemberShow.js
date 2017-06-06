import React, { Component } from 'react';
import Card from './Card';

class MemberShow extends Component {
  constructor(props) {
    super(props)
    this.state = {
      member: {},
      cards: {},
      card: "about"
    }
    this.buttonHandler = this.buttonHandler.bind(this)
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

  buttonHandler(card){
    this.setState({ card: card })
  }

  render() {
    let card = (() => {
      if (!!this.state.cards.about){
        return (
          <Card
            type={this.state.cards[this.state.card].card_type}
            name={this.state.cards[this.state.card].card_name}
            content={this.state.cards[this.state.card].content}
            source={this.state.cards[this.state.card].source}
          />
        )
      }
    })

    return(
      <div className="row member-show">
        <div className="column text-center">
          <div className="card text-center">
            <img src={this.state.member.image} onClick={() => this.buttonHandler("about")}/>
            <div className="card-section text-center">
              <p>{`${this.state.member.first_name} ${this.state.member.last_name}`}</p>
              <p>{this.state.member.position}</p>
            </div>
            <div className="row buttons align-center">
              <div className="column small-3 medium-2 large-2">
                <div className="button large align-center align-middle money" onClick={() => this.buttonHandler("money")}>
                  <i className="fa fa-money fa-2x"></i>
                </div>
              </div>
              <div className="column small-3 medium-2 large-2">
                <div className="button large align-center align-self-middle gift" onClick={() => this.buttonHandler("gift")}>
                  <i className="fa fa-gift fa-2x"></i>
                </div>
              </div>
              <div className="column small-3 medium-2 large-2">
                <div className="button large align-center align-middle handshake" onClick={() => this.buttonHandler("handshake")}>
                  <i className="fa fa-handshake-o fa-2x"></i>
                </div>
              </div>
            </div>
          </div>
          {card()}
        </div>
      </div>
    )
  }
}

export default MemberShow;
