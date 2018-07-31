
addiction_imgs = ["addiction_img1.jpg","addiction_img2.jpg","addiction_img3.jpg","addiction_img4.jpg"]
star_c = Star.count



star_c.times do |i|
  i += 1
  @star = Star.find(i)
  Addiction.create(
    image: addiction_imgs[rand(0..3)],
    title: @star.occupation.name,
    summary: "ラジオの魅力は、距離感と想像力じゃないでしょうか。ラジオにしかない距離感って絶対あると思うし、生放送にしかない距離感もあると思っています。それから、映像がないことの贅沢さ。みんなそれぞれに想像があって、それぞれのラジオが生まれていく。そんなことが、この前の夏フェス企画で実感することができた。リスナー同士のやり取りがメールでどんどん繋がって、企画を楽しんでくれているのが伝わってすごく面白かった。
    ラジオでしかできない遊び方があって、みんなちゃんと遊び方を知ってることが素晴らしいし、ラジオの未来は明るいなと思いました。",
    addicted_points: "リスナーさんとメールやハガキで面白いやりとりができること",
    difficult_points: "常にラジオで喋るネタを考えなければいけないこと",
    trigger: "中学、高校時代の6年間によく聴いていました。深夜の2時間番組を録音して、翌日にカセットテープで聴きながら通学するのが恒例。関根さんと小堺さんの番組が一番好きで、電車やバスの中で笑いを噛み殺しながら聴いてました。人を傷つけないおふたりの笑いが好きで。僕自身、ルサンチマンを抱えているような少年だったけど、そんな鬱憤みたいなのを毒々しい笑いで打ち消すんじゃなくて、楽しく忘れさせてくれるっていう。そんな感じが気持ちよくて大好きでした。",
    future_aim: "夏フェスの企画をやりたい！",
    trying_things: "ボイストレーニング",
    message: "とにかく楽しい場所にしたいと思っているので、ぜひ聴いていただきたいです。企画も面白いことをこれからもたくさん考えているので、まだ聴いたことないという方にもチェックしてほしいです。いつも聴いてくれている人は、一生聴いて下さい(笑)。",
    status: 0,
    star_id: i
  )
end

# # 星野源
#   Addiction.create(
#     image: "https://img.barks.jp/image/review/1000121850/h1.jpg",
#     title: "ラジオのパーソナリティ",
#     summary: "ラジオの魅力は、距離感と想像力じゃないでしょうか。ラジオにしかない距離感って絶対あると思うし、生放送にしかない距離感もあると思っています。それから、映像がないことの贅沢さ。みんなそれぞれに想像があって、それぞれのラジオが生まれていく。そんなことが、この前の夏フェス企画で実感することができた。リスナー同士のやり取りがメールでどんどん繋がって、企画を楽しんでくれているのが伝わってすごく面白かった。
#     ラジオでしかできない遊び方があって、みんなちゃんと遊び方を知ってることが素晴らしいし、ラジオの未来は明るいなと思いました。",
#     addicted_points: "リスナーさんとメールやハガキで面白いやりとりができること",
#     difficult_points: "常にラジオで喋るネタを考えなければいけないこと",
#     trigger: "中学、高校時代の6年間によく聴いていました。深夜の2時間番組を録音して、翌日にカセットテープで聴きながら通学するのが恒例。関根さんと小堺さんの番組が一番好きで、電車やバスの中で笑いを噛み殺しながら聴いてました。人を傷つけないおふたりの笑いが好きで。僕自身、ルサンチマンを抱えているような少年だったけど、そんな鬱憤みたいなのを毒々しい笑いで打ち消すんじゃなくて、楽しく忘れさせてくれるっていう。そんな感じが気持ちよくて大好きでした。",
#     future_aim: "夏フェスの企画をやりたい！",
#     trying_things: "ボイストレーニング",
#     message: "とにかく楽しい場所にしたいと思っているので、ぜひ聴いていただきたいです。企画も面白いことをこれからもたくさん考えているので、まだ聴いたことないという方にもチェックしてほしいです。いつも聴いてくれている人は、一生聴いて下さい(笑)。",
#     status: 0,
#     star_id: 1
#   )
