//
// Created for CustomRatings
// by  Stewart Lynch on 2023-10-26
//
// Follow me on Mastodon: @StewartLynch@iosdev.space
// Follow me on Threads: @StewartLynch (https://www.threads.net)
// Follow me on X: https://x.com/StewartLynch
// Subscribe on YouTube: https://youTube.com/@StewartLynch
// Buy me a ko-fi:  https://ko-fi.com/StewartLynch


import SwiftUI

struct ContentView: View {
    @State private var currentRating = 0
    var body: some View {
        RatingsView(
            maxRating: 5,
            currentRating: $currentRating,
            width: 40
        )
    }
}

#Preview {
    ContentView()
}
