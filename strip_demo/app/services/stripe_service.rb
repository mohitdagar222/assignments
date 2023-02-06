class StripeService
	require 'stripe'
  def initialize(customer)
		@customer = customer
		Stripe.api_key = ENV['STRIPE_SECRET_KEY']
	end
	def process!
		if @customer.stripe_customer_id.present?
			stripe_customer = Stripe::Customer.retrieve(@customer.stripe_customer_id)
		else
			stripe_customer = Stripe::Customer.create({
				name: @customer.name,
				email: @customer.email,
				phone: @customer.contact
			})
			@customer.update(stripe_customer_id: stripe_customer.id)
		end
		card_params = {card_number: "5555555555554444", exp_month: 12, exp_year: 2024, cvv: "1112"}
		card = create_stripe_customer_card(card_params, stripe_customer)
		debugger
		amount_to_be_paid = 2000
		stripe_customer_id = stripe_customer.id
		card_id = card.id
		create_stripe_charge(amount_to_be_paid, stripe_customer_id, card_id)
	end

	def create_card_token(params)
		Stripe::Token.create({
			card: {
				number: params[:card_number],
				exp_month: params[:exp_month],
				exp_year: params[:exp_year],
				cvc: params[:cvv],
			},
		})
	end

	def create_stripe_customer_card(params, stripe_customer)
		token = create_card_token(params)
		Stripe::Customer.create_source(
			stripe_customer.id,
			{source: token.id},
		)
	end

	def create_stripe_charge(amount_to_be_paid, stripe_customer_id, card_id)
		Stripe::Charge.create({
			amount: amount_to_be_paid * 100,
			currency: 'usd',
			source: card_id,
			customer: stripe_customer_id,
			description: "Amount $#{amount_to_be_paid} charged for transcription",
		})
	end
end