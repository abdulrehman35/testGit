module ArticlesHelper

	def render_button
		content_tag(:div) do
			content_tag(:button, "Click me", :onclick => "alert('Hello From Helper!!')")
		end
	end
end
