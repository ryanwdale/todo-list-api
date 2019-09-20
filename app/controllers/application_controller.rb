class ApplicationController < ActionController::API
    include Response
    include ExceptionHandler
    before_action :authorize_request
    attr_reader :current_user
    # after_action :cors_set_access_control_headers
    cache_classes=true

    def route_options
        cors_preflight_check
    end

    private 

    def authorize_request
        @current_user = (AuthorizeApiRequest.new(request.headers).call)[:user]
    end    

    # def cors_set_access_control_headers
    #     response.headers['Access-Control-Allow-Origin'] = '*'
    #     response.headers['Access-Control-Allow-Methods'] = 'POST, GET, PUT, PATCH, DELETE, OPTIONS'
    #     response.headers['Access-Control-Allow-Headers'] = 'Origin, Content-Type, Accept, Authorization, Token, Auth-Token, Email'
    #     response.headers['Access-Control-Max-Age'] = "1728000"
    # end
         
    # def cors_preflight_check
    #     if request.method == 'OPTIONS'
    #       request.headers['Access-Control-Allow-Origin'] = '*'
    #       request.headers['Access-Control-Allow-Methods'] = 'POST, GET, PUT, PATCH, DELETE, OPTIONS'
    #       request.headers['Access-Control-Allow-Headers'] = 'X-Requested-With, X-Prototype-Version, Token, Auth-Token, Email'
    #       request.headers['Access-Control-Max-Age'] = '1728000'  
    #       render :text => '', :content_type => 'text/plain'
    #     end  
    # end
end
