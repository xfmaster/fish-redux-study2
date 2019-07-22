class ChannelTabBean {
  List<Channel> channelList;
  String title;
  int cid;

  ChannelTabBean({this.channelList, this.title, this.cid});

  factory ChannelTabBean.fromJson(Map<String, dynamic> json) {
    var channelListJson = json['channellist'];
    List<Channel> channels = new List();
    for (int i = 0; i < channelListJson.length; i++) {
      channels.add(Channel.fromJson(channelListJson[i]));
    }
    return new ChannelTabBean(
        cid: json['cid'], title: json['title'], channelList: channels);
  }
}

class Channel {
  String thumb;
  String name;
  String cate_name;
  String cate_sname;
  int value;
  String channelid;
  String ch_name;

  Channel(
      {this.thumb,
      this.name,
      this.cate_name,
      this.cate_sname,
      this.value,
      this.ch_name,
      this.channelid});

  factory Channel.fromJson(Map<String, dynamic> json) {
    var thumb = json['thumb'];
    var channelid = json['channelid'];
    return new Channel(
      thumb: thumb == null ? json['avatar'] : thumb,
      name: json['name'],
      cate_name: json['cate_name'],
      cate_sname: json['cate_sname'],
      value: json['value'],
      ch_name: json['ch_name'],
      channelid: channelid == null ? json['artistid'] : channelid,
    );
  }
}
