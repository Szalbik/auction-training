class UserAuctionsController < ApplicationController
  before_action :set_user_auction, only: [:show, :edit, :update, :destroy]

  # GET /user_auctions
  # GET /user_auctions.json
  def index
    @user_auctions = UserAuction.all
  end

  # GET /user_auctions/1
  # GET /user_auctions/1.json
  def show
  end

  # GET /user_auctions/new
  def new
    @user_auction = UserAuction.new
  end

  # GET /user_auctions/1/edit
  def edit
  end

  # POST /user_auctions
  # POST /user_auctions.json
  def create
    @user_auction = current_account.user_auctions.build(user_auction_params)

    respond_to do |format|
      if @user_auction.save
        format.html { redirect_to @user_auction, notice: 'User auction was successfully created.' }
        format.json { render :show, status: :created, location: @user_auction }
      else
        format.html { render :new }
        format.json { render json: @user_auction.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_auctions/1
  # PATCH/PUT /user_auctions/1.json
  def update
    respond_to do |format|
      if @user_auction.update(user_auction_params)
        format.html { redirect_to @user_auction, notice: 'User auction was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_auction }
      else
        format.html { render :edit }
        format.json { render json: @user_auction.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_auctions/1
  # DELETE /user_auctions/1.json
  def destroy
    @user_auction.destroy
    respond_to do |format|
      format.html { redirect_to user_auctions_url, notice: 'User auction was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_auction
      @user_auction = UserAuction.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_auction_params
      params.require(:user_auction).permit(:finished_at, :name, :description, :minimal_price, :product_id)
    end
end
