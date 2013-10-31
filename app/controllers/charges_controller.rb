class ChargesController < ApplicationController
	def new
	end

	def create
	  # Amount in cents
	  @amount = Fund.last.dollars * 100

	  customer = Stripe::Customer.create(
	    :email => Fund.last.email,
	    :card  => params[:stripeToken]
	  )

	  charge = Stripe::Charge.create(
	    :customer    => customer.id,
	    :amount      => @amount,
	    :description => 'Rails Stripe customer',
	    :currency    => 'usd'
	  )

	rescue Stripe::CardError => e
	  flash[:error] = e.message
	  redirect_to charges_path
	end
end
