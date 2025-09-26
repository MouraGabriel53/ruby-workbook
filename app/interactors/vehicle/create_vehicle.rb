module Vehicle
    class CreateVehicle
      def self.call(vehicle)
        # Regras de Negócio
        return { success: false } unless vehicle.save

        { success: true }
      end
    end
end
