module Kuby
  class Link
    module PausedMethods
      PAUSE_STATES = [:not_paused, :flight_paused, :out_of_power, :antenna_disabled, :vessel_wo_antenna, :unknown_pause_state].freeze

      def paused?
        pause_value > 0
      end

      def pause_state
        PAUSE_STATES[pause_value]
      end

      private

      def pause_value
        api_get(API_MAP[:pause_value]).to_i
      end
    end
  end
end
