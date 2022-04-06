module Auth extend ActiveSupport::Concern
  class_methods do
    def auth(only: [], except: [])
      http_basic_authenticate_with name: ENV['SALE_USERNAME'], password: ENV['SALE_PASSWORD'], only: only, except: except
    end
  end
end
