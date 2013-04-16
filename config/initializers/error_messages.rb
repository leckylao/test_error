ActionView::Base.field_error_proc = Proc.new do |html_tag, instance|
  Rails.logger.debug "==============="
  Rails.logger.debug html_tag
  Rails.logger.debug "==============="
  if instance.class == ActionView::Helpers::Tags::Label
    html_tag
  else
    errors = Array(instance.error_message).join(',')
    %(<div class="control-group error">#{html_tag}<span class="help-inline">&nbsp;#{errors}</span></div>).html_safe
  end
end
