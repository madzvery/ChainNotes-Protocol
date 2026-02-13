// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract ChainNotes {

    event NoteCreated(
        address indexed user,
        uint256 indexed noteId,
        bytes32 noteHash,
        uint256 timestamp
    );

    uint256 public noteCount;

    mapping(uint256 => address) public noteOwner;
    mapping(uint256 => bytes32) public noteHashes;

    function createNote(bytes32 _noteHash) external {
        noteCount++;

        noteOwner[noteCount] = msg.sender;
        noteHashes[noteCount] = _noteHash;

        emit NoteCreated(
            msg.sender,
            noteCount,
            _noteHash,
            block.timestamp
        );
    }

    function getNote(uint256 _id) external view returns (bytes32) {
        require(noteOwner[_id] != address(0), "Note does not exist");
        return noteHashes[_id];
    }
}
