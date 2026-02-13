# ChainNotes Protocol

Minimal onchain note storage protocol.

## Overview

ChainNotes allows users to anchor short notes onchain by storing a hash.
The full content can be stored offchain (IPFS / local DB).

## Features

- Minimal gas footprint
- Event-based indexing
- Simple SDK
- EVM compatible

## Contract

Deployed on Base Sepolia.

## Usage

1. Hash your note
2. Call createNote(bytes32 hash)
3. Listen to NoteCreated event

## Roadmap

- Indexer
- Frontend
- Batch note creation
