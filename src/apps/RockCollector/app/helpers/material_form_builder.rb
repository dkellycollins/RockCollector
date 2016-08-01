class MaterialFormBuilder < ActionView::Helpers::FormBuilder

  def label(label, *args)
    @template.content_tag("label",
                          label.to_s.humanize,
                          :for => "#{@object_name}_#{label}",
                          class: 'mdl-textfield__label')
  end

  def text_field(label, *args)
    @template.content_tag("div",
      super(label, class: 'mdl-textfield__input') +
        label(label, *args),
      class: 'mdl-textfield mdl-js-textfield mdl-textfield--floating-label')
  end

  def text_area(label, *args)
    @template.content_tag("div",
      super(label, class: 'mdl-textfield__input') +
        label(label, *args),
      class: 'mdl-textfield mdl-js-textfield mdl-textfield--floating-label')
  end

  def submit(value = nil, options = {})
    if options[:class].nil?
      options[:class] = 'mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-button--accent'
    end

    super
  end

end