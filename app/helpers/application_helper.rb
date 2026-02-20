module ApplicationHelper
    def logo(size='h2')
        link_to(root_path, class: "logo #{size} link-offset-2 link-offset-3-hover link-underline link-underline-opacity-0 link-underline-opacity-75-hover") do
            image_tag("logo.png", class: "logo-pic") + " SafePass"
        end
    end

    def format_time(time)
        time.strftime("%m/%d/%Y, %I:%M %p")
    end
end
