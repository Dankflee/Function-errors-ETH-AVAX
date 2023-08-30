// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract VotingContract {
    address public owner;
    uint256 public maxVotes = 10;
    uint256 public totalVotes = 0;
    mapping(address => bool) public hasVoted;

    enum Option { A, B, C }
    mapping(Option => uint256) public votesForOption;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Only the owner can perform this action");
        _;
    }

    modifier canVote() {
        require(totalVotes < maxVotes, "Voting limit reached");
        require(!hasVoted[msg.sender], "Already voted");
        _;
    }

    function vote(Option _option) external canVote {
        hasVoted[msg.sender] = true;
        totalVotes++;
        votesForOption[_option]++;
    }

    function changeMaxVotes(uint256 _newMaxVotes) external onlyOwner {
        maxVotes = _newMaxVotes;
    }

    function getResult() external view returns (uint256 votesOptionA, uint256 votesOptionB, uint256 votesOptionC) {
        return (votesForOption[Option.A], votesForOption[Option.B], votesForOption[Option.C]);
    }
}
