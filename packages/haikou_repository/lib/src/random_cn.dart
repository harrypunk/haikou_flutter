import 'dart:math' as m;

class Random {
  final m.Random _rn;
  final List<String> _familyNameList;
  final List<String> _firstNameList;
  Random.seed(int seed)
      : _rn = m.Random(seed),
        _familyNameList = _familyNames.trim().split(" "),
        _firstNameList = _firstNames.trim().split("");

  List<String> names(int length) {
    return Iterable.generate(length).map((i) {
      final isThree = _rn.nextBool();
      final familyNameIndex = _rn.nextInt(_familyNameList.length);
      final firstNameIndex = _rn.nextInt(_firstNameList.length);
      final firstNameIndex2 =
          isThree ? _rn.nextInt(_firstNameList.length) : null;
      return [familyNameIndex, firstNameIndex, firstNameIndex2];
    }).map((indexes) {
      final family = _familyNameList[indexes[0]!];
      var first = _firstNameList[indexes[1]!];
      final thirdIndex = indexes[2];
      if (thirdIndex != null) {
        first += _firstNameList[thirdIndex];
      }
      return "$family$first";
    }).toList();
  }
}

const _familyNames = '赵 钱 孙 李 周 吴 郑 王 冯 陈 褚 卫 ' +
    '蒋 沈 韩 杨 朱 秦 尤 许 何 吕 施 张 ' +
    '孔 曹 严 华 金 魏 陶 姜 戚 谢 邹 喻 ' +
    '柏 水 窦 章 云 苏 潘 葛 奚 范 彭 郎 ' +
    '鲁 韦 昌 马 苗 凤 花 方 俞 任 袁 柳 ' +
    '酆 鲍 史 唐 费 廉 岑 薛 雷 贺 倪 汤 ' +
    '滕 殷 罗 毕 郝 邬 安 常 乐 于 时 傅 ' +
    '皮 卞 齐 康 伍 余 元 卜 顾 孟 平 黄 ' +
    '和 穆 萧 尹 姚 邵 湛 汪 祁 毛 禹 狄 ' +
    '米 贝 明 臧 计 伏 成 戴 谈 宋 茅 庞 ' +
    '熊 纪 舒 屈 项 祝 董 梁 杜 阮 蓝 闵 ' +
    '席 季 麻 强 贾 路 娄 危 江 童 颜 郭 ' +
    '梅 盛 林 刁 锺 徐 邱 骆 高 夏 蔡 田 ' +
    '樊 胡 凌 霍 虞 万 支 柯 昝 管 卢 莫 ' +
    '经 房 裘 缪 干 解 应 宗 丁 宣 贲 邓';
const _firstNames = '''
明国华建文平志伟东海强晓生光林小民永杰军波成荣新峰刚家龙德庆斌辉良玉俊立浩天宏子金健一忠洪江福祥中正振勇耀春大宁亮宇兴宝少剑云学仁涛瑞飞鹏安亚泽世汉达卫利胜敏群松克清长嘉红山贤阳乐锋智青跃元南武广思雄锦威启昌铭维义宗英凯鸿森超坚旭政传康继翔远力进泉茂毅富博霖顺信凡豪树和恩向道川彬柏磊敬书鸣芳培全炳基冠晖京欣廷哲保秋君劲栋仲权奇礼楠炜友年震鑫雷兵万星骏伦绍麟雨行才希彦兆贵源有景升惠臣慧开章润高佳虎根诚夫声冬奎扬双坤镇楚水铁喜之迪泰方同滨邦先聪朝善非恒晋汝丹为晨乃秀岩辰洋然厚灿卓轩帆若连勋祖锡吉崇钧田石奕发洲彪钢运伯满庭申湘皓承梓雪孟其潮冰怀鲁裕翰征谦航士尧标洁城寿枫革纯风化逸腾岳银鹤琳显焕来心凤睿勤延凌昊西羽百捷定琦圣佩麒虹如靖日咏会久昕黎桂玮燕可越彤雁孝宪萌颖艺夏桐月瑜沛杨钰兰怡灵淇美琪亦晶舒菁真涵爽雅爱依静棋宜男蔚芝菲露娜珊雯淑曼萍珠诗璇琴素梅玲蕾艳紫珍丽仪梦倩伊茜妍碧芬儿岚婷菊妮媛莲娟
''';
