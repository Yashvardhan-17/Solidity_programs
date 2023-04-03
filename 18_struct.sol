//SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract todos{
    struct todo{
        string text;
        bool completed;
    }

    todo[] public Todos;

    function create(string calldata _text)public{

        //calling like a function
        Todos.push(todo(_text,false));

        //key value mapping
        Todos.push(todo({text:_text,completed:false}));

        //initializing on empty struct and update it
        todo memory Todoo;
        Todoo.text=_text;

        Todos.push(Todoo);
    }

    function get(uint _index)public view returns(string memory text,bool completed){
        todo storage Todo = Todos[_index];
        return (Todo.text,Todo.completed);
    }
    function updateText(uint _index,string calldata _text)public{
        todo storage Todo = Todos[_index];
        Todo.text=_text;
    }

    function togglecompleted(uint _index)public{
        todo storage Todo = Todos[_index];
        Todo.completed = !Todo.completed;
    }
}