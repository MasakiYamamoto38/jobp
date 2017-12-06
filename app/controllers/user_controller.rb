class UserController < ApplicationController
  def index
  #coms - 企業データ
  #hitorys[企業id][任意の番号]で進捗データの取得ができる
  #coms[任意番号]の中に必要な情報が全て入っている

  @coms = Company.all
    # @coms = Company.where("", nil)
  #   @historys = Array.new(@coms.length)
  #
  #   for i in 0..@coms.length
  #
  #     #i = 企業idとなるように調べて代入
  #     @com = nil
  #
  #     for j in  0..@coms.length - 1
  #       if @coms[j].id == i then
  #         @com = @coms[j]
  #       end
  #     end
  #
  #     @progs
  #     #1件以上履歴があれば代入する
  #     if Progress.nil? then
  #       @progs = Progress.where("com_id = " + @com.id)#この会社に対する進捗を取得
  #       @historys[i] = @progs
  #     end
  #
  #   end
  #
  end

  def addcom_get

    #get
  end

  def addcom_post
    @com = Company.new
    @com.name = params[:company][:name]#:companyってどこ？
    @com.memo = params[:company][:memo]
    @com.address = params[:company][:address]
    @com.url1 = params[:company][:url1]
    @com.url2 = params[:company][:url2]
    @com.save!

    redirect_to '/user/index'
  end

  def addprogress_get
    @com = Company.find(params[:com_id])
  end

  def addprogress_post
    @pg = Progress.new
    @pg.company_id = params[:com_id]
    @pg.name = params[:progress][:name]
    @pg.is_compleate = params[:progress][:is_compleate]
    @pg.save!

    redirect_to '/user/index'

  end
end
