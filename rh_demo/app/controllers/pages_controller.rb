class PagesController < ApplicationController
  def multi_form_page
  end

  def process_forms
    redirect_to multi_form_page_path
  end
end
