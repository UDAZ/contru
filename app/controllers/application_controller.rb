# frozen_string_literal: true

class ApplicationController < ActionController::Base
  before_action :set_locale

  private

  def set_locale
    I18n.locale = session[:locale] if %w[ja en].include?(session[:locale])
  end
end
