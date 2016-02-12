<%inherit file="/narrow_base.tpl"/>
<%namespace name="settings_form" file="_settings_form.tpl"/>

<%block name="title">
## Translators, used as page title
${_('Librarian settings')}
</%block>

<div class="settings">
    ${settings_form.body()}
</div>
