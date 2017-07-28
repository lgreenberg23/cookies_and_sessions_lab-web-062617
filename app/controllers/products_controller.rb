require 'byebug'

class ProductsController < ApplicationController

	def index 
		cart
	end

	def new
		@product = params[:product]
	end

	def create
		  # Get the item from the form
		 # byebug
		@product = params[:product]
		@cart = session[:cart]
		if @cart == nil
			@cart = []
		end
		  # Load the cart from the session, or create a new empty cart.
		@cart << @product
		 
		  # Save the cart in the session.
		session[:cart] = @cart
		redirect_to products_path
	end




end