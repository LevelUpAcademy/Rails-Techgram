class PagesController < ApplicationController
  # Ao acessar qualquer action desta controller
  # o devise ira verificar se o usuario esta
  # logado, se não estiver logado, o usuario
  # sera redirecionado para a pagina de login
  before_action :authenticate_user!

  def home
  end

  def post
  end

end
