class VideoItem {
  String url;
  String title;

  VideoItem({this.url, this.title});

  static List<VideoItem> allVideos() {
    var listOfVideos = List<VideoItem>();
    VideoItem item1 = new VideoItem(
        url:
            "http://playertest.longtailvideo.com/adaptive/oceans_aes/oceans_aes.m3u8",
        title: "Ocean");
    VideoItem item2 = new VideoItem(
        url:
            "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/TearsOfSteel.mp4",
        title: "TearsOfSteel");
    VideoItem item3 = new VideoItem(
        url:
            "http://playertest.longtailvideo.com/adaptive/wowzaid3/playlist.m3u8",
        title: "LongTail Video");
    VideoItem item4 = new VideoItem(
        url:
            "https://bitdash-a.akamaihd.net/content/sintel/hls/playlist.m3u8",
        title: "Sintel");
    VideoItem item5 = new VideoItem(
        url:
            "http://sample.vodobox.net/skate_phantom_flex_4k/skate_phantom_flex_4k.m3u8",
        title: "Skate Phantom Flex");
    listOfVideos.add(item1);
    listOfVideos.add(item2);
    listOfVideos.add(item3);
    listOfVideos.add(item4);
    listOfVideos.add(item5);
    return listOfVideos;
  }
}
