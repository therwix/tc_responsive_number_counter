prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- Oracle APEX export file
--
-- You should run this script using a SQL client connected to the database as
-- the owner (parsing schema) of the application or as a database user with the
-- APEX_ADMINISTRATOR_ROLE role.
--
-- This export file has been automatically generated. Modifying this file is not
-- supported by Oracle and can lead to unexpected application and/or instance
-- behavior now or in the future.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_imp.import_begin (
 p_version_yyyy_mm_dd=>'2023.04.28'
,p_release=>'23.1.5'
,p_default_workspace_id=>8557124231476590
,p_default_application_id=>112
,p_default_id_offset=>0
,p_default_owner=>'DEMO'
);
end;
/
 
prompt APPLICATION 112 - Template Component
--
-- Application Export:
--   Application:     112
--   Name:            Template Component
--   Date and Time:   09:48 Thursday December 14, 2023
--   Exported By:     DEMO
--   Flashback:       0
--   Export Type:     Component Export
--   Manifest
--     PLUGIN: 26826776401374968
--   Manifest End
--   Version:         23.1.5
--   Instance ID:     8556941343457231
--

begin
  -- replace components
  wwv_flow_imp.g_mode := 'REPLACE';
end;
/
prompt --application/shared_components/plugins/template_component/responsive_number_counting
begin
wwv_flow_imp_shared.create_plugin(
 p_id=>wwv_flow_imp.id(26826776401374968)
,p_plugin_type=>'TEMPLATE COMPONENT'
,p_theme_id=>nvl(wwv_flow_application_install.get_theme_id, '')
,p_name=>'DE.THERWIX.RESPONSIVE_NUMBER_COUNTER'
,p_display_name=>'Responsive Number Counting'
,p_supported_component_types=>'PARTIAL:REPORT'
,p_javascript_file_urls=>'#PLUGIN_FILES#responsive_counter#MIN#.js'
,p_css_file_urls=>'#PLUGIN_FILES#responsive_counter#MIN#.css'
,p_partial_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'{if APEX$IS_LAZY_LOADING/}',
'  <div></div>',
'{else/}',
'    <div class="tc_col"> ',
'        <span class="tc_icon #ICON# fa-5x"></span>',
'        <h2 data-max="#VALUE#">+ #TEXT#</h2>',
'    </div>',
'{endif/}'))
,p_default_escape_mode=>'HTML'
,p_translate_this_template=>false
,p_api_version=>2
,p_report_body_template=>'<div class="tc_div">#APEX$ROWS#</div>'
,p_report_row_template=>'<div class="tc_row" #APEX$ROW_IDENTIFICATION#>#APEX$PARTIAL#</div>'
,p_report_placeholder_count=>3
,p_substitute_attributes=>true
,p_subscribe_plugin_settings=>true
,p_version_identifier=>'1.0'
,p_files_version=>11
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(26827055572374995)
,p_plugin_id=>wwv_flow_imp.id(26826776401374968)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_static_id=>'ICON'
,p_prompt=>'Icon'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>false
,p_escape_mode=>'HTML'
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(26827495087374996)
,p_plugin_id=>wwv_flow_imp.id(26826776401374968)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_static_id=>'TEXT'
,p_prompt=>'Text'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>false
,p_escape_mode=>'HTML'
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(26827872378374997)
,p_plugin_id=>wwv_flow_imp.id(26826776401374968)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>3
,p_display_sequence=>30
,p_static_id=>'VALUE'
,p_prompt=>'Value'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>false
,p_escape_mode=>'HTML'
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
);
end;
/
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '2E74635F69636F6E207B0A2020636F6C6F723A207465616C3B0A7D0A0A2E74635F646976207B0A2020646973706C61793A20666C65783B202020200A2020666C65782D646972656374696F6E3A20726F773B0A2020666C65782D777261703A2077726170';
wwv_flow_imp.g_varchar2_table(2) := '3B0A2020616C69676E2D636F6E74656E743A2063656E7465723B0A2020616C69676E2D6974656D733A2063656E7465723B0A20206A7573746966792D636F6E74656E743A2073706163652D6265747765656E3B0A7D0A0A2E74635F726F77207B0A202064';
wwv_flow_imp.g_varchar2_table(3) := '6973706C61793A20626C6F636B3B20200A7D0A0A2E74635F636F6C207B0A2020646973706C61793A20666C65783B0A2020666C65782D646972656374696F6E3A20636F6C756D6E3B0A20206A7573746966792D636F6E74656E743A2063656E7465723B0A';
wwv_flow_imp.g_varchar2_table(4) := '2020616C69676E2D6974656D733A2063656E7465723B0A202070616464696E672D72696768743A20313570783B0A202070616464696E672D6C6566743A20313570783B0A7D';
null;
end;
/
begin
wwv_flow_imp_shared.create_plugin_file(
 p_id=>wwv_flow_imp.id(26828270902412131)
,p_plugin_id=>wwv_flow_imp.id(26826776401374968)
,p_file_name=>'responsive_counter.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '2E74635F69636F6E7B636F6C6F723A7465616C7D2E74635F6469767B646973706C61793A666C65783B666C65782D646972656374696F6E3A726F773B666C65782D777261703A777261703B616C69676E2D636F6E74656E743A63656E7465723B616C6967';
wwv_flow_imp.g_varchar2_table(2) := '6E2D6974656D733A63656E7465723B6A7573746966792D636F6E74656E743A73706163652D6265747765656E7D2E74635F726F777B646973706C61793A626C6F636B7D2E74635F636F6C7B646973706C61793A666C65783B666C65782D64697265637469';
wwv_flow_imp.g_varchar2_table(3) := '6F6E3A636F6C756D6E3B6A7573746966792D636F6E74656E743A63656E7465723B616C69676E2D6974656D733A63656E7465723B70616464696E672D72696768743A313570783B70616464696E672D6C6566743A313570787D';
null;
end;
/
begin
wwv_flow_imp_shared.create_plugin_file(
 p_id=>wwv_flow_imp.id(26830998756457003)
,p_plugin_id=>wwv_flow_imp.id(26826776401374968)
,p_file_name=>'responsive_counter.min.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '242877696E646F77292E6F6E28276C6F6164272C2066756E6374696F6E28297B0A0A2020202066756E6374696F6E20696E56697369626C6528656C656D656E7429207B0A20202020202020207661722057696E646F77546F70203D20242877696E646F77';
wwv_flow_imp.g_varchar2_table(2) := '292E7363726F6C6C546F7028293B0A20202020202020207661722057696E646F77426F74746F6D203D2057696E646F77546F70202B20242877696E646F77292E68656967687428293B0A202020202020202076617220456C656D656E74546F70203D2065';
wwv_flow_imp.g_varchar2_table(3) := '6C656D656E742E6F666673657428292E746F703B0A202020202020202076617220456C656D656E74426F74746F6D203D20456C656D656E74546F70202B20656C656D656E742E68656967687428293B0A0A20202020202020206966202828456C656D656E';
wwv_flow_imp.g_varchar2_table(4) := '74426F74746F6D203C3D2057696E646F77426F74746F6D2920262620456C656D656E74546F70203E3D2057696E646F77546F70290A202020202020202020202020616E696D61746528656C656D656E74293B0A202020207D202020200A202020200A2020';
wwv_flow_imp.g_varchar2_table(5) := '202066756E6374696F6E20616E696D61746528656C656D656E7429207B0A20202020202020206966202821656C656D656E742E686173436C61737328276D732D616E696D61746564272929207B0A202020202020202020202020766172206D617876616C';
wwv_flow_imp.g_varchar2_table(6) := '203D20656C656D656E742E6461746128276D617827293B0A2020202020202020202020207661722068746D6C203D20656C656D656E742E68746D6C28293B0A202020202020202020202020656C656D656E742E616464436C61737328226D732D616E696D';
wwv_flow_imp.g_varchar2_table(7) := '6174656422293B0A20202020202020202020202024287B636F756E744E756D3A20656C656D656E742E68746D6C28297D292E616E696D617465280A202020202020202020202020202020207B636F756E744E756D3A206D617876616C7D2C200A20202020';
wwv_flow_imp.g_varchar2_table(8) := '2020202020202020202020207B0A20202020202020202020202020202020202020206475726174696F6E3A20353030302C0A2020202020202020202020202020202020202020656173696E673A20276C696E656172272C0A202020202020202020202020';
wwv_flow_imp.g_varchar2_table(9) := '2020202020202020737465703A2066756E6374696F6E2829207B0A202020202020202020202020202020202020202020202020656C656D656E742E68746D6C284D6174682E666C6F6F7228746869732E636F756E744E756D29202B2068746D6C293B0A20';
wwv_flow_imp.g_varchar2_table(10) := '202020202020202020202020202020202020207D2C0A2020202020202020202020202020202020202020636F6D706C6574653A2066756E6374696F6E2829207B0A202020202020202020202020202020202020202020202020656C656D656E742E68746D';
wwv_flow_imp.g_varchar2_table(11) := '6C28746869732E636F756E744E756D202B2068746D6C293B0A20202020202020202020202020202020202020207D0A202020202020202020202020202020207D0A202020202020202020202020293B0A20202020202020207D0A202020207D2020202020';
wwv_flow_imp.g_varchar2_table(12) := '202020202020200A20202020202020200A2020202066756E6374696F6E20737461727428297B0A202020202020202024282268325B646174612D6D61785D22292E656163682866756E6374696F6E2829207B0A2020202020202020202020202020202069';
wwv_flow_imp.g_varchar2_table(13) := '6E56697369626C652824287468697329293B0A2020202020202020202020207D293B200A202020207D0A20202020202020200A20202020242877696E646F77292E7363726F6C6C2866756E6374696F6E2829207B0A202020202020202073746172742829';
wwv_flow_imp.g_varchar2_table(14) := '3B0A202020207D293B0A0A20202020737461727428293B0A7D29';
null;
end;
/
begin
wwv_flow_imp_shared.create_plugin_file(
 p_id=>wwv_flow_imp.id(26831306822587392)
,p_plugin_id=>wwv_flow_imp.id(26826776401374968)
,p_file_name=>'responsive_counter.js'
,p_mime_type=>'text/javascript'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '242877696E646F77292E6F6E28226C6F6164222C2866756E6374696F6E28297B66756E6374696F6E20742874297B766172206E3D242877696E646F77292E7363726F6C6C546F7028292C6F3D6E2B242877696E646F77292E68656967687428292C613D74';
wwv_flow_imp.g_varchar2_table(2) := '2E6F666673657428292E746F703B612B742E68656967687428293C3D6F2626613E3D6E262666756E6374696F6E2874297B69662821742E686173436C61737328226D732D616E696D617465642229297B766172206E3D742E6461746128226D617822292C';
wwv_flow_imp.g_varchar2_table(3) := '6F3D742E68746D6C28293B742E616464436C61737328226D732D616E696D6174656422292C24287B636F756E744E756D3A742E68746D6C28297D292E616E696D617465287B636F756E744E756D3A6E7D2C7B6475726174696F6E3A3565332C656173696E';
wwv_flow_imp.g_varchar2_table(4) := '673A226C696E656172222C737465703A66756E6374696F6E28297B742E68746D6C284D6174682E666C6F6F7228746869732E636F756E744E756D292B6F297D2C636F6D706C6574653A66756E6374696F6E28297B742E68746D6C28746869732E636F756E';
wwv_flow_imp.g_varchar2_table(5) := '744E756D2B6F297D7D297D7D2874297D66756E6374696F6E206E28297B24282268325B646174612D6D61785D22292E65616368282866756E6374696F6E28297B742824287468697329297D29297D242877696E646F77292E7363726F6C6C282866756E63';
wwv_flow_imp.g_varchar2_table(6) := '74696F6E28297B6E28297D29292C6E28297D29293B';
null;
end;
/
begin
wwv_flow_imp_shared.create_plugin_file(
 p_id=>wwv_flow_imp.id(26832801890612209)
,p_plugin_id=>wwv_flow_imp.id(26826776401374968)
,p_file_name=>'responsive_counter.min.js'
,p_mime_type=>'text/javascript'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/end_environment
begin
wwv_flow_imp.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false));
commit;
end;
/
set verify on feedback on define on
prompt  ...done
