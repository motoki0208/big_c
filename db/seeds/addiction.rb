
# titles = ["劇団で子供達向けの公演をしています！",]

# summarys = ["高校時代の友人たちと立ち上げた劇団で、月に２回小学校で公演を行なっています。昔話などを扱うことが多いですがたまにオリジナルの作品も作っていて、自分が小学生のころに感じていたことや体験したことを題材にしています。高校を卒業後、服飾の学校に行っていたため小道具や衣装などは全て手作りです⭐︎毎週出来上がった小道具たちを持ち寄って練習をするのが楽しいです♪",]
# addicted_points = ["・子供達から面白かった！と言ってもらえるとき
# ・自分の作った衣装や小道具に興味を持ってもらえたとき"]
# difficult_points = ["オリジナルの話を考えるときに誰も傷つかないような内容になるように気をつけています。見にきてくれた子全員が楽しくなるような劇団にしたいと思っています！"]
# triggers = ["服飾の学校へ行っていたとき、同じサークルの先輩が劇団で同じような活動をしていて、その公演を観に行ったことがきっかけです。"]
# future_aims = ["・全国の小学校で公演する！
# ・オリジナルの作品を100本つくる！"]
# trying_things = ["児童向けの本をたくさん読むようにしています"]
# messages = ["私は昔から本が大好きで、辛いこと悲しいことがあったときはつらいことにめげずに戦っている本の主人公を思い出します。"]


addiction_imgs = ["addiction_img1.jpg","addiction_img2.jpg","addiction_img3.jpg","addiction_img4.jpg","addiction_img5.jpg","addiction_img6.jpg","addiction_img7.jpg","addiction_img8.jpg","addiction_img9.jpg"]
star_c = Star.count



star_c.times do |i|
  i += 1
  @star = Star.find(i)
  Addiction.create(
    image: addiction_imgs[rand(0..8)],
    title: @star.occupation.name,
    summary: "#{@star.occupation.name}の仕事は、毎日〇〇や△△をします。とくに〇〇はとてもやりがいのある仕事です！",
    addicted_points: "・×××××なところ\n・××××××なところ",
    difficult_points: "・×××××なところ\n・××××××なところ",
    trigger: "「●●●」という#{@star.occupation.name}をテーマにしたドラマをみて、純粋にかっこいい！と思ったことがきっかけです。",
    future_aim: "☆☆☆をやりたい！",
    trying_things: "#{@star.occupation.name}に関する資格の勉強",
    message: "私は〇〇があまり得意ではなくて、自分がやっていることにいつも自信がありませんでした。でも、#{@star.occupation.name}という仕事は、〇〇が得意でなくても人から頼りにされて感謝されることでやりがいと自信を持つことができます。そういった仕事は#{@star.occupation.name}だけでなく世の中にたくさんあるので、興味がわいたらぜひ調べてみてください☆",
    status: 0,
    star_id: i
  )
end
