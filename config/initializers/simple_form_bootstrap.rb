# Use this setup block to configure all options available in SimpleForm.
SimpleForm.setup do |config|
  config.wrappers :bootstrap, tag: 'div', class: 'form-group', error_class: 'has-error' do |b|
    b.use :html5
    # b.use :min_max
    # b.use :maxlength
    b.use :placeholder


    b.optional :pattern
    b.optional :readonly

    b.use :label
    b.wrapper tag: 'div', class: 'col-sm-9 ' do |ba|
      ba.use :input
      ba.use :error, wrap_with: { tag: 'p', class: 'form-control-feedback help-inline' }
      ba.use :hint,  wrap_with: { tag: 'p', class: 'help-block' }
    end
  end

  config.wrappers :b3_7_5 , tag: 'div', class: 'form-group', error_class: 'has-error' do |b|
    b.use :html5
    b.use :placeholder
    b.wrapper tag: 'label', class: 'select optional control-label col-sm-7' do |ba| 
      ba.use :label_text
    end
    b.wrapper tag: 'div', class: 'col-sm-5 ' do |ba|
      ba.use :input
      ba.use :error, wrap_with: { tag: 'p', class: 'form-control-feedback help-inline' }
      ba.use :hint,  wrap_with: { tag: 'p', class: 'help-block' }
    end
  end

  config.wrappers :b3_9_3 , tag: 'div', class: 'form-group', error_class: 'has-error' do |b|
    b.use :html5
    b.use :placeholder
    b.wrapper tag: 'label', class: 'select optional control-label col-sm-7' do |ba| 
      ba.use :label_text
    end
    b.wrapper tag: 'div', class: 'col-sm-5 ' do |ba|
      ba.use :input
      ba.use :error, wrap_with: { tag: 'p', class: 'form-control-feedback help-inline' }
      ba.use :hint,  wrap_with: { tag: 'p', class: 'help-block' }
    end
  end

  config.wrappers :prepend, tag: 'div', class: "form-group", error_class: 'has-error' do |b|
    b.use :html5
    b.use :placeholder
    b.use :label
    b.wrapper tag: 'div', class: 'col-xs-9 ' do |input|
      input.wrapper tag: 'div', class: 'input-group' do |prepend|
        prepend.use :input
      end
      input.use :hint,  wrap_with: { tag: 'span', class: 'help-block' }
      input.use :error, wrap_with: { tag: 'span', class: 'help-inline' }
    end
  end

  config.wrappers :append, tag: 'div', class: "form-group", error_class: 'error' do |b|
    b.use :html5
    b.use :placeholder
    b.use :label
    b.wrapper tag: 'div', class: 'col-xs-9 ' do |input|
      input.wrapper tag: 'div', class: 'input-group' do |append|
        append.use :input
      end
      input.use :hint,  wrap_with: { tag: 'span', class: 'help-block' }
      input.use :error, wrap_with: { tag: 'span', class: 'help-inline' }
    end
  end

  # Wrappers for forms and inputs using the Twitter Bootstrap toolkit.
  # Check the Bootstrap docs (http://twitter.github.com/bootstrap)
  # to learn about the different styles for forms and inputs,
  # buttons and other elements.
  config.default_wrapper = :bootstrap
end
