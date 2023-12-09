module RoomsHelper
    def format_users_of_room(users)
        user_names = users.map { |user| user.name }
        current_user_name = @current_user.name if @current_user 

        if user_names.include?(current_user_name)
            user_names.delete(current_user_name)
            user_names << "You"
        end

        user_names << "No one" if user_names.empty?
        if user_names.size > 5
            "#{user_names.first(5).join(', ')}, and #{array.size - 5} more..."
        else
            user_names.join(', ')
        end
    end

    def tailwind_header_class()
        "font-light text-4xl text-theme-grey-50 underline decoration-theme-aqua decoration-wavy italic"
    end
end
