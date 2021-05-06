import React from 'react';

class Calculator extends React.Component{
    constructor(props){
        super(props);
        this.state = {result: 0, num1: "", num2: ""};
        this.handleChange = this.handleChange.bind(this);
        this.calculate = this.calculate.bind(this);
    }

    handleChange(num, e){
        this.setState({[num]: e.currentTarget.value})
    }

    calculate(func){
        let result;
        let num1 = parseInt(this.state.num1);
        let num2 = parseInt(this.state.num2);
        switch(func){
            case "+":
                result = num1 + num2;
                break
            case "-":
                result = num1 - num2;
                break
            case "*":
                result = num1 * num2;
                break
            case "/":
                result = num1/num2;
                break
        }
        this.setState({result})
    }

    render(){
        return(
            <div>
                <h1>{this.state.result}</h1>
                <label>Number1
                    <input type="text" onChange={(e) => this.handleChange("num1", e)} value={this.state.num1}></input>
                </label>
                <label>Number2
                    <input type="text" onChange={(e) => this.handleChange("num2", e)} value={this.state.num2}></input>
                </label>
                <button onClick={() => this.calculate("+")}>+</button>
                <button onClick={() => this.calculate("-")}>-</button>
                <button onClick={() => this.calculate("*")}>*</button>
                <button onClick={() => this.calculate("/")}>/</button>
                <button onClick={() => this.setState({num1: "", num2: ""})}>clear</button>

            </div>
        )
    }
}

export default Calculator;