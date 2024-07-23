//: [Previous](@previous)

import Foundation

// Step 1: Define the Iterator Protocol

protocol PlaylistIterator {
    associatedtype Element
    func next() -> Element?
    func hasNext() -> Bool
}

// Step 2: Implement Concrete Iterator

class TrackIterator: PlaylistIterator {
    typealias Element = String // Assume tracks are represented by strings
    private let tracks: [Element]
    private var currentIndex: Int = 0

    init(tracks: [Element]) {
        self.tracks = tracks
    }

    func next() -> Element? {
        guard currentIndex < tracks.count else { return nil }
        let nextTrack = tracks[currentIndex]
        currentIndex += 1
        return nextTrack
    }

    func hasNext() -> Bool {
        return currentIndex < tracks.count
    }
}

// Step 3: Implement the Aggregate

class Playlist {
    private var tracks: [String] = []

    func addTrack(track: String) {
        tracks.append(track)
    }

    func createIterator() -> TrackIterator {
        TrackIterator(tracks: tracks)
    }
}

// Step 4: Using the Iterator Pattern

let playlist = Playlist()

playlist.addTrack(track: "Song 1")
playlist.addTrack(track: "Song 2")
playlist.addTrack(track: "Song 3")

let iterator = playlist.createIterator()

while iterator.hasNext() {
    if let track = iterator.next() {
        print("Playing: \(track)")
    }
}

/*
Output:
Playing: Song 1
Playing: Song 2
Playing: Song 3
*/


//: [Next](@next)
