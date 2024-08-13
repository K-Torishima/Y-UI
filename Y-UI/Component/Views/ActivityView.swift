//  Copyright © Koji Torishima All Rights Reserved.

import SwiftUI

struct ActivityView: View {
    
    @State private var presentShareActivity = false
    
    var body: some View {
        VStack {
            // SwiftUIだとこれくらいしかできない
            ShareLink(item: "https://google.com")
                .padding()
            
            // UIActivityViewControllerを使って実装
            Button("oepn ActivityView") {
                presentShareActivity.toggle()
            }
            .sheet(isPresented: $presentShareActivity) {
                ShareActivityView(
                    activityItems: [
                        // シェアしたいもの
                        ActivityItemSource(
                            URL(string: "https://google.com")!,
                            salonTitle: "タイトル"
                        ),
                        // プレビュー用
                        "https://google.com",
                        "タイトル",
                    ],
                    applicationActivities: nil,
                    excludedActivityTypes: nil
                )
            }
        }
    }
}

#Preview {
    ActivityView()
}

// ------------------------------------------- //

import LinkPresentation
import UIKit

public struct ShareActivityView: UIViewControllerRepresentable {
    /// シェアしたいItem
    let activityItems: [Any]
    /// 追加したいActivityの設定
    let applicationActivities: [UIActivity]?
    /// 除外したいシェア先の設定
    let excludedActivityTypes: [UIActivity.ActivityType]?

    public init(
        activityItems: [Any],
        applicationActivities: [UIActivity]? = nil,
        excludedActivityTypes: [UIActivity.ActivityType]? = nil
    ) {
        self.activityItems = activityItems
        self.applicationActivities = applicationActivities
        self.excludedActivityTypes = excludedActivityTypes
    }

    public func makeUIViewController(context: Context) -> UIActivityViewController {
        let activityViewController = UIActivityViewController(
            activityItems: activityItems,
            applicationActivities: applicationActivities
        )
        activityViewController.excludedActivityTypes = excludedActivityTypes
        return activityViewController
    }

    public func updateUIViewController(_ uiViewController: UIActivityViewController, context: Context) {}
}

import UniformTypeIdentifiers

public class ActivityItemSource: NSObject, UIActivityItemSource {
    private let linkMetadata: LPLinkMetadata

    public init(_ url: URL, salonTitle: String) {
        self.linkMetadata = LPLinkMetadata()
        super.init()
        setPlaceholder(for: url, salonTitle: salonTitle)

        let metadataProvider = LPMetadataProvider()
        metadataProvider.startFetchingMetadata(for: url) { [weak self] metadata, _ in
            guard let self,
                  let metadata else {
                return
            }
            setMetadata(metadata)
        }
    }

    private func setPlaceholder(for url: URL, salonTitle: String) {
        linkMetadata.title = salonTitle
        linkMetadata.originalURL = url
    }

    // linkのメタデータを使用する場合
    private func setMetadata(_ metadata: LPLinkMetadata) {
        linkMetadata.title = metadata.title
        linkMetadata.url = metadata.url
        linkMetadata.originalURL = metadata.originalURL
        linkMetadata.iconProvider = metadata.iconProvider
    }

    // Placeholderで直接入れてもいい
    public func activityViewControllerPlaceholderItem(_ activityViewController: UIActivityViewController) -> Any {
        linkMetadata
    }

    public func activityViewController(_ activityViewController: UIActivityViewController, itemForActivityType activityType: UIActivity.ActivityType?) -> Any? {
        linkMetadata
    }

    public func activityViewControllerLinkMetadata(_ activityViewController: UIActivityViewController) -> LPLinkMetadata? {
        linkMetadata
    }
}

