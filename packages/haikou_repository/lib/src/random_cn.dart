import 'dart:math' as m;

class Random {
  final m.Random _rn;
  final List<String> _familyNameList;
  final List<String> _firstNameList;
  Random.seed(int seed)
      : _rn = m.Random(seed),
        _familyNameList = _familyNames.trim().split(""),
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

const _familyNames = '赵钱孙李周吴郑王冯陈褚卫' +
    '蒋沈韩杨朱秦尤许何吕施张' +
    '孔曹严华金魏陶姜戚谢邹喻' +
    '柏水窦章云苏潘葛奚范彭郎' +
    '鲁韦昌马苗凤花方俞任袁柳' +
    '酆鲍史唐费廉岑薛雷贺倪汤' +
    '滕殷罗毕郝邬安常乐于时傅' +
    '皮卞齐康伍余元卜顾孟平黄' +
    '和穆萧尹姚邵湛汪祁毛禹狄' +
    '米贝明臧计伏成戴谈宋茅庞' +
    '熊纪舒屈项祝董梁杜阮蓝闵' +
    '席季麻强贾路娄危江童颜郭' +
    '梅盛林刁锺徐邱骆高夏蔡田' +
    '樊胡凌霍虞万支柯昝管卢莫' +
    '经房裘缪干解应宗丁宣贲邓';
const _firstNames = '''
明国华建文平志伟东海强晓生光林小民永杰军波成荣新峰刚家龙德庆斌辉良玉俊立浩天宏子金健一忠洪江福祥中正振勇耀春大宁亮宇兴宝少剑云学仁涛瑞飞鹏安亚泽世汉达卫利胜敏群松克清长嘉红山贤阳乐锋智青跃元南武广思雄锦威启昌铭维义宗英凯鸿森超坚旭政传康继翔远力进泉茂毅富博霖顺信凡豪树和恩向道川彬柏磊敬书鸣芳培全炳基冠晖京欣廷哲保秋君劲栋仲权奇礼楠炜友年震鑫雷兵万星骏伦绍麟雨行才希彦兆贵源有景升惠臣慧开章润高佳虎根诚夫声冬奎扬双坤镇楚水铁喜之迪泰方同滨邦先聪朝善非恒晋汝丹为晨乃秀岩辰洋然厚灿卓轩帆若连勋祖锡吉崇钧田石奕发洲彪钢运伯满庭申湘皓承梓雪孟其潮冰怀鲁裕翰征谦航士尧标洁城寿枫革纯风化逸腾岳银鹤琳显焕来心凤睿勤延凌昊西羽百捷定琦圣佩麒虹如靖日咏会久昕黎桂玮燕可越彤雁孝宪萌颖艺夏桐月瑜沛杨钰兰怡灵淇美琪亦晶舒菁真涵爽雅爱依静棋宜男蔚芝菲露娜珊雯淑曼萍珠诗璇琴素梅玲蕾艳紫珍丽仪梦倩伊茜妍碧芬儿岚婷菊妮媛莲娟
''';
