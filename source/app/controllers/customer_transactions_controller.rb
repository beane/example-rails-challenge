class CustomerTransactionsController < ApplicationController
  before_action :set_customer_transaction, only: [:show, :edit, :update, :destroy]

  # GET /customer_transactions
  # GET /customer_transactions.json
  def index
    @customer_transactions = CustomerTransaction.all
  end

  # GET /customer_transactions/1
  # GET /customer_transactions/1.json
  def show
  end

  # GET /customer_transactions/new
  def new
    @customer_transaction = CustomerTransaction.new
  end

  # GET /customer_transactions/1/edit
  def edit
  end

  # POST /customer_transactions
  # POST /customer_transactions.json
  def create
    @customer_transaction = CustomerTransaction.new(customer_transaction_params)

    respond_to do |format|
      if @customer_transaction.save
        format.html { redirect_to @customer_transaction, notice: 'Customer transaction was successfully created.' }
        format.json { render :show, status: :created, location: @customer_transaction }
      else
        format.html { render :new }
        format.json { render json: @customer_transaction.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /customer_transactions/1
  # PATCH/PUT /customer_transactions/1.json
  def update
    respond_to do |format|
      if @customer_transaction.update(customer_transaction_params)
        format.html { redirect_to @customer_transaction, notice: 'Customer transaction was successfully updated.' }
        format.json { render :show, status: :ok, location: @customer_transaction }
      else
        format.html { render :edit }
        format.json { render json: @customer_transaction.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /customer_transactions/1
  # DELETE /customer_transactions/1.json
  def destroy
    @customer_transaction.destroy
    respond_to do |format|
      format.html { redirect_to customer_transactions_url, notice: 'Customer transaction was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_customer_transaction
      @customer_transaction = CustomerTransaction.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def customer_transaction_params
      params.require(:customer_transaction).permit(:transaction_time, :amount, :unique_code, :paid, :refunded)
    end
end
