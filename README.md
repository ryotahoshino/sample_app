# fishing-my-life_App

"fishing-my-life_App" は仲間内だけで釣果情報を共有していくための画像投稿アプリケーションです。

# DEMO

# Features

差別化している点としては、投稿の削除機能を入れていないということです。

なぜ、入れていないかと言いますと、身内間での情報共有を行うことを目的としている画像投稿アプリなので、編集機能だけあれば、逐一投稿を削除せず、情報を更新することができるのではと考えたからです。

このアプリを作ろうとした背景としては、大学1年生の時の友人と作った非公認の釣りサークル"fishing-my-life"で、画像や情報を共有する時になるべく場所がバレてしまい、近隣の住民、釣り人に対して迷惑が掛からず、尚且つ情報がわかりやすく共有することができるアプリが必要なのではないかと考えたからです。

# Requirement

rails 6.0.3
devise
refile
refile-mini_magick
bulma-rails 0.9.1

全て、コンソールからGemfileに書き込み、bundle installします。

注意点
・同じ人は再度登録はできないようになっています。
・画像のpxの問題で多少画像が歪む可能性があります。

# Author
作成者 ryotahoshino
E-mail ryota240833@gmail.com

# License
特にはないです。