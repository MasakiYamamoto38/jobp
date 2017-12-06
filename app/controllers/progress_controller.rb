class ProgressController < ApplicationController
  def edit
    prg_id = params[:prg_id]
    @prg = Progress.find(prg_id)

  end

  def update

    prg = Progress.find(params[:prg_id])
    prg.name = params[:progress][:name]
    prg.is_compleate = params[:progress][:is_compleate]
    prg.save!

    redirect_to '/user/index'
  end

  def destroy

    redirect_to '/user/index'
  end
end
