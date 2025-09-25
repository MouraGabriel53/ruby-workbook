class VehiclesController < ApplicationController
    # Estabelecendo hooks
    # before_action :fecth_vehicle -> chama a função fecth_vehicle antes de chamar os endpoints. Isso se aplica a todas as funções
    before_action fecth_vehicle, only: %i[ show edit update destroy ]

    def index
      @vehicles = Vehicle.all.order(created_at: :asc)
    end

    def new
      # Cria o schema dos campos e tipos dos atributos em memória, armazena em @vehicle
      @vehicle = Vehicle.new
    end

    def create
      # @vehicle = Vehicle.new(params[:vehicle]) -> não pode passar os parâmetros direto por segurança devem ser verificados
      @vehicle = Vehicle.new(vehicle_params)

      # Guard Clauses - Método top - Erre cedo (early return)

      return redirect_to vehicle_path(@vehicle) if @vehicle.save

      render :new

      # Método simplificado (Juninho)

      # @vehicle.save ? redirect_to(vehicle_path(@vehicle)) : render(:new)

      # Método Estagiário

      # if @vehicle.save
      #     # Redireciona para o path do show passando o @vehicle
      #     redirect_to vehicle_path(@vehicle)
      # else
      #     # Nesse caso carrega apenas o front do New, mas se baseia na variável @vehicle desse escopo
      #     # Persistes os dados anteriores, mesmo ao regarregar o front denovo
      #     render :new
      # end
    end

    def show
      # Pega o :id do @vehicle que eu passei pelo create
      # @vehicle = Vehicle.find(params[:id])
    end

    def edit
      # @vehicle = Vehicle.find(params[:id])
    end

    def update
      # @vehicle = Vehicle.find(params[:id])
      return redirect_to vehicle_path(@vehicle) if @vehicle.update(vehicle_params)
      # Deixa a linha vazia aqui meo, num tira naum
      render :edit
    end

    def destroy
      # @vehicle = Vehicle.find(params[:id])
      @vehicle.destroy
      redirect_to vehicles_path
    end

    # Funções que tratam os parâmetros recebidos
    private

    # Padrão de nomenclatura <nome_parâmetro_singular>_params
    def vehicle_params # strong parameters
      params.require(:vehicle).permit(:brand, :model, :year)
    end

    # Aplicando DRY (Don't Repeat Yourself)
    def fecth_vehicle
      @vehicle = Vehicle.find(params[:id])
    end
end
# Terminar com uma linha vazia sempre. Programas antigos utilizavam a última linha para entender que o programa acabaou
