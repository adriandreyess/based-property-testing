import React, { Fragment } from "react";
import "./App.css";

//components

import InputTodo from "/usr/app/src/components/InputTodo";
import ListTodos from "/usr/app/src/components/ListTodos";

function App() {
  return (
   < Fragment>
      <div className="container">
        <InputTodo />
        <ListTodos />
      </div>
    </Fragment>
  );
}

export default App;