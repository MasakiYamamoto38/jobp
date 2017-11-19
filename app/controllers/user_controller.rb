class UserController < ApplicationController
  def index
  #coms - 企業データ
  #hitorys[企業id][任意の番号]で進捗データの取得ができる
  #coms[企業id]の中に必要な情報が全て入っている

    @coms = Company.where("id = not ?", nil)
    @historys = Array.new(@coms.length)

    for i in 0..@coms.length

      #i = 企業idとなるように調べて代入
      @com = nil
      for j in  0..@coms.length
        if @coms[j].id == i then
          @com = @coms[j]
        end
      end

      @progs = Progress.find_by(com_id:@com.id)#この会社に対する進捗を取得
      @historys[i] = @progs#Array.new(@progs.length)
    end#この
  end

  def addcom

  end
end
