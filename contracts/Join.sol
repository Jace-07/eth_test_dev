// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0;

contract Join {
    uint public memberCount = 0;

    struct PX {
        uint id;
        string information;
        bool registered;
    }

    mapping(uint => PX) public members;

    constructor() public {
        addMember("p-x-7");
    }

    function addMember(string memory _information) public {
        memberCount ++;
        members[memberCount] = PX(memberCount, _information, false);
    }
}