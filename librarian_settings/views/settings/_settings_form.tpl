<%namespace name="forms" file="/ui/forms.tpl"/>

${forms.form_errors([form.error]) if form.error else ''}
<% form_fields = form.fields %>
% for group_name, group_label in groups:
    <div class="group group-${group_name}">
        <h4>${group_label}</h4>
        % for field_name, field in form_fields.items():
            % if field_name.startswith(group_name):
                ${forms.field(field)}
            % endif
        % endfor
    </div>
% endfor 
<p class="buttons">
    <button type="submit" class="primary"><span class="icon"></span> ${_('Save')}</button>
</p>
