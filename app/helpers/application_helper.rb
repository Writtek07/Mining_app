module ApplicationHelper
    def get_username(email)
        email.split(/@/).first
    end
end
