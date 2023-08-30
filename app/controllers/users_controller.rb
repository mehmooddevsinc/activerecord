class UsersController < ApplicationController
    def number
        render html: "<h1>You have entered numeric value</h1>".html_safe
    end

    def text
        render html: "<h1>You have entered text value</h1>".html_safe
    end
end