class CustomFormBuilder < ActionView::Helpers::FormBuilder
  def field_error(attribute)
    if self.object.errors[attribute].any?
      @template.content_tag :div, "#{attribute} #{self.object.errors[attribute].first}" , class: 'alert alert-danger my-2'
    end
  end
end