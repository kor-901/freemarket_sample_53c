class CreditcardsController < ApplicationController

  def create
    @creditcard = Creditcard.new(credit_number: creditcard_params[:credit_number],
                                    limit_month: creditcard_params[:limit_month], 
                                    limit_year: creditcard_params[:limit_year],
                                    security_number: creditcard_params[:security_number],
                                    user_id: creditcard_params[:user_id])
    if @creditcard.save
      redirect_to "/users/#{current_user.id}/show_creditcard", notice: 'クレジットカードを登録しました'
    else
      redirect_to "/users/#{current_user.id}/new_creditcard", alert: '入力情報に間違いがあります'
    end
  end


  def destroy
    @creditcard = Creditcard.find(params[:id])
    @creditcard.destroy
    redirect_to "/users/#{current_user.id}/show_creditcard", notice: 'クレジットカード情報を削除しました'
  end

  private
  def creditcard_params
    params.permit(:credit_number, :limit_month, :limit_year, :security_number, :user_id)
  end

end

