class BidsController < ApplicationController
  before_action :set_bid, only: [:show, :edit, :update, :destroy]
  before_action :set_auction

  # GET /bids
  # GET /bids.json
  def index
    @bids = @auction.bids
  end

  # GET /bids/1
  # GET /bids/1.json
  def show    
  end

  # GET /bids/new
  def new
    @bid = Bid.new
  end

  # GET /bids/1/edit
  def edit
  end

  # POST /bids
  # POST /bids.json
  def create
    @bid = Bid.new(bid_params)
    @bid.account = current_account
    @bid.user_auction = @auction

    respond_to do |format|
      if @bid.save
        format.html { redirect_to user_auction_path(@auction), notice: 'Bid was successfully created.' }
        format.json { render :show, status: :created, location: @bid }
      else
        format.html { render :new, user_auction_id: @auction.id }
        format.json { render json: @bid.errors, status: :unprocessable_entity }
      end
    end
  rescue  ActiveRecord::StatementInvalid => e
    
    binding.pry
    
    if e.message =~ /is lower than maximum amount/
      @bid.errors.add(:amount, e.message)
      render :new, user_auction_id: @auction.id
    else
      raise e
    end
  end

  # PATCH/PUT /bids/1
  # PATCH/PUT /bids/1.json
  def update
    respond_to do |format|
      if @bid.update(bid_params)
        format.html { redirect_to @bid, notice: 'Bid was successfully updated.' }
        format.json { render :show, status: :ok, location: @bid }
      else
        format.html { render :edit }
        format.json { render json: @bid.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bids/1
  # DELETE /bids/1.json
  def destroy
    @bid.destroy
    respond_to do |format|
      format.html { redirect_to bids_url, notice: 'Bid was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bid
      @bid = Bid.find(params[:id])
    end

    def set_auction
      @auction = UserAuction.find(params[:user_auction_id])
    end

    # Only allow a list of trusted parameters through.
    def bid_params
      params.require(:bid).permit(:amount, :user_auction_id)
    end
end
