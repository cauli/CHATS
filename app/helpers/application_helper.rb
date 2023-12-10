module ApplicationHelper
    def random_wavy_decorations(n)
        spans = []
        n.times do
          top = rand(90)
          left = rand(90)
          spans << content_tag(:span, "   ", class: "text-4xl absolute underline decoration-theme-aqua/40 decoration-wavy", style: "top: #{top}%; left: #{left}%")
        end
        spans.join.html_safe
      end
end
