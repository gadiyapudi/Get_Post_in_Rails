class ActionsController < ApplicationController
    def index
        render json: Action.all
    end

    def create
        res=Action.create(user_params)
        tamount=res.Amount + (res.Amount * res.Tax)/100
        res.update(:TotalAmount => tamount)
        render json: res
        
    end

    def user_params
        params.permit(:VendorName, :InvoiceNumber, :PurchaseOrder, :InvoiceDate, :PayementDueDate, :Amount,:Tax,:TotalAmount, :image)
    end
end
