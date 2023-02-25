import Foundation

public struct Options {
    public let outputPath: URL
    public let cartfilePath: URL
    public let mintfilePath: URL
    public let podsPath: URL
    public let packagePaths: [URL]
    public let packageCheckoutPath: URL?
    public let xcworkspacePath: URL
    public let xcodeprojPath: URL
    public let prefix: String
    public let gitHubToken: String?
    public let htmlPath: URL?
    public let markdownPath: URL?
    public let licenseFileNames: [String]
    public let config: Config

    public static let empty = Options(outputPath: URL(fileURLWithPath: ""),
                                      cartfilePath: URL(fileURLWithPath: ""),
                                      mintfilePath: URL(fileURLWithPath: ""),
                                      podsPath: URL(fileURLWithPath: ""),
                                      packagePaths: [],
                                      packageCheckoutPath: nil,
                                      xcworkspacePath: URL(fileURLWithPath: ""),
                                      xcodeprojPath: URL(fileURLWithPath: ""),
                                      prefix: Consts.prefix,
                                      gitHubToken: nil,
                                      htmlPath: nil,
                                      markdownPath: nil,
                                      licenseFileNames: [],
                                      config: Config.empty)

    public init(outputPath: URL,
                cartfilePath: URL,
                mintfilePath: URL,
                podsPath: URL,
                packagePaths: [URL],
                packageCheckoutPath: URL?,
                xcworkspacePath: URL,
                xcodeprojPath: URL,
                prefix: String,
                gitHubToken: String?,
                htmlPath: URL?,
                markdownPath: URL?,
                licenseFileNames: [String],
                config: Config) {
        self.outputPath = outputPath
        self.cartfilePath = cartfilePath
        self.mintfilePath = mintfilePath
        self.podsPath = podsPath
        self.packagePaths = packagePaths
        self.packageCheckoutPath = packageCheckoutPath
        self.xcworkspacePath = xcworkspacePath
        self.xcodeprojPath = xcodeprojPath
        self.prefix = prefix
        self.gitHubToken = gitHubToken
        self.htmlPath = htmlPath
        self.markdownPath = markdownPath
        self.licenseFileNames = licenseFileNames
        self.config = config
    }
}
