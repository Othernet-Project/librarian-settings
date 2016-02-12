<%namespace name="forms" file="/ui/forms.tpl"/>

${h.form('post', action=i18n_url('settings:save'), tabindex=1)}
    ${forms.form_errors([form.error]) if form.error else ''}
    <% form_fields = form.fields %>
    % for group_name, group_label in groups:
        <h4>${group_label}</h4>
        % for field_name, field in form_fields.items():
            % if field_name.startswith(group_name):
                ${forms.field(field)}
            % endif
        % endfor
    % endfor 
    <p class="buttons">
        <button type="submit" class="primary"><span class="icon"></span> ${_('Save')}</button>
    </p>
</form>
