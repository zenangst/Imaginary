import Foundation
import Cache

extension Image {

  public typealias CacheType = Image

  public static func decode(_ data: Data) -> CacheType? {
    return Decompressor.decompress(data as Data)
  }

  public var memorySize: Int {
    guard let cgImage = cgImage else {
      return 0
    }

    return cgImage.height * cgImage.bytesPerRow
  }
}
