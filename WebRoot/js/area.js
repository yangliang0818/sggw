function Dsy() {
    this.Items = {};
}
Dsy.prototype.add = function (id, iArray) {
    this.Items[id] = iArray;
}
Dsy.prototype.Exists = function (id) {
    if (typeof(this.Items[id]) == "undefined") return false;
    return true;
}
function change(v) {
    var str = "0";
    for (i = 0; i < v; i++) {
        str += ("_" + (document.getElementById(s[i]).selectedIndex - 1));
    }
    ;
    var ss = document.getElementById(s[v]);
    with (ss) {
        length = 0;
        options[0] = new Option(opt0[v], opt0[v]);
        if (v && document.getElementById(s[v - 1]).selectedIndex > 0 || !v) {
            if (dsy.Exists(str)) {
                ar = dsy.Items[str];
                for (i = 0; i < ar.length; i++)options[length] = new Option(ar[i], ar[i]);
                if (v){
                    options[1].selected = true;
                }
            }
        }
        if (++v < s.length) {
            change(v);
        }
    }
}
var dsy = new Dsy();
dsy.add("0", ["北京", "安徽", "福建", "甘肃", "广东", "广西", "贵州", "海南", "河北", "河南", "黑龙江", "湖北", "湖南", "吉林", "江苏", "江西", "辽宁", "内蒙古", "宁夏", "青海", "山东", "山西", "陕西", "上海", "四川", "天津", "西藏", "新疆", "云南", "浙江", "重庆"]);
dsy.add("0_0", ["北京"]);
dsy.add("0_0_0", ["北京市", "东城", "西城", "崇文", "宣武", "朝阳", "丰台", "石景山", "海淀", "门头沟", "房山", "通州", "顺义", "昌平", "大兴", "平谷", "怀柔", "密云", "延庆"]);
dsy.add("0_1", ["安庆", "蚌埠", "池州", "滁州", "阜阳", "合肥", "淮北", "淮南", "黄山", "六安", "马鞍山", "宿州", "铜陵", "芜湖", "宣城", "亳州"]);
dsy.add("0_1_0", ["安庆市", "怀宁县", "潜山县", "宿松县", "太湖县", "桐城市", "望江县", "岳西县", "枞阳县"]);
dsy.add("0_1_1", ["蚌埠市", "固镇县", "怀远县", "五河县"]);
dsy.add("0_1_2", ["池州市", "东至县", "青阳县", "石台县"]);
dsy.add("0_1_3", ["滁州市", "定远县", "凤阳县", "来安县", "明光市", "全椒县", "天长市"]);
dsy.add("0_1_4", ["阜南县", "阜阳市", "界首市", "临泉县", "太和县", "颖上县"]);
dsy.add("0_1_5", ["市辖区","长丰县", "肥东县", "肥西县","巢湖市"]);
dsy.add("0_1_6", ["淮北市", "濉溪县"]);
dsy.add("0_1_7", ["凤台县", "淮南市"]);
dsy.add("0_1_8", ["黄山市", "祁门县", "休宁县", "歙县", "黟县"]);
dsy.add("0_1_9", ["霍邱县", "霍山县", "金寨县", "六安市", "寿县", "舒城县"]);
dsy.add("0_1_10", ["马鞍山市","和县","当涂县","含山" ]);
dsy.add("0_1_11", ["灵璧县", "宿州市", "萧县", "泗县", "砀山县"]);
dsy.add("0_1_12", ["铜陵市", "铜陵县"]);
dsy.add("0_1_13", ["繁昌县", "南陵县", "芜湖市", "芜湖县"]);
dsy.add("0_1_14", ["广德县", "绩溪县", "郎溪县", "宁国市", "宣城市", "泾县", "旌德县"]);
dsy.add("0_1_15", ["利辛县", "蒙城县", "涡阳县", "亳州市"]);
dsy.add("0_2", ["福州", "龙岩", "南平", "宁德", "莆田", "泉州", "三明", "厦门", "漳州"]);
dsy.add("0_2_0", ["长乐市", "福清市", "福州市", "连江县", "罗源县", "闽侯县", "闽清县", "平潭县", "永泰县"]);
dsy.add("0_2_1", ["长汀县", "连城县", "龙岩市", "上杭县", "武平县", "永定县", "漳平市"]);
dsy.add("0_2_2", ["光泽县", "建阳市", "建瓯市", "南平市", "浦城县", "邵武市", "顺昌县", "松溪县", "武夷山市", "政和县"]);
dsy.add("0_2_3", ["福安市", "福鼎市", "古田县", "宁德市", "屏南县", "寿宁县", "霞浦县", "周宁县", "柘荣县"]);
dsy.add("0_2_4", ["莆田市", "仙游县"]);
dsy.add("0_2_5", ["安溪县", "德化县", "惠安县", "金门县", "晋江市", "南安市", "泉州市", "石狮市", "永春县"]);
dsy.add("0_2_6", ["大田县", "建宁县", "将乐县", "明溪县", "宁化县", "清流县", "三明市", "沙县", "泰宁县", "永安市", "尤溪县"]);
dsy.add("0_2_7", ["厦门市"]);
dsy.add("0_2_8", ["长泰县", "东山县", "华安县", "龙海市", "南靖县", "平和县", "云霄县", "漳浦县", "漳州市", "诏安县"]);
dsy.add("0_3", ["白银", "定西", "甘南藏族自治州", "嘉峪关", "金昌", "酒泉", "兰州", "临夏回族自治州", "陇南", "平凉", "庆阳", "天水", "武威", "张掖"]);
dsy.add("0_3_0", ["白银市", "会宁县", "景泰县", "靖远县"]);
dsy.add("0_3_1", ["定西县", "临洮县", "陇西县", "通渭县", "渭源县", "漳县", "岷县"]);
dsy.add("0_3_2", ["迭部县", "合作市", "临潭县", "碌曲县", "玛曲县", "夏河县", "舟曲县", "卓尼县"]);
dsy.add("0_3_3", ["嘉峪关市"]);
dsy.add("0_3_4", ["金昌市", "永昌县"]);
dsy.add("0_3_5", ["阿克塞哈萨克族自治县", "安西县", "敦煌市", "金塔县", "酒泉市", "肃北蒙古族自治县", "玉门市"]);
dsy.add("0_3_6", ["皋兰县", "兰州市", "永登县", "榆中县"]);
dsy.add("0_3_7", ["东乡族自治县", "广河县", "和政县", "积石山保安族东乡族撒拉族自治县", "康乐县", "临夏市", "临夏县", "永靖县"]);
dsy.add("0_3_8", ["成县", "徽县", "康县", "礼县", "两当县", "文县", "武都县", "西和县", "宕昌县"]);
dsy.add("0_3_9", ["崇信县", "华亭县", "静宁县", "灵台县", "平凉市", "庄浪县", "泾川县"]);
dsy.add("0_3_10", ["合水县", "华池县", "环县", "宁县", "庆城县", "庆阳市", "镇原县", "正宁县"]);
dsy.add("0_3_11", ["甘谷县", "秦安县", "清水县", "天水市", "武山县", "张家川回族自治县"]);
dsy.add("0_3_12", ["古浪县", "民勤县", "天祝藏族自治县", "武威市"]);
dsy.add("0_3_13", ["高台县", "临泽县", "民乐县", "山丹县", "肃南裕固族自治县", "张掖市"]);
dsy.add("0_4", ["潮州", "东莞", "佛山", "广州", "河源", "惠州", "江门", "揭阳", "茂名", "梅州", "清远", "汕头", "汕尾", "韶关", "深圳", "阳江", "云浮", "湛江", "肇庆", "中山", "珠海"]);
dsy.add("0_4_0", ["潮安县", "潮州市", "饶平县"]);
dsy.add("0_4_1", ["东莞市"]);
dsy.add("0_4_2", ["佛山市"]);
dsy.add("0_4_3", ["从化市", "广州市", "增城市"]);
dsy.add("0_4_4", ["东源县", "和平县", "河源市", "连平县", "龙川县", "紫金县"]);
dsy.add("0_4_5", ["博罗县", "惠东县", "惠阳市", "惠州市", "龙门县"]);
dsy.add("0_4_6", ["恩平市", "鹤山市", "江门市", "开平市", "台山市"]);
dsy.add("0_4_7", ["惠来县", "揭东县", "揭西县", "揭阳市", "普宁市"]);
dsy.add("0_4_8", ["电白县", "高州市", "化州市", "茂名市", "信宜市"]);
dsy.add("0_4_9", ["大埔县", "丰顺县", "蕉岭县", "梅县", "梅州市", "平远县", "五华县", "兴宁市"]);
dsy.add("0_4_10", ["佛冈县", "连南瑶族自治县", "连山壮族瑶族自治县", "连州市", "清新县", "清远市", "阳山县", "英德市"]);
dsy.add("0_4_11", ["潮阳市", "澄海市", "南澳县", "汕头市"]);
dsy.add("0_4_12", ["海丰县", "陆丰市", "陆河县", "汕尾市"]);
dsy.add("0_4_13", ["乐昌市", "南雄市", "曲江县", "仁化县", "乳源瑶族自治县", "韶关市", "始兴县", "翁源县", "新丰县"]);
dsy.add("0_4_14", ["深圳市"]);
dsy.add("0_4_15", ["阳春市", "阳东县", "阳江市", "阳西县"]);
dsy.add("0_4_16", ["罗定市", "新兴县", "郁南县", "云安县", "云浮市"]);
dsy.add("0_4_17", ["雷州市", "廉江市", "遂溪县", "吴川市", "徐闻县", "湛江市"]);
dsy.add("0_4_18", ["德庆县", "封开县", "高要市", "广宁县", "怀集县", "四会市", "肇庆市"]);
dsy.add("0_4_19", ["中山市"]);
dsy.add("0_4_20", ["珠海市"]);
dsy.add("0_5", ["百色", "北海", "崇左", "防城港", "桂林", "贵港", "河池", "贺州", "来宾", "柳州", "南宁", "钦州", "梧州", "玉林"]);
dsy.add("0_5_0", ["百色市", "德保县", "靖西县", "乐业县", "凌云县", "隆林各族自治县", "那坡县", "平果县", "田东县", "田林县", "田阳县", "西林县"]);
dsy.add("0_5_1", ["北海市", "合浦县"]);
dsy.add("0_5_2", ["崇左市", "大新县", "扶绥县", "龙州县", "宁明县", "凭祥市", "天等县"]);
dsy.add("0_5_3", ["东兴市", "防城港市", "上思县"]);
dsy.add("0_5_4", ["恭城瑶族自治县", "灌阳县", "桂林市", "荔浦县", "临桂县", "灵川县", "龙胜各族自治县", "平乐县", "全州县", "兴安县", "阳朔县", "永福县", "资源县"]);
dsy.add("0_5_5", ["桂平市", "贵港市", "平南县"]);
dsy.add("0_5_6", ["巴马瑶族自治县", "大化瑶族自治县", "东兰县", "都安瑶族自治县", "凤山县", "河池市", "环江毛南族自治县", "罗城仡佬族自治县", "南丹县", "天峨县", "宜州市"]);
dsy.add("0_5_7", ["富川瑶族自治县", "贺州市", "昭平县", "钟山县"]);
dsy.add("0_5_8", ["合山市", "金秀瑶族自治县", "来宾市", "武宣县", "象州县", "忻城县"]);
dsy.add("0_5_9", ["柳城县", "柳江县", "柳州市", "鹿寨县", "融安县", "融水苗族自治县", "三江侗族自治县"]);
dsy.add("0_5_10", ["宾阳县", "横县", "隆安县", "马山县", "南宁市", "上林县", "武鸣县", "邕宁县"]);
dsy.add("0_5_11", ["灵山县", "浦北县", "钦州市"]);
dsy.add("0_5_12", ["苍梧县", "蒙山县", "藤县", "梧州市", "岑溪市"]);
dsy.add("0_5_13", ["北流市", "博白县", "陆川县", "容县", "兴业县", "玉林市"]);
dsy.add("0_6", ["安顺", "毕节", "贵阳", "六盘水", "黔东南苗族侗族自治州", "黔南布依族苗族自治州", "黔西南布依族苗族自治州", "铜仁", "遵义"]);
dsy.add("0_6_0", ["安顺市", "关岭布依族苗族自治县", "平坝县", "普定县", "镇宁布依族苗族自治县", "紫云苗族布依族自治县"]);
dsy.add("0_6_1", ["毕节市", "大方县", "赫章县", "金沙县", "纳雍县", "黔西县", "威宁彝族回族苗族自治县", "织金县"]);
dsy.add("0_6_2", ["贵阳市", "开阳县", "清镇市", "息烽县", "修文县"]);
dsy.add("0_6_3", ["六盘水市", "六枝特区", "盘县", "水城县"]);
dsy.add("0_6_4", ["从江县", "丹寨县", "黄平县", "剑河县", "锦屏县", "凯里市", "雷山县", "黎平县", "麻江县", "三穗县", "施秉县", "台江县", "天柱县", "镇远县", "岑巩县", "榕江县"]);
dsy.add("0_6_5", ["长顺县", "都匀市", "独山县", "福泉市", "贵定县", "惠水县", "荔波县", "龙里县", "罗甸县", "平塘县", "三都水族自治县", "瓮安县"]);
dsy.add("0_6_6", ["安龙县", "册亨县", "普安县", "晴隆县", "望谟县", "兴仁县", "兴义市", "贞丰县"]);
dsy.add("0_6_7", ["德江县", "江口县", "石阡县", "思南县", "松桃苗族自治县", "铜仁市", "万山特区", "沿河土家族自治县", "印江土家族苗族自治县", "玉屏侗族自治县"]);
dsy.add("0_6_8", ["赤水市", "道真仡佬族苗族自治县", "凤冈县", "仁怀市", "绥阳县", "桐梓县", "务川仡佬族苗族自治县", "习水县", "余庆县", "正安县", "遵义市", "遵义县", "湄潭县"]);
dsy.add("0_7", ["白沙黎族自治县", "保亭黎族苗族自治县", "昌江黎族自治县", "澄迈县", "定安县", "东方", "海口", "乐东黎族自治县", "临高县", "陵水黎族自治县", "琼海", "琼中黎族苗族自治县", "三亚", "屯昌县", "万宁", "文昌", "五指山", "儋州"]);
dsy.add("0_7_0", ["白沙黎族自治县"]);
dsy.add("0_7_1", ["保亭黎族苗族自治县"]);
dsy.add("0_7_2", ["昌江黎族自治县"]);
dsy.add("0_7_3", ["澄迈县"]);
dsy.add("0_7_4", ["定安县"]);
dsy.add("0_7_5", ["东方市"]);
dsy.add("0_7_6", ["海口市"]);
dsy.add("0_7_7", ["乐东黎族自治县"]);
dsy.add("0_7_8", ["临高县"]);
dsy.add("0_7_9", ["陵水黎族自治县"]);
dsy.add("0_7_10", ["琼海市"]);
dsy.add("0_7_11", ["琼中黎族苗族自治县"]);
dsy.add("0_7_12", ["三亚市"]);
dsy.add("0_7_13", ["屯昌县"]);
dsy.add("0_7_14", ["万宁市"]);
dsy.add("0_7_15", ["文昌市"]);
dsy.add("0_7_16", ["五指山市"]);
dsy.add("0_7_17", ["儋州市"]);
dsy.add("0_8", ["保定", "沧州", "承德", "邯郸", "衡水", "廊坊", "秦皇岛", "石家庄", "唐山", "邢台", "张家口"]);
dsy.add("0_8_0", ["安国市", "安新县", "保定市", "博野县", "定兴县", "定州市", "阜平县", "高碑店市", "高阳县", "满城县", "清苑县", "曲阳县", "容城县", "顺平县", "唐县", "望都县", "雄县", "徐水县", "易县", "涞水县", "涞源县", "涿州市", "蠡县"]);
dsy.add("0_8_1", ["泊头市", "沧县", "沧州市", "东光县", "海兴县", "河间市", "黄骅市", "孟村回族自治县", "南皮县", "青县", "任丘市", "肃宁县", "吴桥县", "献县", "盐山县"]);
dsy.add("0_8_2", ["承德市", "承德县", "丰宁满族自治县", "宽城满族自治县", "隆化县", "滦平县", "平泉县", "围场满族蒙古族自治县", "兴隆县"]);
dsy.add("0_8_3", ["成安县", "磁县", "大名县", "肥乡县", "馆陶县", "广平县", "邯郸市", "邯郸县", "鸡泽县", "临漳县", "邱县", "曲周县", "涉县", "魏县", "武安市", "永年县"]);
dsy.add("0_8_4", ["安平县", "阜城县", "故城县", "衡水市", "冀州市", "景县", "饶阳县", "深州市", "武强县", "武邑县", "枣强县"]);
dsy.add("0_8_5", ["霸州市", "大厂回族自治县", "大城县", "固安县", "廊坊市", "三河市", "文安县", "香河县", "永清县"]);
dsy.add("0_8_6", ["昌黎县", "抚宁县", "卢龙县", "秦皇岛市", "青龙满族自治县"]);
dsy.add("0_8_7", ["高邑县", "晋州市", "井陉县", "灵寿县", "鹿泉市", "平山县", "深泽县", "石家庄市", "无极县", "辛集市", "新乐市", "行唐县", "元氏县", "赞皇县", "赵县", "正定县", "藁城市", "栾城县"]);
dsy.add("0_8_8", ["乐亭县", "滦南县", "滦县", "迁安市", "迁西县", "唐海县", "唐山市", "玉田县", "遵化市"]);
dsy.add("0_8_9", ["柏乡县", "广宗县", "巨鹿县", "临城县", "临西县", "隆尧县", "南宫市", "南和县", "内丘县", "宁晋县", "平乡县", "清河县", "任县", "沙河市", "威县", "新河县", "邢台市", "邢台县"]);
dsy.add("0_8_10", ["赤城县", "崇礼县", "沽源县", "怀安县", "怀来县", "康保县", "尚义县", "万全县", "蔚县", "宣化县", "阳原县", "张北县", "张家口市", "涿鹿县"]);
dsy.add("0_9", ["安阳", "鹤壁", "济源", "焦作", "开封", "洛阳", "南阳", "平顶山", "三门峡", "商丘", "新乡", "信阳", "许昌", "郑州", "周口", "驻马店", "漯河", "濮阳"]);
dsy.add("0_9_0", ["安阳市", "安阳县", "滑县", "林州市", "内黄县", "汤阴县"]);
dsy.add("0_9_1", ["", "鹤壁市", "浚县", "淇县"]);
dsy.add("0_9_2", ["济源市"]);
dsy.add("0_9_3", ["博爱县", "焦作市", "孟州市", "沁阳市", "温县", "武陟县", "修武县"]);
dsy.add("0_9_4", ["开封市", "开封县", "兰考县", "通许县", "尉氏县", "杞县"]);
dsy.add("0_9_5", ["洛宁县", "洛阳市", "孟津县", "汝阳县", "新安县", "伊川县", "宜阳县", "偃师市", "嵩县", "栾川县"]);
dsy.add("0_9_6", ["邓州市", "方城县", "南阳市", "南召县", "内乡县", "社旗县", "唐河县", "桐柏县", "西峡县", "新野县", "镇平县", "淅川县"]);
dsy.add("0_9_7", ["宝丰县", "鲁山县", "平顶山市", "汝州市", "舞钢市", "叶县", "郏县"]);
dsy.add("0_9_8", ["灵宝市", "卢氏县", "三门峡市", "陕县", "义马市", "渑池县"]);
dsy.add("0_9_9", ["民权县", "宁陵县", "商丘市", "夏邑县", "永城市", "虞城县", "柘城县", "睢县"]);
dsy.add("0_9_10", ["长垣县", "封丘县", "辉县市", "获嘉县", "卫辉市", "新乡市", "新乡县", "延津县", "原阳县"]);
dsy.add("0_9_11", ["固始县", "光山县", "淮滨县", "罗山县", "商城县", "息县", "新县", "信阳市", "潢川县"]);
dsy.add("0_9_12", ["长葛市", "襄城县", "许昌市", "许昌县", "禹州市", "鄢陵县"]);
dsy.add("0_9_13", ["登封市", "巩义市", "新密市", "新郑市", "郑州市", "中牟县", "荥阳市"]);
dsy.add("0_9_14", ["郸城县", "扶沟县", "淮阳县", "鹿邑县", "商水县", "沈丘县", "太康县", "西华县", "项城市", "周口市"]);
dsy.add("0_9_15", ["泌阳县", "平舆县", "确山县", "汝南县", "上蔡县", "遂平县", "西平县", "新蔡县", "正阳县", "驻马店市"]);
dsy.add("0_9_16", ["临颍县", "舞阳县", "郾城县", "漯河市"]);
dsy.add("0_9_17", ["范县", "南乐县", "清丰县", "台前县", "濮阳市", "濮阳县"]);
dsy.add("0_10", ["大庆", "大兴安岭", "哈尔滨", "鹤岗", "黑河", "鸡西", "佳木斯", "牡丹江", "七台河", "齐齐哈尔", "双鸭山", "绥化", "伊春"]);
dsy.add("0_10_0", ["大庆市", "杜尔伯特蒙古族自治县", "林甸县", "肇源县", "肇州县"]);
dsy.add("0_10_1", ["呼玛县", "漠河县", "塔河县"]);
dsy.add("0_10_2", ["阿城市", "巴彦县", "宾县", "方正县", "哈尔滨市", "呼兰县", "木兰县", "尚志市", "双城市", "通河县", "五常市", "延寿县", "依兰县"]);
dsy.add("0_10_3", ["鹤岗市", "萝北县", "绥滨县"]);
dsy.add("0_10_4", ["北安市", "黑河市", "嫩江县", "孙吴县", "五大连池市", "逊克县"]);
dsy.add("0_10_5", ["虎林市", "鸡东县", "鸡西市", "密山市"]);
dsy.add("0_10_6", ["抚远县", "富锦市", "佳木斯市", "汤原县", "同江市", "桦川县", "桦南县"]);
dsy.add("0_10_7", ["东宁县", "海林市", "林口县", "牡丹江市", "穆棱市", "宁安市", "绥芬河市"]);
dsy.add("0_10_8", ["勃利县", "七台河市"]);
dsy.add("0_10_9", ["拜泉县", "富裕县", "甘南县", "克东县", "克山县", "龙江县", "齐齐哈尔市", "泰来县", "依安县", "讷河市"]);
dsy.add("0_10_10", ["宝清县", "集贤县", "饶河县", "双鸭山市", "友谊县"]);
dsy.add("0_10_11", ["安达市", "海伦市", "兰西县", "明水县", "青冈县", "庆安县", "绥化市", "绥棱县", "望奎县", "肇东市"]);
dsy.add("0_10_12", ["嘉荫县", "铁力市", "伊春市"]);
dsy.add("0_11", ["武汉市", "黄石市", "十堰市", "宜昌市", "襄樊市", "鄂州市", "荆门市", "孝感市", "荆州市", "黄冈市", "咸宁市", "随州市", "恩施自治州", "咸宁", "湖北省辖单位"]);
dsy.add("0_11_0", ["市辖区","江岸区","江汉区","乔口区","汉阳区","武昌区","青山区","洪山区","东西湖区","汉南区","蔡甸区","江夏区","黄陂区","新洲区"]);
dsy.add("0_11_1", ["市辖区","黄石港区","西塞山区","下陆区","铁山区","阳新县","大冶市"]);
dsy.add("0_11_2", ["市辖区","茅箭区","张湾区","郧县","郧西县","竹山县","竹溪县","房县","丹江口市"]);
dsy.add("0_11_3", ["西陵区,伍家岗区,夷陵区,猇亭区,点军区,宜都市,枝江市,当阳市,秭归县,远安县,兴山县,五峰土家族自治县,长阳土家族自治县"]);
dsy.add("0_11_4", ["市辖区","襄城区","樊城区","襄阳区","南漳县","谷城县","保康县","老河口市","枣阳市","宜城市"]);
dsy.add("0_11_5", ["市辖区","梁子湖区","华容区","鄂城区"]);
dsy.add("0_11_6", ["市辖区","东宝区","掇刀区","京山县","沙洋县","钟祥市"]);
dsy.add("0_11_7", ["市辖区","孝南区","孝昌县","大悟县","云梦县","应城市","安陆市","汉川市"]);
dsy.add("0_11_8", ["市辖区","沙市区","荆州区","公安县","监利县","江陵县","石首市","洪湖市","松滋市"]);
dsy.add("0_11_9", ["市辖区","黄州区","团风县","红安县","罗田县","英山县","浠水县","蕲春县","黄梅县","麻城市","武穴市"]);
dsy.add("0_11_10", ["市辖区","咸安区","嘉鱼县","通城县","崇阳县","通山县","赤壁市"]);
dsy.add("0_11_11", ["市辖区","曾都区","广水市"]);
dsy.add("0_11_12", ["恩施市","利川市","建始县","巴东县","宣恩县","咸丰县","来凤县","鹤峰县"]);
dsy.add("0_11_13", ["仙桃市","潜江市","天门市","神农架林区"]);
dsy.add("0_12", ["长沙市", "株洲市", "湘潭市", "衡阳市","邵阳市","岳阳市","常德市","张家界市","益阳市","郴州市","永州市","怀化市","娄底市","湘西自治州"]);
dsy.add("0_12_0", ["市辖区", "芙蓉区", "天心区", "岳麓区","开福区","雨花区","长沙县","望城县","宁乡县","浏阳市"]);
dsy.add("0_12_1", ["市辖区", "荷塘区", "芦淞区", "岳麓区","石峰区","天元区","株洲县","望城县","攸县","茶陵县","炎陵县","醴陵市"]);
dsy.add("0_12_2", ["市辖区", "雨湖区", "岳塘区", "湘潭县","湘乡市","韶山市"]);
dsy.add("0_12_3", ["市辖区","珠晖区","雁峰区","石鼓区","蒸湘区","南岳区","衡阳县","衡南县","衡山县","衡东县","祁东县","耒阳市","常宁市"]);
dsy.add("0_12_4", ["市辖区","双清区","大祥区","北塔区","邵东县","新邵县","邵阳县","隆回县","洞口县","绥宁县","新宁县","城步苗族自治县","武冈市"]);
dsy.add("0_12_5", ["市辖区","岳阳楼区","云溪区","君山区","岳阳县","华容县","湘阴县","平江县","汨罗市"]);
dsy.add("0_12_6", ["市辖区","武陵区","鼎城区","安乡县","汉寿县","澧县","临澧县","桃源县","石门县","津市市"]);
dsy.add("0_12_7", ["市辖区","永定区","武陵源区","慈利县","桑植县"]);
dsy.add("0_12_8", ["市辖区","资阳区","赫山区","南县","桃江县","安化县","沅江市"]);
dsy.add("0_12_9", ["市辖区","北湖区","苏仙区","桂阳县","宜章县","永兴县","嘉禾县","临武县","汝城县","桂东县","安仁县"]);
dsy.add("0_12_10", ["市辖区","芝山区","冷水滩区","祁阳县","东安县","双牌县","道县","江永县","宁远县","蓝山县","新田县","江华瑶族自治县"]);
dsy.add("0_12_11", ["市辖区","鹤城区","中方县","沅陵县","辰溪县","溆浦县","会同县","麻阳苗族自治县","新晃侗族自治县","芷江侗族自治县","靖州苗族侗族自治县","通道侗族自治县","洪江市"]);
dsy.add("0_12_12", ["市辖区","娄星区","双峰县","新化县","冷水江市","涟源市"]);
dsy.add("0_12_13", ["吉首市","泸溪县","凤凰县","花垣县","保靖县","古丈县","永顺县","龙山县"]);
dsy.add("0_13", ["长春市", "吉林市", "四平市", "辽源市","通化市","白山市","松原市","白城市","延边自治州"]);
dsy.add("0_13_0", ["市辖区", "南关区", "宽城区", "朝阳区","二道区","绿园区","双阳区","农安县","九台市","榆树市","德惠市"]);
dsy.add("0_13_1", ["市辖区", "昌邑区", "龙潭区", "船营区","丰满区","永吉县","蛟河市","桦甸市","舒兰市","磐石市"]);
dsy.add("0_13_2", ["市辖区", "铁西区", "铁东区", "梨树县","伊通满族自治县","公主岭市","双辽市"]);
dsy.add("0_13_3", ["市辖区", "龙山区", "西安区", "东丰县","东辽县"]);
dsy.add("0_13_4", ["市辖区", "东昌区", "二道江区", "通化县","辉南县","柳河县","梅河口市","集安市"]);
dsy.add("0_13_5", ["市辖区", "八道江区", "抚松县", "靖宇县","长白朝鲜族自治县","江源县","临江市"]);
dsy.add("0_13_6", ["市辖区", "宁江区", "前郭尔罗斯蒙古族自治县", "长岭县","乾安县","扶余县"]);
dsy.add("0_13_7", ["市辖区", "洮北区", "镇赉县", "通榆县","洮南市","大安市"]);
dsy.add("0_13_8", ["延吉市", "图们市", "敦化市", "珲春市","龙井市","和龙市","汪清县","安图县"]);
dsy.add("0_14", ["南京市", "无锡市", "徐州市", "常州市","苏州市","南通市","连云港市","淮安市","盐城市","扬州市","镇江市","泰州市","宿迁市"]);
dsy.add("0_14_0", ["市辖区", "玄武区", "白下区", "秦淮区","建邺区","鼓楼区","下关区","浦口区","栖霞区","雨花台区","江宁区","六合区","溧水县","高淳县"]);
dsy.add("0_14_1", ["市辖区", "南长区", "北塘区", "锡山区","惠山区","滨湖区","江阴市","宜兴市"]);
dsy.add("0_14_2", ["市辖区", "鼓楼区", "云龙区", "九里区","贾汪区","泉山区","丰县","沛县","铜山县","睢宁县","新沂市","邳州市"]);
dsy.add("0_14_3", ["市辖区", "天宁区", "钟楼区", "戚墅堰区","新北区","武进区","溧阳市","金坛市"]);
dsy.add("0_14_4", ["市辖区", "沧浪区", "平江区", "金阊区","虎丘区","吴中区","相城区","常熟市","张家港市","昆山市","吴江市","太仓市"]);
dsy.add("0_14_5", ["市辖区", "崇川区", "港闸区", "海安县","如东县","启东市","如皋市","通州市","海门市"]);
dsy.add("0_14_6", ["市辖区", "连云区", "新浦区", "海州区","赣榆县","东海县","灌云县","灌南县"]);
dsy.add("0_14_7", ["市辖区", "清河区", "楚州区", "淮阴区","清浦区","涟水县","洪泽县","盱眙县","金湖县"]);
dsy.add("0_14_8", ["市辖区", "亭湖区", "盐都区", "响水县","滨海县","阜宁县","射阳县","建湖县","东台市","大丰市"]);
dsy.add("0_14_9", ["市辖区", "广陵区", "邗江区", "郊区","宝应县","仪征市","高邮市","江都市"]);
dsy.add("0_14_10", ["市辖区", "京口区", "润州区", "丹徒区","丹阳市","扬中市","句容市"]);
dsy.add("0_14_11", ["市辖区", "海陵区", "高港区", "兴化市","靖江市","泰兴市","姜堰市"]);
dsy.add("0_14_12", ["市辖区", "宿城区", "宿豫区", "沭阳县","泗阳县","泗洪县"]);
dsy.add("0_15", ["南昌市", "景德镇市", "萍乡市", "九江市","新余市","鹰潭市","赣州市","吉安市","宜春市","抚州市","上饶市"]);
dsy.add("0_15_0", ["市辖区", "东湖区", "西湖区", "青云谱区","湾里区","青山湖区","南昌县","新建县","安义县","进贤县"]);
dsy.add("0_15_1", ["市辖区", "昌江区", "珠山区", "浮梁县","乐平市"]);
dsy.add("0_15_2", ["市辖区", "安源区", "湘东区", "莲花县","上栗县","芦溪县"]);
dsy.add("0_15_3", ["市辖区", "庐山区", "浔阳区", "九江县","武宁县","修水县","永修县","德安县","星子县","都昌县","湖口县","彭泽县","瑞昌市"]);
dsy.add("0_15_4", ["市辖区", "渝水区", "分宜县"]);
dsy.add("0_15_5", ["市辖区", "月湖区", "余江县","贵溪市"]);
dsy.add("0_15_6", ["市辖区", "章贡区", "赣县","信丰县","大余县","上犹县","崇义县","安远县","龙南县","定南县","全南县","宁都县","于都县","兴国县","会昌县","寻乌县","石城县","瑞金市"]);
dsy.add("0_15_7", ["市辖区", "吉州区", "青原区","吉安县","吉水县","峡江县","新干县","永丰县","泰和县","遂川县","万安县","安福县","永新县","井冈山市"]);
dsy.add("0_15_8", ["市辖区", "吉州区", "青原区","吉安县","吉水县","峡江县","新干县","永丰县","泰和县","遂川县","万安县","安福县","永新县","井冈山市"]);
dsy.add("0_15_9", ["市辖区", "袁州区", "奉新县","万载县","上高县","宜丰县","靖安县","铜鼓县","丰城市","樟树市","高安市"]);
dsy.add("0_15_10", ["市辖区", "临川区", "南城县","黎川县","南丰县","崇仁县","乐安县","宜黄县","金溪县","资溪县","东乡县","广昌县"]);
dsy.add("0_15_11", ["市辖区", "信州区", "上饶县","广丰县","玉山县","铅山县","横峰县","弋阳县","余干县","鄱阳县","万年县","婺源县","德兴市"]);
dsy.add("0_16", ["沈阳市", "大连市", "鞍山市", "抚顺市","本溪市","丹东市","锦州市","营口市","阜新市","辽阳市","盘锦市","铁岭市","葫芦岛市"]);
dsy.add("0_16_0", ["市辖区", "和平区", "沈河区", "大东区","皇姑区","铁西区","苏家屯区","东陵区","新城子区","于洪区","辽中县","康平县","法库县","新民市"]);
dsy.add("0_16_1", ["市辖区","中山区","西岗区","沙河口区","甘井子区","旅顺口区","金州区","长海县","瓦房店市","普兰店市","庄河市"]);
dsy.add("0_16_2", ["市辖区","铁东区","铁西区","立山区","千山区","台安县","岫岩满族自治县","海城市"]);
dsy.add("0_16_3", ["市辖区","新抚区","东洲区","望花区","顺城区","抚顺县","新宾满族自治县","清原满族自治县"]);
dsy.add("0_16_4", ["市辖区","平山区","溪湖区","明山区","南芬区","本溪满族自治县","桓仁满族自治县"]);
dsy.add("0_16_5", ["市辖区","元宝区","振兴区","振安区","宽甸满族自治县","东港市","凤城市"]);
dsy.add("0_16_6", ["市辖区","古塔区","凌河区","太和区","黑山县","义县","凌海市","北宁市"]);
dsy.add("0_16_7", ["市辖区","站前区","西市区","鲅鱼圈区","老边区","盖州市","大石桥市"]);
dsy.add("0_16_8", ["市辖区","海州区","新邱区","太平区","清河门区","细河区","阜新蒙古族自治县","彰武县"]);
dsy.add("0_16_9", ["市辖区","白塔区","文圣区","宏伟区","弓长岭区","太子河区","辽阳县","灯塔市"]);
dsy.add("0_16_10", ["市辖区","双台子区","兴隆台区","大洼县","盘山县"]);
dsy.add("0_16_11", ["市辖区","银州区","清河区","铁岭县","西丰县","昌图县","调兵山市","开原市"]);
dsy.add("0_16_12", ["市辖区","双塔区","龙城区","朝阳县","建平县","喀喇沁左翼蒙古族自治县","北票市","凌源市"]);
dsy.add("0_16_13", ["市辖区","连山区","龙港区","南票区","绥中县","建昌县","兴城市"]);
dsy.add("0_17", ["呼和浩特市","包头市","乌海市","赤峰市","通辽市","鄂尔多斯市","呼伦贝尔市","巴彦淖尔市","乌兰察布市","兴安盟","锡林郭勒盟","阿拉善盟"]);
dsy.add("0_17_0", ["市辖区","新城区","回民区","玉泉区","赛罕区","土默特左旗","托克托县","和林格尔县","清水河县","武川县"]);
dsy.add("0_17_1", ["市辖区","东河区","昆都仑区","青山区","石拐区","白云矿区","九原区","土默特右旗","固阳县","达尔罕茂明安联合旗"]);
dsy.add("0_17_2", ["市辖区","海勃湾区","海南区","乌达区"]);
dsy.add("0_17_3", ["市辖区","红山区","元宝山区","松山区","阿鲁科尔沁旗","巴林左旗","巴林右旗","林西县","克什克腾旗","翁牛特旗","喀喇沁旗","宁城县","敖汉旗"]);
dsy.add("0_17_4", ["市辖区","科尔沁区","科尔沁左翼中旗","科尔沁左翼后旗","开鲁县","库伦旗","奈曼旗","扎鲁特旗","霍林郭勒市"]);
dsy.add("0_17_5", ["东胜区","达拉特旗","准格尔旗","鄂托克前旗","鄂托克旗","杭锦旗","乌审旗","伊金霍洛旗"]);
dsy.add("0_17_6", ["市辖区","海拉尔区","阿荣旗","莫力达瓦达斡尔族自治旗","鄂伦春自治旗","鄂温克族自治旗","陈巴尔虎旗","新巴尔虎左旗","新巴尔虎右旗","满洲里市","牙克石市","扎兰屯市","额尔古纳市","根河市"]);
dsy.add("0_17_7", ["市辖区","临河区","五原县","磴口县","乌拉特前旗","乌拉特中旗","乌拉特后旗","杭锦后旗"]);
dsy.add("0_17_8", ["市辖区","集宁区","卓资县","化德县","商都县","兴和县","凉城县","察哈尔右翼前旗","察哈尔右翼中旗","察哈尔右翼后旗","四子王旗","丰镇市"]);
dsy.add("0_17_9", ["乌兰浩特市","阿尔山市","科尔沁右翼前旗","科尔沁右翼中旗","扎赉特旗","突泉县"]);
dsy.add("0_17_10", ["二连浩特市","锡林浩特市","阿巴嘎旗","苏尼特左旗","苏尼特右旗","东乌珠穆沁旗","西乌珠穆沁旗","太仆寺旗","镶黄旗","正镶白旗","正蓝旗","多伦县"]);
dsy.add("0_17_11", ["阿拉善左旗","阿拉善右旗","额济纳旗"]);
dsy.add("0_18", ["银川市","石嘴山市","吴忠市","固原市","中卫市"]);
dsy.add("0_18_0", ["市辖区","兴庆区","西夏区","金凤区","永宁县","贺兰县","灵武市"]);
dsy.add("0_18_1", ["市辖区","大武口区","惠农区","平罗县"]);
dsy.add("0_18_2", ["市辖区","利通区","盐池县","同心县","青铜峡市"]);
dsy.add("0_18_3", ["市辖区","原州区","西吉县","隆德县","泾源县","彭阳县"]);
dsy.add("0_18_4", ["市辖区","沙坡头区","中宁县","海原县"]);
dsy.add("0_19", ["西宁市","海东地区","海北自治州","黄南自治州","海南自治州","果洛自治州","玉树自治州","海西自治州"]);
dsy.add("0_19_0", ["市辖区","城东区","城中区","城西区","城北区","大通回族土族自治县","湟中县","湟源县"]);
dsy.add("0_19_1", ["平安县","民和回族土族自治县","乐都县","互助土族自治县","化隆回族自治县","循化撒拉族自治县"]);
dsy.add("0_19_2", ["门源回族自治县","祁连县","海晏县","刚察县"]);
dsy.add("0_19_3", ["同仁县","尖扎县","泽库县","河南蒙古族自治县"]);
dsy.add("0_19_4", ["共和县","同德县","贵德县","兴海县","贵南县"]);
dsy.add("0_19_5", ["玛沁县","班玛县","甘德县","达日县","久治县","玛多县"]);
dsy.add("0_19_6", ["玉树县","杂多县","称多县","治多县","囊谦县","曲麻莱县"]);
dsy.add("0_19_7", ["格尔木市","德令哈市","乌兰县","都兰县","天峻县"]);
dsy.add("0_20", ["济南市","青岛市","淄博市","枣庄市","东营市","烟台市","潍坊市","济宁市","泰安市","威海市","日照市","临沂市","莱芜市","德州市","聊城市","滨州市","荷泽市"]);
dsy.add("0_20_0", ["市辖区","历下区","市中区","槐荫区","天桥区","历城区","长清区","平阴县","济阳县","商河县","章丘市"]);
dsy.add("0_20_1", ["市辖区","市南区","市北区","四方区","黄岛区","崂山区","李沧区","城阳区","胶州市","即墨市","平度市","胶南市","莱西市"]);
dsy.add("0_20_2", ["市辖区","淄川区","张店区","博山区","临淄区","周村区","桓台县","高青县","沂源县"]);
dsy.add("0_20_3", ["市辖区","市中区","薛城区","峄城区","台儿庄区","山亭区","滕州市"]);
dsy.add("0_20_4", ["市辖区","东营区","河口区","垦利县","利津县","广饶县"]);
dsy.add("0_20_5", ["市辖区","芝罘区","福山区","牟平区","莱山区","长岛县","龙口市","莱阳市","莱州市","蓬莱市","招远市","栖霞市","海阳市"]);
dsy.add("0_20_6", ["市辖区","潍城区","寒亭区","坊子区","奎文区","临朐县","昌乐县","青州市","诸城市","寿光市","安丘市","高密市","昌邑市"]);
dsy.add("0_20_7", ["市辖区","市中区","任城区","微山县","鱼台县","金乡县","嘉祥县","汶上县","泗水县","梁山县","曲阜市","兖州市","邹城市"]);
dsy.add("0_20_8", ["市辖区","泰山区","岱岳区","宁阳县","东平县","新泰市","肥城市"]);
dsy.add("0_20_9", ["市辖区","环翠区","文登市","荣成市","乳山市"]);
dsy.add("0_20_10", ["市辖区","东港区","岚山区","五莲县","莒县"]);
dsy.add("0_20_11", ["市辖区","兰山区","罗庄区","河东区","沂南县","郯城县","沂水县","苍山县","费县","平邑县","莒南县","蒙阴县","临沭县"]);
dsy.add("0_20_12", ["市辖区","莱城区","钢城区"]);
dsy.add("0_20_13", ["市辖区","德城区","陵县","宁津县","庆云县","临邑县","齐河县","平原县","夏津县","武城县","乐陵市","禹城市"]);
dsy.add("0_20_14", ["市辖区","东昌府区","阳谷县","莘县","茌平县","东阿县","冠县","高唐县","临清市"]);
dsy.add("0_20_15", ["市辖区","滨城区","惠民县","阳信县","无棣县","沾化县","博兴县","邹平县"]);
dsy.add("0_20_16", ["市辖区","牡丹区","曹县","单县","成武县","巨野县","郓城县","鄄城县","定陶县","东明县"]);
dsy.add("0_21", ["太原市","大同市","阳泉市","长治市","晋城市","朔州市","晋中市","运城市","忻州市","临汾市","吕梁市"]);
dsy.add("0_21_0", ["市辖区","小店区","迎泽区","杏花岭区","尖草坪区","万柏林区","晋源区","清徐县","阳曲县","娄烦县","古交市"]);
dsy.add("0_21_1", ["市辖区","城区","矿区","南郊区","新荣区","阳高县","天镇县","广灵县","灵丘县","浑源县","左云县","大同县"]);
dsy.add("0_21_2", ["市辖区","城区","矿区","郊区","平定县","盂县"]);
dsy.add("0_21_3", ["市辖区","城区","郊区","长治县","襄垣县","屯留县","平顺县","黎城县","壶关县","长子县","武乡县","沁县","沁源县","潞城市"]);
dsy.add("0_21_4", ["市辖区","朔城区","平鲁区","山阴县","应县","右玉县","怀仁县"]);
dsy.add("0_21_5", ["市辖区","榆次区","榆社县","左权县","和顺县","昔阳县","寿阳县","太谷县","祁县","平遥县","灵石县","介休市"]);
dsy.add("0_21_6", ["市辖区","盐湖区","临猗县","万荣县","闻喜县","稷山县","新绛县","绛县","垣曲县","夏县","平陆县","芮城县","永济市","河津市"]);
dsy.add("0_21_7", ["市辖区","忻府区","定襄县","五台县","代县","繁峙县","宁武县","静乐县","神池县","五寨县","岢岚县","河曲县","保德县","偏关县","原平市"]);
dsy.add("0_21_8", ["市辖区","尧都区","曲沃县","翼城县","襄汾县","洪洞县","古县","安泽县","浮山县","吉县","乡宁县","大宁县","隰县","永和县","蒲县","汾西县","侯马市","霍州市"]);
dsy.add("0_21_9", ["市辖区","离石区","文水县","交城县","兴县","临县","柳林县","石楼县","岚县","方山县","中阳县","交口县","孝义市","汾阳市"]);
dsy.add("0_22", ["西安市","铜川市","宝鸡市","咸阳市","渭南市","延安市","汉中市","榆林市","安康市","商洛市"]);
dsy.add("0_22_0", ["市辖区","新城区","碑林区","莲湖区","灞桥区","未央区","雁塔区","阎良区","临潼区","长安区","蓝田县","周至县","户县","高陵县"]);
dsy.add("0_22_1", ["市辖区","王益区","印台区","耀州区","宜君县"]);
dsy.add("0_22_2", ["市辖区","渭滨区","金台区","陈仓区","凤翔县","岐山县","扶风县","眉县","陇县","千阳县","麟游县","凤县","太白县"]);
dsy.add("0_22_3", ["市辖区","秦都区","杨凌区","渭城区","三原县","泾阳县","乾县","礼泉县","永寿县","彬县","长武县","旬邑县","淳化县","武功县","兴平市"]);
dsy.add("0_22_4", ["市辖区","临渭区","华县","潼关县","大荔县","合阳县","澄城县","蒲城县","白水县","富平县","韩城市","华阴市"]);
dsy.add("0_22_5", ["市辖区","宝塔区","延长县","延川县","子长县","安塞县","志丹县","吴旗县","甘泉县","富县","洛川县","宜川县","黄龙县","黄陵县"]);
dsy.add("0_22_6", ["市辖区","汉台区","南郑县","城固县","洋县","西乡县","勉县","宁强县","略阳县","镇巴县","留坝县","佛坪县"]);
dsy.add("0_22_7", ["市辖区","榆阳区","神木县","府谷县","横山县","靖边县","定边县","绥德县","米脂县","佳县","吴堡县","清涧县","子洲县"]);
dsy.add("0_22_8", ["市辖区","汉滨区","汉阴县","石泉县","宁陕县","紫阳县","岚皋县","平利县","镇坪县","旬阳县","白河县"]);
dsy.add("0_22_9", ["市辖区","商州区","洛南县","丹凤县","商南县","山阳县","镇安县","柞水县"]);
dsy.add("0_23", ["上海"]);
dsy.add("0_23_0", ["黄浦区","卢湾区","徐汇区","长宁区","静安区","普陀区","闸北区","虹口区","杨浦区","闵行区","宝山区","嘉定区","浦东新区","金山区","松江区","青浦区","奉贤区","崇明县"]);
dsy.add("0_24", ["成都市","自贡市","攀枝花市","泸州市","德阳市","绵阳市","广元市","遂宁市","内江市","乐山市","南充市","眉山市","宜宾市","广安市","达州市","雅安市","巴中市","资阳市","阿坝自治州","甘孜自治州","凉山自治州"]);
dsy.add("0_24_0", ["市辖区","锦江区","青羊区","金牛区","武侯区","成华区","龙泉驿区","青白江区","新都区","温江区","金堂县","双流县","郫县","大邑县","蒲江县","新津县","都江堰市","彭州市","邛崃市","崇州市"]);
dsy.add("0_24_1", ["市辖区","自流井区","贡井区","大安区","沿滩区","荣县","富顺县"]);
dsy.add("0_24_2", ["市辖区","东区","西区","仁和区","米易县","盐边县"]);
dsy.add("0_24_3", ["市辖区","江阳区","纳溪区","龙马潭区","泸县","合江县","叙永县","古蔺县"]);
dsy.add("0_24_4", ["市辖区","旌阳区","中江县","罗江县","广汉市","什邡市","绵竹市"]);
dsy.add("0_24_5", ["市辖区","涪城区","游仙区","三台县","盐亭县","安县","梓潼县","北川羌族自治县","平武县","江油市"]);
dsy.add("0_24_6", ["市辖区","市中区","元坝区","朝天区","旺苍县","青川县","剑阁县","苍溪县"]);
dsy.add("0_24_7", ["市辖区","船山区","安居区","蓬溪县","射洪县","大英县"]);
dsy.add("0_24_8", ["市辖区","市中区","东兴区","威远县","资中县","隆昌县"]);
dsy.add("0_24_9", ["市辖区","市中区","沙湾区","五通桥区","金口河区","犍为县","井研县","夹江县","沐川县","峨边彝族自治县","马边彝族自治县","峨眉山市"]);
dsy.add("0_24_10", ["市辖区","顺庆区","高坪区","嘉陵区","南部县","营山县","蓬安县","仪陇县","西充县","阆中市"]);
dsy.add("0_24_11", ["市辖区","东坡区","仁寿县","彭山县","洪雅县","丹棱县","青神县"]);
dsy.add("0_24_12", ["市辖区","广安区","岳池县","武胜县","邻水县","华莹市"]);
dsy.add("0_24_13", ["市辖区","通川区","达县","宣汉县","开江县","大竹县","渠县","万源市"]);
dsy.add("0_24_14", ["市辖区","雨城区","名山县","荥经县","汉源县","石棉县","天全县","芦山县","宝兴县"]);
dsy.add("0_24_15", ["市辖区","巴州区","通江县","南江县","平昌县"]);
dsy.add("0_24_16", ["市辖区","雁江区","安岳县","乐至县","简阳市"]);
dsy.add("0_24_17", ["汶川县","理县","茂县","松潘县","九寨沟县","金川县","小金县","黑水县","马尔康县","壤塘县","阿坝县","若尔盖县","红原县"]);
dsy.add("0_24_18", ["康定县","泸定县","丹巴县","九龙县","雅江县","道孚县","炉霍县","甘孜县","新龙县","德格县","白玉县","石渠县","色达县","理塘县","巴塘县","乡城县","稻城县","得荣县"]);
dsy.add("0_24_19", ["西昌市","木里藏族自治县","盐源县","德昌县","会理县","会东县","宁南县","普格县","布拖县","金阳县","昭觉县","喜德县","冕宁县","越西县","甘洛县","美姑县","雷波县"]);
dsy.add("0_25", ["天津辖区","天津辖县"]);
dsy.add("0_25_0", ["和平区","河东区","河西区","南开区","河北区","红桥区","塘沽区","汉沽区","大港区","东丽区","西青区","津南区","北辰区","武清区","宝坻区"]);
dsy.add("0_25_0", ["宁河县","静海县","蓟县"]);
dsy.add("0_26", ["拉萨市","昌都地区","山南地区","日喀则地区","那曲地区","阿里地区","林芝地区"]);
dsy.add("0_26_0", ["市辖区","城关区","林周县","当雄县","尼木县","曲水县","堆龙德庆县","达孜县","墨竹工卡县"]);
dsy.add("0_26_1", ["昌都县","江达县","贡觉县","类乌齐县","丁青县","察雅县","八宿县","左贡县","芒康县","洛隆县","边坝县"]);
dsy.add("0_26_2", ["乃东县","扎囊县","贡嘎县","桑日县","琼结县","曲松县","措美县","洛扎县","加查县","隆子县","错那县","浪卡子县"]);
dsy.add("0_26_3", ["日喀则市","南木林县","江孜县","定日县","萨迦县","拉孜县","昂仁县","谢通门县","白朗县","仁布县","康马县","定结县","仲巴县","亚东县","吉隆县","聂拉木县","萨嘎县","岗巴县"]);
dsy.add("0_26_4", ["那曲县","嘉黎县","比如县","聂荣县","安多县","申扎县","索县","班戈县","巴青县","尼玛县"]);
dsy.add("0_26_5", ["普兰县","札达县","噶尔县","日土县","革吉县","改则县","措勤县"]);
dsy.add("0_26_6", ["林芝县","工布江达县","米林县","墨脱县","波密县","察隅县","朗县"]);
dsy.add("0_27", ["乌鲁木齐市","克拉玛依市","吐鲁番地区","哈密地区","昌吉自治州","博尔塔拉州","巴音郭楞州","阿克苏地区","克孜勒苏州","喀什地区","和田地区","伊犁自治州","塔城地区","阿勒泰地区","新疆省辖单位"]);
dsy.add("0_27_0", ["市辖区","天山区","沙依巴克区","新市区","水磨沟区","头屯河区","达坂城区","东山区","乌鲁木齐县"]);
dsy.add("0_27_1", ["市辖区","独山子区","克拉玛依区","白碱滩区","乌尔禾区"]);
dsy.add("0_27_2", ["吐鲁番市","鄯善县","托克逊县"]);
dsy.add("0_27_3", ["哈密市","巴里坤哈萨克自治县","伊吾县"]);
dsy.add("0_27_4", ["昌吉市","阜康市","米泉市","呼图壁县","玛纳斯县","奇台县","吉木萨尔县","木垒哈萨克自治县"]);
dsy.add("0_27_5", ["博乐市","精河县","温泉县"]);
dsy.add("0_27_6", ["库尔勒市","轮台县","尉犁县","若羌县","且末县","焉耆回族自治县","和静县","和硕县","博湖县"]);
dsy.add("0_27_7", ["阿克苏市","温宿县","库车县","沙雅县","新和县","拜城县","乌什县","阿瓦提县","柯坪县"]);
dsy.add("0_27_8", ["阿图什市","阿克陶县","阿合奇县","乌恰县"]);
dsy.add("0_27_9", ["喀什市","疏附县","疏勒县","英吉沙县","泽普县","莎车县","叶城县","麦盖提县","岳普湖县","伽师县","巴楚县","塔什库尔干塔吉克自治县"]);
dsy.add("0_27_10", ["和田市","和田县","墨玉县","皮山县","洛浦县","策勒县","于田县","民丰县"]);
dsy.add("0_27_11", ["塔城市","乌苏市","额敏县","沙湾县","托里县","裕民县","和布克赛尔蒙古自治县"]);
dsy.add("0_27_12", ["阿勒泰市","布尔津县","富蕴县","福海县","哈巴河县","青河县","吉木乃县"]);
dsy.add("0_27_13", ["石河子市","阿拉尔市","图木舒克市","五家渠市"]);
dsy.add("0_28", ["昆明市","曲靖市","玉溪市","保山市","昭通市","丽江市","思茅市","临沧市","楚雄自治州","红河自治州","文山自治州","西双版纳州","大理自治州","德宏自治州","怒江傈自治州","迪庆自治州"]);
dsy.add("0_28_0", ["市辖区","五华区","盘龙区","官渡区","西山区","东川区","呈贡县","晋宁县","富民县","宜良县","石林彝族自治县","嵩明县","禄劝彝族苗族自治县","寻甸回族彝族自治县","安宁市"]);
dsy.add("0_28_1", ["市辖区","麒麟区","马龙县","陆良县","师宗县","罗平县","富源县","会泽县","沾益县","宣威市"]);
dsy.add("0_28_2", ["市辖区","红塔区","江川县","澄江县","通海县","华宁县","易门县","峨山彝族自治县","新平彝族傣族自治县","元江哈尼族彝族傣族自治县"]);
dsy.add("0_28_3", ["市辖区","隆阳区","施甸县","腾冲县","龙陵县","昌宁县"]);
dsy.add("0_28_4", ["市辖区","昭阳区","鲁甸县","巧家县","盐津县","大关县","永善县","绥江县","镇雄县","彝良县","威信县","水富县"]);
dsy.add("0_28_5", ["市辖区","古城区","玉龙纳西族自治县","永胜县","华坪县","宁蒗彝族自治县"]);
dsy.add("0_28_6", ["市辖区","翠云区","普洱哈尼族彝族自治县","墨江哈尼族自治县","景东彝族自治县","景谷傣族彝族自治县","镇沅彝族哈尼族拉祜族自治县","江城哈尼族彝族自治县","孟连傣族拉祜族佤族自治县","澜沧拉祜族自治县","西盟佤族自治县"]);
dsy.add("0_28_7", ["市辖区","临翔区","凤庆县","云县","永德县","镇康县","双江拉祜族佤族布朗族傣族自治县","耿马傣族佤族自治县","沧源佤族自治县"]);
dsy.add("0_28_8", ["楚雄市","双柏县","牟定县","南华县","姚安县","大姚县","永仁县","元谋县","武定县","禄丰县"]);
dsy.add("0_28_9", ["个旧市","开远市","蒙自县","屏边苗族自治县","建水县","石屏县","弥勒县","泸西县","元阳县","红河县","金平苗族瑶族傣族自治县","绿春县","河口瑶族自治县"]);
dsy.add("0_28_10", ["文山县","砚山县","西畴县","麻栗坡县","马关县","丘北县","广南县","富宁县"]);
dsy.add("0_28_11", ["景洪市","勐海县","勐腊县"]);
dsy.add("0_28_12", ["大理市","漾濞彝族自治县","祥云县","宾川县","弥渡县","南涧彝族自治县","巍山彝族回族自治县","永平县","云龙县","洱源县","剑川县","鹤庆县"]);
dsy.add("0_28_13", ["瑞丽市","潞西市","梁河县","盈江县","陇川县"]);
dsy.add("0_28_14", ["泸水县","福贡县","贡山独龙族怒族自治县","兰坪白族普米族自治县"]);
dsy.add("0_28_15", ["香格里拉县","德钦县","维西傈僳族自治县"]);
dsy.add("0_29", ["杭州市","宁波市","温州市","嘉兴市","湖州市","绍兴市","金华市","衢州市","舟山市","台州市","丽水市"]);
dsy.add("0_29_0", ["市辖区","上城区","下城区","江干区","拱墅区","西湖区","滨江区","萧山区","余杭区","桐庐县","淳安县","建德市","富阳市","临安市"]);
dsy.add("0_29_1", ["市辖区","海曙区","江东区","江北区","北仑区","镇海区","鄞州区","象山县","宁海县","余姚市","慈溪市","奉化市"]);
dsy.add("0_29_2", ["市辖区","鹿城区","龙湾区","瓯海区","洞头县","永嘉县","平阳县","苍南县","文成县","泰顺县","瑞安市","乐清市"]);
dsy.add("0_29_3", ["市辖区","秀城区","秀洲区","嘉善县","海盐县","海宁市","平湖市","桐乡市"]);
dsy.add("0_29_4", ["市辖区","吴兴区","南浔区","德清县","长兴县","安吉县"]);
dsy.add("0_29_5", ["市辖区","越城区","绍兴县","新昌县","诸暨市","上虞市","嵊州市"]);
dsy.add("0_29_6", ["市辖区","婺城区","金东区","武义县","浦江县","磐安县","兰溪市","义乌市","东阳市","永康市"]);
dsy.add("0_29_7", ["市辖区","柯城区","衢江区","常山县","开化县","龙游县","江山市"]);
dsy.add("0_29_8", ["市辖区","定海区","普陀区","岱山县","嵊泗县"]);
dsy.add("0_29_9", ["市辖区","椒江区","黄岩区","路桥区","玉环县","三门县","天台县","仙居县","温岭市","临海市"]);
dsy.add("0_29_10", ["市辖区","莲都区","青田县","缙云县","遂昌县","松阳县","云和县","庆元县","景宁畲族自治县","龙泉市"]);
dsy.add("0_30", ["重庆"]);
dsy.add("0_30_0", ["城口县", "大足县", "垫江县", "丰都县", "奉节县", "合川市", "江津市", "开县", "梁平县", "南川市", "彭水苗族土家族自治县", "荣昌县", "石柱土家族自治县", "铜梁县", "巫山县", "巫溪县", "武隆县", "秀山土家族苗族自治县", "永川市", "酉阳土家族苗族自治县", "云阳县", "忠县", "重庆市", "潼南县", "璧山县", "綦江县"]);
var s=["s1","s2","s3"];
var opt0 = ["省份","城市","地区"];
function setup()
{
    for(i=0;i<s.length-1;i++)
        document.getElementById(s[i]).onchange=new Function("change("+(i+1)+")");
    change(0);
}