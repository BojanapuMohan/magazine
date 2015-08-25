    class RegistrationsController < Devise::RegistrationsController
      
      def subregion_options
        render partial: 'subregion_select'
      end
    end