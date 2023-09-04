// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract Struct {
    struct Players {
        string name;
        uint age;
        address owner;
    }

    Players public player;
    Players[] public players;
    mapping(address => Players[]) public playersByOwner;

    function examples() external {
        Players memory Ronaldo = Players("Al_Nassr", 38, msg.sender);
        Players memory Neymar = Players({age: 31, name: "Neymar", owner: msg.sender});
        Players memory Messi;
        Messi.name = "Messi";
        Messi.age = 36;
        Messi.owner = msg.sender;

        players.push(Ronaldo);
        players.push(Neymar);
        players.push(Messi);

        players.push(Players("Benzema", 34, msg.sender));

        // Get
        Players memory _players = players[0];
        _players.name;
        _players.age;
        _players.owner;

        // Update
        Players storage _players = players[0];
        _players.age = 38;
        delete _players.owner;

        delete players[1];
    }
}
