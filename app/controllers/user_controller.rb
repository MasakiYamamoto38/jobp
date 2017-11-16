class UserController < ApplicationController
  def index
  #coms - 企業データ
  #hitorys[企業id][任意の番号]で進捗データの取得ができる
  #coms[企業id]の中に必要な情報が全て入っている

    @coms = Company.find_by()
    #ここは間違ってると思う
    @historys = Array.new(@coms.length)#あともう一次元作る
    for i in 0..@coms.length
      @com = @coms(i)
      @history_buf = Progress.find_by(com_id:i)#１社ごと複数の
      @historys[i] = Array.new(history_buf.length)
      #historysの２次元目に値を入れ込む
      for j in 0..history_buf.length
        @historys[i][j] = @history_buf[j]
      end

    end

  end

  def addcom

  end
end
