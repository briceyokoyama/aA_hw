import React from 'react';

class Calculator extends React.Component {
  constructor(props) {
    super(props);
    // your code here
    this.state = {
        result: 0,
        num1: "",
        num2: ""
    }

    this.setNum1 = this.setNum1.bind(this);
    this.setNum2 = this.setNum2.bind(this);
    this.add = this.add.bind(this);
    this.subtract = this.subtract.bind(this);
    this.multiply = this.multiply.bind(this);
    this.divide = this.divide.bind(this);
    this.clear = this.clear.bind(this);

  }

  // your code here

  setNum1(e) {
    this.setState({num1: e.currentTarget.value})
  }

  setNum2(e) {
    this.setState({num2: e.currentTarget.value})
  }

  add(e) {
    e.preventDefault();
    this.setState({result: parseFloat(this.state.num1) + parseFloat(this.state.num2)});
  }

  subtract(e) {
    e.preventDefault();
    this.setState({result: parseFloat(this.state.num1) - parseFloat(this.state.num2)});
  }

  multiply(e) {
    e.preventDefault();
    this.setState({result: parseFloat(this.state.num1) * parseFloat(this.state.num2)});
  }

  divide(e) {
    e.preventDefault();
    this.setState({result: parseFloat(this.state.num1) / parseFloat(this.state.num2)});
  }

  clear(e) {
    e.preventDefault();
    this.setState({result: 0, num1: "", num2: ""})
  }

  render() {
    return (
      <div>
        <h1>{this.state.result}</h1>
        <input type="text" onChange={this.setNum1} value={this.state.num1}/>
        <input type="text" onChange={this.setNum2} value={this.state.num2}/>
        <input type="submit" onClick={this.clear} value="Clear"/>
        <br />
        <input type="submit" onClick={this.add} value="+"/>
        <input type="submit" onClick={this.subtract} value="-"/>
        <input type="submit" onClick={this.multiply} value="*"/>
        <input type="submit" onClick={this.divide} value="/"/>
      </div>
    );
  }
}

export default Calculator;