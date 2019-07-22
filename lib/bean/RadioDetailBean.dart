//{
//"all_rate": "flac,320,128,224,96",
//"charge": 0,
//"method": 0,
//"artist": "易桀齐",
//"thumb": "http://qukufile2.qianqian.com/data2/music/12D27ABDE0E75BD0C32D86AAF2C8188F/252191207/252191207.jpg@s_2,w_90,h_90",
//"all_artist_id": "931",
//"resource_type": "0",
//"havehigh": 2,
//"title": "一整片天空",
//"songid": "1249078",
//"artist_id": "931",
//"flow": 0
//}
class RadioDetailBean {
  String all_rate;
  int charge;
  int method;
  String artist;
  String thumb;
  String all_artist_id;
  String resource_type;
  int havehigh;
  String title;
  String songid;
  String artist_id;
  int flow;

  RadioDetailBean(
      {this.all_rate,
      this.charge,
      this.method,
      this.artist,
      this.thumb,
      this.all_artist_id,
      this.resource_type,
      this.havehigh,
      this.title,
      this.songid,
      this.artist_id,
      this.flow});

  factory RadioDetailBean.fromJson(Map<String, dynamic> json) {
    return new RadioDetailBean(
      all_rate: json['all_rate'],
      charge: json['charge'],
      method: json['method'],
      artist: json['artist'],
      thumb: json['thumb'],
      all_artist_id: json['all_artist_id'],
      resource_type: json['resource_type'],
      havehigh: json['havehigh'],
      title: json['title'],
      songid: json['songid'],
      artist_id: json['artist_id'],
      flow: json['flow'],
    );
  }
}
