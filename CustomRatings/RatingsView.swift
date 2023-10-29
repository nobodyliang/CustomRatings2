//
// Created for CustomRatings
// by  Stewart Lynch on 2023-10-28
//
// Follow me on Mastodon: @StewartLynch@iosdev.space
// Follow me on Threads: @StewartLynch (https://www.threads.net)
// Follow me on X: https://x.com/StewartLynch
// Subscribe on YouTube: https://youTube.com/@StewartLynch
// Buy me a ko-fi:  https://ko-fi.com/StewartLynch


import SwiftUI

struct RatingsView: View {
    let maxRating: Int
    @Binding var currentRating: Int
    let width: Int
    
    init(maxRating: Int, currentRating: Binding<Int>, width: Int = 30) {
        self.maxRating = maxRating
        self._currentRating = currentRating
        self.width = width
    }
    var body: some View {
        HStack {
            Image(systemName: "star")
                .resizable()
                .scaledToFit()
                .foregroundStyle(.yellow)
                .symbolVariant(.slash)
                .opacity(currentRating == 0 ? 0 : 1)
                .onTapGesture {
                    withAnimation {
                        currentRating = 0
                    }
                }
            ForEach(0..<maxRating, id: \.self) { rating in
                Image(systemName: "star")
                    .resizable()
                    .scaledToFit()
                    .foregroundStyle(.yellow)
                    .symbolVariant(rating < currentRating ? .fill : .none)
                    .onTapGesture {
                        withAnimation {
                            currentRating = rating + 1
                        }
                    }
            }
        }
        .frame(width: CGFloat(maxRating * width))
    }
}

#Preview {
    struct PreviewWapper: View {
        let maxRating = 5
        @State var currentRating = 2
        var body: some View {
            RatingsView(
                maxRating: maxRating,
                currentRating: $currentRating
            )
            
        }
    }
    return PreviewWapper()
}
