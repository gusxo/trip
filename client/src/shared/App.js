import React from 'react';
import './App.css';
import Top from './../components/Top.js';
import MainSection from './../components/mainSection.js';

class App extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      isLogin: false
    };

    this.setLoginState = this.setLoginState.bind(this);
    this.getLoginState = this.getLoginState.bind(this);
  }

  setLoginState(login_succeed = false) {
    this.setState({isLogin: login_succeed});
  }

  getLoginState() {
    return this.state.isLogin;
  }

  render() {
    return (
      <>
      <header>
        <Top setLoginState={this.setLoginState} getLoginState={this.getLoginState}/>
      </header>
      <section>
        <MainSection />
      </section>
      </>
    );
  }
}

export default App;