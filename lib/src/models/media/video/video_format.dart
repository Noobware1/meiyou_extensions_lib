/// An enumeration of the different video formats.
enum VideoFormat {
  /// Represents the HTTP Live Streaming (HLS) video format.
  hls,

  /// Represents the MPEG-4 Part 14 (MP4) video format.
  mp4,

  /// Represents the Dynamic Adaptive Streaming over HTTP (DASH) video format.
  dash,

  /// Represents the BitTorrent (torrent) video format.
  torrent,

  /// Represents other video formats not listed above.
  other,
}
