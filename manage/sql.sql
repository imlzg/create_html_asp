if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[createrhtml_cata_check_add]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[createrhtml_cata_check_add]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[createrhtml_cata_check_edit]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[createrhtml_cata_check_edit]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[createrhtml_cata_cid_get]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[createrhtml_cata_cid_get]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[createrhtml_cata_get_contfldr]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[createrhtml_cata_get_contfldr]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[createrhtml_cata_get_contlist]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[createrhtml_cata_get_contlist]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[createrhtml_cata_get_contnum]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[createrhtml_cata_get_contnum]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[createrhtml_cata_get_data]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[createrhtml_cata_get_data]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[createrhtml_cata_get_edit]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[createrhtml_cata_get_edit]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[createrhtml_cata_get_js_sdaytopdown]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[createrhtml_cata_get_js_sdaytopdown]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[createrhtml_cata_get_js_stopdown]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[createrhtml_cata_get_js_stopdown]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[createrhtml_cata_get_js_sweektopdown]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[createrhtml_cata_get_js_sweektopdown]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[createrhtml_cata_get_jsequal]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[createrhtml_cata_get_jsequal]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[createrhtml_cata_get_jsnew]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[createrhtml_cata_get_jsnew]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[createrhtml_cata_get_jspath]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[createrhtml_cata_get_jspath]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[createrhtml_cata_get_jsson]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[createrhtml_cata_get_jsson]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[createrhtml_cata_get_jstophit]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[createrhtml_cata_get_jstophit]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[createrhtml_cata_get_list]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[createrhtml_cata_get_list]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[createrhtml_cata_get_manage]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[createrhtml_cata_get_manage]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[createrhtml_cata_get_nav]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[createrhtml_cata_get_nav]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[createrhtml_cata_get_num]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[createrhtml_cata_get_num]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[createrhtml_cata_get_page]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[createrhtml_cata_get_page]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[createrhtml_cata_get_path]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[createrhtml_cata_get_path]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[createrhtml_cata_get_son]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[createrhtml_cata_get_son]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[createrhtml_cata_get_swerve]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[createrhtml_cata_get_swerve]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[createrhtml_cata_get_symblist]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[createrhtml_cata_get_symblist]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[createrhtml_cata_get_symbol]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[createrhtml_cata_get_symbol]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[createrhtml_cata_save_add]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[createrhtml_cata_save_add]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[createrhtml_cata_save_del]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[createrhtml_cata_save_del]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[createrhtml_cata_save_edit]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[createrhtml_cata_save_edit]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[createrhtml_cata_save_move]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[createrhtml_cata_save_move]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[createrhtml_info_delete_byall]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[createrhtml_info_delete_byall]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[createrhtml_info_delete_bycata]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[createrhtml_info_delete_bycata]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[createrhtml_info_delete_bydatetime]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[createrhtml_info_delete_bydatetime]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[createrhtml_info_delete_bynew]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[createrhtml_info_delete_bynew]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[createrhtml_info_delete_period]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[createrhtml_info_delete_period]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[createrhtml_info_delete_user]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[createrhtml_info_delete_user]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[createrhtml_info_get_cont]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[createrhtml_info_get_cont]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[createrhtml_info_get_count_byall]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[createrhtml_info_get_count_byall]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[createrhtml_info_get_count_bycata]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[createrhtml_info_get_count_bycata]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[createrhtml_info_get_count_bydatetime]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[createrhtml_info_get_count_bydatetime]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[createrhtml_info_get_count_period]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[createrhtml_info_get_count_period]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[createrhtml_info_get_count_user]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[createrhtml_info_get_count_user]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[createrhtml_info_get_edit]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[createrhtml_info_get_edit]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[createrhtml_info_get_ifname]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[createrhtml_info_get_ifname]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[createrhtml_info_get_iid_byall]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[createrhtml_info_get_iid_byall]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[createrhtml_info_get_iid_bycata]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[createrhtml_info_get_iid_bycata]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[createrhtml_info_get_iid_bydatetime]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[createrhtml_info_get_iid_bydatetime]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[createrhtml_info_get_iid_bynew]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[createrhtml_info_get_iid_bynew]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[createrhtml_info_get_iid_period]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[createrhtml_info_get_iid_period]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[createrhtml_info_get_iid_user]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[createrhtml_info_get_iid_user]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[createrhtml_info_get_list]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[createrhtml_info_get_list]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[createrhtml_info_get_num]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[createrhtml_info_get_num]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[createrhtml_info_get_relative_info]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[createrhtml_info_get_relative_info]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[createrhtml_info_get_relative_soft]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[createrhtml_info_get_relative_soft]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[createrhtml_info_move_period]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[createrhtml_info_move_period]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[createrhtml_info_move_user]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[createrhtml_info_move_user]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[createrhtml_info_nav_get]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[createrhtml_info_nav_get]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[createrhtml_info_new_get]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[createrhtml_info_new_get]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[createrhtml_info_save_add]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[createrhtml_info_save_add]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[createrhtml_info_save_del]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[createrhtml_info_save_del]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[createrhtml_info_save_edit]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[createrhtml_info_save_edit]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[createrhtml_info_save_move]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[createrhtml_info_save_move]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[createrhtml_info_tophit_get]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[createrhtml_info_tophit_get]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[createrhtml_model_get_cont]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[createrhtml_model_get_cont]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[createrhtml_model_get_edit]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[createrhtml_model_get_edit]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[createrhtml_model_get_list]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[createrhtml_model_get_list]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[createrhtml_model_get_manage]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[createrhtml_model_get_manage]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[createrhtml_model_get_num]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[createrhtml_model_get_num]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[createrhtml_model_save_add]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[createrhtml_model_save_add]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[createrhtml_model_save_del]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[createrhtml_model_save_del]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[createrhtml_model_save_edit]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[createrhtml_model_save_edit]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[createrhtml_soft_daytopdown_get]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[createrhtml_soft_daytopdown_get]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[createrhtml_soft_delete_byall]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[createrhtml_soft_delete_byall]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[createrhtml_soft_delete_bycata]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[createrhtml_soft_delete_bycata]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[createrhtml_soft_delete_bydatetime]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[createrhtml_soft_delete_bydatetime]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[createrhtml_soft_delete_bynew]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[createrhtml_soft_delete_bynew]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[createrhtml_soft_delete_period]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[createrhtml_soft_delete_period]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[createrhtml_soft_delete_user]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[createrhtml_soft_delete_user]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[createrhtml_soft_edit_save]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[createrhtml_soft_edit_save]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[createrhtml_soft_get_cont]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[createrhtml_soft_get_cont]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[createrhtml_soft_get_count_byall]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[createrhtml_soft_get_count_byall]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[createrhtml_soft_get_count_bycata]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[createrhtml_soft_get_count_bycata]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[createrhtml_soft_get_count_bydatetime]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[createrhtml_soft_get_count_bydatetime]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[createrhtml_soft_get_count_period]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[createrhtml_soft_get_count_period]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[createrhtml_soft_get_count_user]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[createrhtml_soft_get_count_user]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[createrhtml_soft_get_downlist]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[createrhtml_soft_get_downlist]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[createrhtml_soft_get_edit]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[createrhtml_soft_get_edit]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[createrhtml_soft_get_list]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[createrhtml_soft_get_list]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[createrhtml_soft_get_num]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[createrhtml_soft_get_num]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[createrhtml_soft_get_relative_info]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[createrhtml_soft_get_relative_info]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[createrhtml_soft_get_relative_soft]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[createrhtml_soft_get_relative_soft]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[createrhtml_soft_get_sfname]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[createrhtml_soft_get_sfname]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[createrhtml_soft_get_sid_byall]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[createrhtml_soft_get_sid_byall]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[createrhtml_soft_get_sid_bycata]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[createrhtml_soft_get_sid_bycata]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[createrhtml_soft_get_sid_bydatetime]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[createrhtml_soft_get_sid_bydatetime]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[createrhtml_soft_get_sid_bynew]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[createrhtml_soft_get_sid_bynew]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[createrhtml_soft_get_sid_period]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[createrhtml_soft_get_sid_period]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[createrhtml_soft_get_sid_user]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[createrhtml_soft_get_sid_user]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[createrhtml_soft_get_url]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[createrhtml_soft_get_url]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[createrhtml_soft_move_period]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[createrhtml_soft_move_period]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[createrhtml_soft_move_user]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[createrhtml_soft_move_user]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[createrhtml_soft_nav_get]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[createrhtml_soft_nav_get]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[createrhtml_soft_new_get]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[createrhtml_soft_new_get]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[createrhtml_soft_save_add]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[createrhtml_soft_save_add]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[createrhtml_soft_save_del]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[createrhtml_soft_save_del]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[createrhtml_soft_save_edit]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[createrhtml_soft_save_edit]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[createrhtml_soft_save_move]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[createrhtml_soft_save_move]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[createrhtml_soft_topdown_get]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[createrhtml_soft_topdown_get]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[createrhtml_soft_tophit_get]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[createrhtml_soft_tophit_get]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[createrhtml_soft_update_down]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[createrhtml_soft_update_down]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[createrhtml_soft_weektopdown_get]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[createrhtml_soft_weektopdown_get]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[createrhtml_user_get_edit]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[createrhtml_user_get_edit]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[createrhtml_user_get_list]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[createrhtml_user_get_list]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[createrhtml_user_get_manage]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[createrhtml_user_get_manage]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[createrhtml_user_get_upassword]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[createrhtml_user_get_upassword]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[createrhtml_user_login_check]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[createrhtml_user_login_check]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[createrhtml_user_login_dlog]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[createrhtml_user_login_dlog]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[createrhtml_user_login_update]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[createrhtml_user_login_update]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[createrhtml_user_save_add]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[createrhtml_user_save_add]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[createrhtml_user_save_del]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[createrhtml_user_save_del]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[createrhtml_user_save_edit]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[createrhtml_user_save_edit]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[adjs]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[adjs]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[cata]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[cata]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[comment]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[comment]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[config]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[config]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[dlog]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[dlog]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[info]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[info]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[model]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[model]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[soft]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[soft]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[softurl]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[softurl]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[users]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[users]
GO

CREATE TABLE [dbo].[adjs] (
	[adid] [int] NOT NULL ,
	[jsname] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[jsintro] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[content] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,
	[stime] [smalldatetime] NULL ,
	[etime] [smalldatetime] NULL ,
	[period] [int] NULL 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[cata] (
	[cid] [int] IDENTITY (1, 1) NOT NULL ,
	[mid] [int] NULL ,
	[cname] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[pid] [int] NULL ,
	[tree] [nvarchar] (150) COLLATE Chinese_PRC_CI_AS NULL ,
	[grade] [int] NULL ,
	[swerve] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[show] [int] NULL ,
	[seq] [int] NULL ,
	[cata_fldr] [nvarchar] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[cont_fldr] [nvarchar] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[js_fldr] [nvarchar] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[pagesize] [int] NULL ,
	[jssize] [int] NULL ,
	[symbol] [nvarchar] (8) COLLATE Chinese_PRC_CI_AS NULL ,
	[suffix] [nvarchar] (8) COLLATE Chinese_PRC_CI_AS NULL ,
	[addtime] [smalldatetime] NULL ,
	[cfname] [nvarchar] (20) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[comment] (
	[ctid] [int] IDENTITY (1, 1) NOT NULL ,
	[symbol] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[fid] [int] NOT NULL ,
	[title] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[content] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,
	[writer] [nvarchar] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[email] [nvarchar] (150) COLLATE Chinese_PRC_CI_AS NULL ,
	[addtime] [smalldatetime] NULL 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[config] (
	[configid] [int] IDENTITY (1, 1) NOT NULL ,
	[site_set] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,
	[upload_fldr] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[sitetime] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[sitesmtp] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[softproperty] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,
	[infoproperty] [ntext] COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[dlog] (
	[dlid] [int] NOT NULL ,
	[uname] [nvarchar] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[result] [nvarchar] (8) COLLATE Chinese_PRC_CI_AS NULL ,
	[loginip] [nvarchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[loginos] [nvarchar] (8) COLLATE Chinese_PRC_CI_AS NULL ,
	[errorpassword] [nvarchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[datetime] [smalldatetime] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[info] (
	[iid] [int] IDENTITY (1, 1) NOT NULL ,
	[cid] [int] NOT NULL ,
	[mid] [int] NULL ,
	[title] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[content] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,
	[keyword] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[hits] [int] NULL ,
	[author] [nvarchar] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[provenance] [nvarchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[uname] [nvarchar] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[addtime] [smalldatetime] NULL ,
	[newtime] [smalldatetime] NULL ,
	[groom] [int] NULL ,
	[pass] [int] NULL ,
	[ifname] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[model] (
	[mid] [int] IDENTITY (1, 1) NOT NULL ,
	[kind] [int] NOT NULL ,
	[symbol] [nvarchar] (10) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[mname] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[content] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,
	[seq] [int] NULL ,
	[designer] [nvarchar] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[contact] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[addtime] [smalldatetime] NULL 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[soft] (
	[sid] [int] IDENTITY (1, 1) NOT NULL ,
	[cid] [int] NOT NULL ,
	[mid] [int] NOT NULL ,
	[sname] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[edition] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[lang] [nvarchar] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[sort] [nvarchar] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[mode] [nvarchar] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[setting] [nvarchar] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[vol] [nvarchar] (4) COLLATE Chinese_PRC_CI_AS NULL ,
	[linkman] [nvarchar] (150) COLLATE Chinese_PRC_CI_AS NULL ,
	[linkurl] [nvarchar] (150) COLLATE Chinese_PRC_CI_AS NULL ,
	[demo] [nvarchar] (150) COLLATE Chinese_PRC_CI_AS NULL ,
	[pic] [nvarchar] (150) COLLATE Chinese_PRC_CI_AS NULL ,
	[about] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,
	[score] [int] NULL ,
	[stage] [int] NULL ,
	[groom] [int] NULL ,
	[hits] [int] NULL ,
	[lastdowntime] [smalldatetime] NULL ,
	[daydowns] [int] NULL ,
	[weekdowns] [int] NULL ,
	[downs] [int] NULL ,
	[err] [int] NULL ,
	[addtime] [smalldatetime] NULL ,
	[newtime] [smalldatetime] NULL ,
	[uname] [nvarchar] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[pass] [int] NULL ,
	[sfname] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[softurl] (
	[suid] [int] IDENTITY (1, 1) NOT NULL ,
	[sid] [int] NOT NULL ,
	[seq] [int] NOT NULL ,
	[urlname] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[url] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[sfname] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[users] (
	[uid] [int] IDENTITY (1, 1) NOT NULL ,
	[uname] [nvarchar] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[upassword] [nvarchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[distinction] [int] NULL ,
	[mace] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,
	[lastlogintime] [smalldatetime] NULL ,
	[lastloginip] [nvarchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[truename] [nvarchar] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[gender] [int] NULL ,
	[occupation] [int] NULL ,
	[qq] [nvarchar] (15) COLLATE Chinese_PRC_CI_AS NULL ,
	[email] [nvarchar] (150) COLLATE Chinese_PRC_CI_AS NULL ,
	[telephone] [nvarchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[postalcode] [nvarchar] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[address] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[addtime] [smalldatetime] NULL ,
	[locked] [int] NULL 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[cata] WITH NOCHECK ADD 
	CONSTRAINT [PK_cata] PRIMARY KEY  CLUSTERED 
	(
		[cid]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[comment] WITH NOCHECK ADD 
	CONSTRAINT [PK_comment] PRIMARY KEY  CLUSTERED 
	(
		[ctid]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[info] WITH NOCHECK ADD 
	CONSTRAINT [PK_info] PRIMARY KEY  CLUSTERED 
	(
		[iid]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[model] WITH NOCHECK ADD 
	CONSTRAINT [PK_model] PRIMARY KEY  CLUSTERED 
	(
		[mid]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[soft] WITH NOCHECK ADD 
	CONSTRAINT [PK_soft] PRIMARY KEY  CLUSTERED 
	(
		[sid]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[softurl] WITH NOCHECK ADD 
	CONSTRAINT [PK_softurl] PRIMARY KEY  CLUSTERED 
	(
		[suid]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[users] WITH NOCHECK ADD 
	CONSTRAINT [PK_user] PRIMARY KEY  CLUSTERED 
	(
		[uid]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[comment] WITH NOCHECK ADD 
	CONSTRAINT [DF_comment_addtime] DEFAULT (getdate()) FOR [addtime]
GO

ALTER TABLE [dbo].[dlog] WITH NOCHECK ADD 
	CONSTRAINT [DF_dlog_datetime] DEFAULT (getdate()) FOR [datetime]
GO

ALTER TABLE [dbo].[info] WITH NOCHECK ADD 
	CONSTRAINT [DF_info_hits] DEFAULT (0) FOR [hits],
	CONSTRAINT [DF_info_groom] DEFAULT (0) FOR [groom]
GO

ALTER TABLE [dbo].[soft] WITH NOCHECK ADD 
	CONSTRAINT [DF_soft_groom] DEFAULT (0) FOR [groom],
	CONSTRAINT [DF_soft_hits] DEFAULT (0) FOR [hits],
	CONSTRAINT [DF_soft_lastdowntime] DEFAULT (getdate()) FOR [lastdowntime],
	CONSTRAINT [DF_soft_daydowns] DEFAULT (0) FOR [daydowns],
	CONSTRAINT [DF_soft_weekdowns] DEFAULT (0) FOR [weekdowns],
	CONSTRAINT [DF_soft_downs] DEFAULT (0) FOR [downs],
	CONSTRAINT [DF_soft_err] DEFAULT (0) FOR [err],
	CONSTRAINT [DF_soft_addtime] DEFAULT (getdate()) FOR [addtime],
	CONSTRAINT [DF_soft_newtime] DEFAULT (getdate()) FOR [newtime]
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF 
GO

CREATE PROCEDURE [dbo].[createrhtml_cata_check_add]
@pid int,
@cname varchar(255),
@returnvalue int output
AS
declare @pcname varchar(255)
select @pcname=cname from cata where cid=@pid
if exists(select cid from cata where cname=@pcname+@cname+'|')
	select @returnvalue=0
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF 
GO

CREATE PROCEDURE [dbo].[createrhtml_cata_check_edit]
@cid int,
@pid int,
@cname varchar(255),
@returnvalue int output
AS
declare @scname varchar(255),@pcname varchar(255)
select @scname=cname from cata where cid=@cid
select @pcname=cname from cata where cid=@pid
if exists(select cid from cata where cname=@pcname+@cname+'|' and cname!=@scname)
	select @returnvalue=0
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF 
GO

CREATE PROCEDURE [dbo].[createrhtml_cata_cid_get]
@catano int,
@tree varchar(150)
AS
declare @start int,@end int
select @start=(@catano-1)*1+1
select @end=@catano*1
set rowcount @end
declare page_cur scroll cursor for
	select cid from cata where tree like @tree+'%'
open page_cur
fetch absolute @start from page_cur
while @@fetch_status=0
	fetch next from page_cur
set rowcount 0
close page_cur
deallocate page_cur
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF 
GO

CREATE PROCEDURE [dbo].[createrhtml_cata_get_contfldr]
@cid int,
@cont_fldr varchar(50) output
AS
select @cont_fldr=cont_fldr from cata where cid=@cid
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF 
GO

CREATE PROCEDURE [dbo].[createrhtml_cata_get_contlist]
@cid int,
@pageno int,
@pagesize int
AS
declare @tree varchar(150),@symbol varchar(8)
select @tree=tree,@symbol=symbol from cata where cid=@cid
declare @start int,@end int
select @start=(@pageno-1)*@pagesize+1
select @end=@pageno*@pagesize
set rowcount @end
if @symbol='soft'
	declare list_cur scroll cursor for
		select s.sid,(s.sname+' '+s.edition) as softname,s.newtime,s.sfname,c.cont_fldr from soft as s inner join cata as c on s.cid in(select cid from cata where tree like @tree+'%') and s.cid=c.cid
if @symbol='info'
	declare list_cur scroll cursor for
		select i.iid,i.title,i.newtime,i.ifname,c.cont_fldr from info as i inner join cata as c on i.cid in(select cid from cata where tree like @tree+'%') and i.cid=c.cid
open list_cur
fetch absolute @start from list_cur
while @@fetch_status=0
	fetch next from list_cur
set rowcount 0
close list_cur
deallocate list_cur
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF 
GO

CREATE PROCEDURE [dbo].[createrhtml_cata_get_contnum]
@cid int,
@contnum int output
AS
declare @tree varchar(150),@symbol varchar(8)
select @tree=tree,@symbol=symbol from cata where cid=@cid
if @symbol='soft'
	select @contnum=count(*) from soft where cid in (select cid from cata where tree like @tree+'%')
if @symbol='info'
	select @contnum=count(*) from info where cid in (select cid from cata where tree like @tree+'%')
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF 
GO

CREATE PROCEDURE [dbo].[createrhtml_cata_get_data]
@cid int
AS
select cname,pid,mid,tree,grade,swerve,show,seq,cata_fldr,cont_fldr,js_fldr,pagesize,jssize,symbol,suffix,cfname from cata where cid=@cid
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF 
GO

CREATE PROCEDURE [dbo].[createrhtml_cata_get_edit]
@cid int
AS
select pid,mid,cname,grade,swerve,show,seq,pagesize,jssize from cata where cid=@cid
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF 
GO

CREATE PROCEDURE [dbo].[createrhtml_cata_get_js_sdaytopdown]
@cid int
AS
declare @tree varchar(150),@jssize int
select @tree=tree,@jssize=jssize from cata where cid=@cid
set rowcount @jssize
select (s.sname+' '+s.edition) as softname,s.sfname,c.cont_fldr from soft as s inner join cata as c on s.cid in(select cid from cata where tree like @tree+'%') and s.cid=c.cid order by s.daydowns
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF 
GO

CREATE PROCEDURE [dbo].[createrhtml_cata_get_js_stopdown]
@cid int
AS
declare @tree varchar(150),@symbol varchar(8),@jssize int
select @tree=tree,@symbol=symbol,@jssize=jssize from cata where cid=@cid
set rowcount @jssize
select (s.sname+' '+s.edition) as softname,s.sfname,c.cont_fldr from soft as s inner join cata as c on s.cid in(select cid from cata where tree like @tree+'%') and s.cid=c.cid order by s.downs
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF 
GO

CREATE PROCEDURE [dbo].[createrhtml_cata_get_js_sweektopdown]
@cid int
AS
declare @tree varchar(150),@jssize int
select @tree=tree,@jssize=jssize from cata where cid=@cid
set rowcount @jssize
select (s.sname+' '+s.edition) as softname,s.sfname,c.cont_fldr from soft as s inner join cata as c on s.cid in(select cid from cata where tree like @tree+'%') and s.cid=c.cid order by s.weekdowns
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF 
GO

CREATE PROCEDURE [dbo].[createrhtml_cata_get_jsequal]
@cid int
AS
declare @pid int
select @pid=pid from cata where cid=@cid
select cname,grade,cfname,cata_fldr,suffix from cata where pid=@pid
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF 
GO

CREATE PROCEDURE [dbo].[createrhtml_cata_get_jsnew]
@cid int
AS
declare @tree varchar(150),@symbol varchar(8),@jssize int
select @tree=tree,@symbol=symbol,@jssize=jssize from cata where cid=@cid
set rowcount @jssize
if @symbol='info'
	select i.title,i.ifname,c.cont_fldr from info as i inner join cata as c on i.cid in(select cid from cata where tree like @tree+'%') and i.cid=c.cid order by i.newtime
if @symbol='soft'
	select (s.sname+' '+s.edition) as softname,s.sfname,c.cont_fldr from soft as s inner join cata as c on s.cid in(select cid from cata where tree like @tree+'%') and s.cid=c.cid order by s.newtime
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF 
GO

CREATE PROCEDURE [dbo].[createrhtml_cata_get_jspath]
@cid int
AS
declare @tree varchar(150)
select @tree=tree from cata where cid=@cid
select cname,grade,cfname,cata_fldr,suffix from cata where charindex(tree,@tree)>0 order by tree
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF 
GO

CREATE PROCEDURE [dbo].[createrhtml_cata_get_jsson]
@cid int
AS
select cname,grade,cfname,cata_fldr,suffix from cata where pid=@cid
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF 
GO

CREATE PROCEDURE [dbo].[createrhtml_cata_get_jstophit]
@cid int
AS
declare @tree varchar(150),@symbol varchar(8),@jssize int
select @tree=tree,@symbol=symbol,@jssize=jssize from cata where cid=@cid
set rowcount @jssize
if @symbol='info'
	select i.title,i.ifname,c.cont_fldr from info as i inner join cata as c on i.cid in(select cid from cata where tree like @tree+'%') and i.cid=c.cid order by i.hits
if @symbol='soft'
	select (s.sname+' '+s.edition) as softname,s.sfname,c.cont_fldr from soft as s inner join cata as c on s.cid in(select cid from cata where tree like @tree+'%') and s.cid=c.cid order by s.hits
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF 
GO

CREATE PROCEDURE [dbo].[createrhtml_cata_get_list]
@symbol varchar(10)
AS
select cid,cname from cata where symbol=@symbol order by tree
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF 
GO

CREATE PROCEDURE [dbo].[createrhtml_cata_get_manage]
AS
select cid,cname,tree,grade,symbol from cata order by tree
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF 
GO

CREATE PROCEDURE [dbo].[createrhtml_cata_get_nav]
@symbol varchar(8)
AS
select cname,grade,cfname,suffix,cata_fldr from cata where symbol=@symbol
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF 
GO

CREATE PROCEDURE [dbo].[createrhtml_cata_num_get]
@cid int,
@catanum int output
AS
declare @tree varchar(150)
select @tree=tree from cata where cid=@cid
select @catanum=count(*) from cata where tree like @tree+'%'
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF 
GO

CREATE PROCEDURE [dbo].[createrhtml_cata_get_page]
@catano int,
@cid int
AS
declare @tree varchar(150)
select @tree=tree from cata where cid=@cid
declare @start int,@end int
select @start=(@catano-1)*1+1
select @end=@catano*1
set rowcount @end
declare page_cur scroll cursor for
	select cid,swerve,pagesize,symbol from cata where tree like @tree+'%'
open page_cur
fetch absolute @start from page_cur
while @@fetch_status=0
	fetch next from page_cur
set rowcount 0
close page_cur
deallocate page_cur
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF 
GO

CREATE PROCEDURE [dbo].[createrhtml_cata_get_path]
@cid int
AS
select cname,tree from cata where cid=@cid
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF 
GO

CREATE PROCEDURE [dbo].[createrhtml_cata_get_son]
@cid int
AS
select cid,cname,grade,cfname,suffix,cata_fldr from cata where pid=@cid
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF 
GO

CREATE PROCEDURE [dbo].[createrhtml_cata_get_swerve]
@cid int
AS
select cid,swerve,pagesize,symbol from cata where cid=@cid
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF 
GO

CREATE PROCEDURE [dbo].[createrhtml_cata_get_symblist]
AS
select distinct symbol from cata
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF 
GO

CREATE PROCEDURE [dbo].[createrhtml_cata_get_symbol]
@cid int
AS
select symbol,js_fldr from cata where cid=@cid
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF 
GO

CREATE PROCEDURE [dbo].[createrhtml_cata_save_add]
@pid int,
@mid int,
@cname varchar(255),
@swerve varchar(50),
@show int,
@seq int,
@cata_fldr varchar(8),
@cont_fldr varchar(8),
@js_fldr varchar(8),
@pagesize int,
@jssize int,
@cfname varchar(20),
@suffix varchar(8)
AS
declare @ptree varchar(150),@pcname varchar(255),@pgrade int,@symbol varchar(8)
select @ptree=tree,@pcname=cname,@pgrade=grade,@symbol=symbol from cata where cid=@pid
begin tran
insert into cata (pid,mid,cname,grade,swerve,show,seq,cata_fldr,cont_fldr,js_fldr,pagesize,jssize,suffix,symbol) values(@pid,@mid,@pcname+@cname+'|',@pgrade+1,@swerve,@show,@seq,@cata_fldr,@cont_fldr,@js_fldr,@pagesize,@jssize,@suffix,@symbol)
update cata set tree=@ptree+cast(@@IDENTITY as varchar)+',',cfname=@cfname+cast(@@IDENTITY as varchar) where cid=@@IDENTITY
commit tran
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF 
GO

CREATE PROCEDURE [dbo].[createrhtml_cata_save_del]
@cid int
AS
delete from cata where cid=@cid
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF 
GO

CREATE PROCEDURE [dbo].[createrhtml_cata_save_edit]
@cid int,
@pid int,
@mid int,
@cname varchar(255),
@swerve varchar(50),
@show int,
@seq int,
@pagesize int,
@jssize int
AS
declare @pcname varchar(255),@ptree varchar(150),@pgrade int
select @pcname=cname,@ptree=tree,@pgrade=grade from cata where cid=@pid
update cata set pid=@pid,mid=@mid,cname=@pcname+@cname+'|',tree=@ptree+cast(@cid as varchar)+',',grade=@pgrade+1,swerve=@swerve,show=@show,seq=@seq,pagesize=@pagesize,jssize=@jssize where cid=@cid
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF 
GO

CREATE PROCEDURE [dbo].[createrhtml_cata_save_move]
@scid int,
@ecid int,
@returnvalue int output
AS
declare @spid int,@stree varchar(150)
select @spid=pid,@stree=tree from cata where cid=@scid
declare @spcname varchar(255),@sptree varchar(150),@spgrade int
select @spcname=cname,@sptree=tree from cata where cid=@spid
declare @ecname varchar(255),@etree varchar(150),@egrade int
select @ecname=cname,@etree=tree,@egrade=grade from cata where cid=@ecid
declare @dgrade int
select @dgrade=@spgrade-@egrade
if charindex(@stree,@etree)>0
	begin
	select @returnvalue=0--上级目录不能转移到下级目录
	return
	end
else
	begin tran
	update cata set pid=@ecid,grade=@egrade+1 where cid=@scid
	update cata set cname=replace('|'+cname,'|'+@spcname,@ecname),tree=replace(','+tree,','+@sptree,@etree),grade=grade-@dgrade where tree like @stree+'%'
	select @returnvalue=1
	commit tran
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF 
GO

CREATE PROCEDURE [dbo].[createrhtml_info_delete_byall]
AS
delete from info
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF 
GO

CREATE PROCEDURE [dbo].[createrhtml_info_delete_bycata]
@cid int
AS
delete from info where cid=@cid
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF 
GO

CREATE PROCEDURE [dbo].[createrhtml_info_delete_bydatetime]
@timekind varchar,
@stime smalldatetime,
@etime smalldatetime
AS
if @timekind='addtime'
	delete from info where addtime<=@etime and addtime>=@stime
else
	delete from info where newtime<=@etime and newtime>=@stime
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF 
GO

CREATE PROCEDURE [dbo].[createrhtml_info_delete_bynew]
@newnum int
AS
set rowcount @newnum
declare del_cur scroll cursor for
	select iid from info order by newtime
open del_cur
delete from info where current of del_cur
while @@fetch_status=0
	fetch next from del_cur
set rowcount 0
close del_cur
deallocate del_cur
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF 
GO

CREATE PROCEDURE [dbo].[createrhtml_info_delete_period]
@timekind varchar(8),
@stime smalldatetime,
@etime smalldatetime,
@cid int
AS
declare @tree varchar(150)
select @tree=tree from cata where cid=@cid
if @timekind='addtime'
	delete from info where cid in(select cid from cata where tree like @tree+'%') and addtime<=@etime and addtime>=@stime
if @timekind='newtime'
	delete from info where cid in(select cid from cata where tree like @tree+'%') and  newtime<=@etime and newtime>=@stime
if @timekind='notime'
	delete from info where cid in(select cid from cata where tree like @tree+'%')
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF 
GO

CREATE PROCEDURE [dbo].[createrhtml_info_delete_user]
@uname varchar(10),
@cid int
AS
declare @tree varchar(150)
select @tree=tree from cata where cid=@cid
delete from info where cid in(select cid from cata where tree like @tree+'%') and uname=@uname
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS OFF 
GO

CREATE PROCEDURE [dbo].[createrhtml_info_get_cont]
@iid int
AS
select cid,mid,title,content,keyword,hits,author,provenance,uname,newtime,ifname from info where iid=@iid
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF 
GO

CREATE PROCEDURE [dbo].[createrhtml_info_get_count_byall]
@recordcount int output
AS
select @recordcount=count(*) from info where cid in (select cid from cata where symbol='info')
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF 
GO

CREATE PROCEDURE [dbo].[createrhtml_info_get_count_bycata]
@cid int,
@recordcount int output
AS
declare @tree varchar
select @tree=tree from cata where cid=@cid
select @recordcount=count(*) from info where cid in (select cid from cata where tree like @tree+'%')
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF 
GO

CREATE PROCEDURE [dbo].[createrhtml_info_get_count_bydatetime]
@timekind varchar,
@stime smalldatetime,
@etime smalldatetime,
@recordcount int output
AS
if @timekind='addtime'
	select @recordcount=count(*) from info where addtime<=@etime and addtime>=@stime
else
	select @recordcount=count(*) from info where newtime<=@etime and newtime>=@stime
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF 
GO

CREATE PROCEDURE [dbo].[createrhtml_info_get_count_period]
@timekind varchar(8),
@stime smalldatetime,
@etime smalldatetime,
@cid int,
@recordcount int output
AS
declare @tree varchar(150)
select @tree=tree from cata where cid=@cid
if @timekind='addtime'
	select @recordcount=count(*) from info where cid in(select cid from cata where tree like @tree+'%') and addtime<=@etime and addtime>=@stime
if @timekind='newtime'
	select @recordcount=count(*) from info where cid in(select cid from cata where tree like @tree+'%') and addtime<=@etime and addtime>=@stime
if @timekind='notime'
	select @recordcount=count(*) from info where cid in(select cid from cata where tree like @tree+'%')
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF 
GO

CREATE PROCEDURE [dbo].[createrhtml_info_get_count_user]
@uname varchar(20),
@cid int,
@recordcount int output
AS
declare @tree varchar(150)
select @tree=tree from cata where cid=@cid
select @recordcount=count(*) from info where cid in(select cid from cata where tree like @tree+'%') and uname=@uname
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF 
GO

CREATE PROCEDURE [dbo].[createrhtml_info_get_edit]
@iid int
AS
select cid,mid,title,author,provenance,content,keyword,pass from info where iid=@iid
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF 
GO

CREATE PROCEDURE [dbo].[createrhtml_info_get_ifname]
@iid int
AS
select cid,ifname from info where iid=@iid
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF 
GO

CREATE PROCEDURE [dbo].[createrhtml_info_get_iid_byall]
@pageno int
AS
declare @start int,@end int
select @start=(@pageno-1)*100+1
select @end=@pageno*100
set rowcount @end
declare byall_cur scroll cursor for
	select iid from info where cid in (select cid from cata where symbol='info')
open byall_cur
fetch absolute @start from byall_cur
while @@fetch_status=0
	fetch next from byall_cur
set rowcount 0
close byall_cur
deallocate byall_cur
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF 
GO

CREATE PROCEDURE [dbo].[createrhtml_info_get_iid_bycata]
@pageno int,
@cid int
AS
declare @tree varchar
select @tree=tree from cata where cid=@cid
declare @start int,@end int
select @start=(@pageno-1)*100+1
select @end=@pageno*100
set rowcount @end
declare bycata_cur scroll cursor for
	select iid from info where cid in (select cid from cata where tree like @tree+'%')
open bycata_cur
fetch absolute @start from bycata_cur
while @@fetch_status=0
	fetch next from bycata_cur
set rowcount 0
close bycata_cur
deallocate bycata_cur
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF 
GO

CREATE PROCEDURE [dbo].[createrhtml_info_get_iid_bydatetime]
@pageno int,
@timekind varchar,
@stime smalldatetime,
@etime smalldatetime
AS
declare @start int,@end int
select @start=(@pageno-1)*100+1
select @end=@pageno*100
set rowcount @end
if @timekind='addtime'
	declare bytime_cur scroll cursor for
	select iid from info where addtime<=@etime and addtime>=@stime
else
	declare bytime_cur scroll cursor for
	select iid from info where newtime<=@etime and newtime>=@stime
open bytime_cur
fetch absolute @start from bytime_cur
while @@fetch_status=0
	fetch next from bytime_cur
set rowcount 0
close bytime_cur
deallocate bytime_cur
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF 
GO

CREATE PROCEDURE [dbo].[createrhtml_info_get_iid_bynew]
@pageno int,
@newnum int
AS
declare @start int,@end int
select @start=(@pageno-1)*100+1
select @end=@pageno*100
set rowcount @end
declare bynew_cur scroll cursor for
	select iid from info order by newtime
open bynew_cur
fetch absolute @start from bynew_cur
while @@fetch_status=0
	fetch next from bynew_cur
set rowcount 0
close bynew_cur
deallocate bynew_cur
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF 
GO

CREATE PROCEDURE [dbo].[createrhtml_info_get_iid_period]
@pageno int,
@timekind varchar(8),
@stime smalldatetime,
@etime smalldatetime,
@cid int
AS
declare @tree varchar(150)
select @tree=tree from cata where cid=@cid
declare @start int,@end int
select @start=(@pageno-1)*100+1
select @end=@pageno*100
set rowcount @end
if @timekind='addtime'
	declare period_cur scroll cursor for
		select iid from info where cid in(select cid from cata where tree like @tree+'%') and addtime<=@etime and addtime>=@stime
if @timekind='newtime'
	declare period_cur scroll cursor for
		select iid from info where cid in(select cid from cata where tree like @tree+'%') and newtime<=@etime and newtime>=@stime
if @timekind='notime'
	declare period_cur scroll cursor for
		select iid from info where cid in(select cid from cata where tree like @tree+'%')
open period_cur
fetch absolute @start from period_cur
while @@fetch_status=0
	fetch next from period_cur
set rowcount 0
close period_cur
deallocate period_cur
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF 
GO

CREATE PROCEDURE [dbo].[createrhtml_info_get_iid_user]
@pageno int,
@uname varchar(20),
@cid int
AS
declare @tree varchar(150)
select @tree=tree from cata where cid=@cid
declare @start int,@end int
select @start=(@pageno-1)*100+1
select @end=@pageno*100
set rowcount @end
declare user_cur scroll cursor for
	select iid from info where cid in(select cid from cata where tree like @tree+'%') and uname=@uname
open user_cur
fetch absolute @start from user_cur
while @@fetch_status=0
	fetch next from user_cur
set rowcount 0
close user_cur
deallocate user_cur
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS OFF 
GO

CREATE PROCEDURE [dbo].[createrhtml_info_get_list]
@cid int,
@pageno int,
@pagesize int
AS
declare @tree varchar(150)
select @tree=tree from cata where cid=@cid
declare @start int,@end int
select @start=(@pageno-1)*@pagesize+1
select @end=@pageno*@pagesize
set rowcount @end
declare list_cur scroll cursor for
	select i.iid,i.title,i.newtime,i.ifname,i.groom,c.cont_fldr from info as i inner join cata as c on i.cid in (select cid from cata where tree like @tree+'%') and i.cid=c.cid
open list_cur
fetch absolute @start from list_cur
while @@fetch_status=0
	fetch next from list_cur
set rowcount 0
close list_cur
deallocate list_cur
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF 
GO

CREATE PROCEDURE [dbo].[createrhtml_info_get_num]
@cid int,
@infonum int output
AS
declare @tree varchar(150)
select @tree=tree from cata where cid=@cid
select @infonum=count(*) from info where cid in (select cid from cata where tree like @tree+'%')
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF 
GO

CREATE PROCEDURE [dbo].[createrhtml_info_get_relative_info]
@iid int,
@jssize int
AS
declare @keyword varchar
select @keyword=keyword from info where iid=@iid
set rowcount @jssize
select title,ifname from info where keyword like @keyword and keyword<>'' and iid<>@iid
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF 
GO

CREATE PROCEDURE [dbo].[createrhtml_info_get_relative_soft]
@keyword varchar,
@jssize int
AS
set rowcount @jssize
select c.cont_fldr,s.sfname,s.sname,s.edition from cata as c inner join soft as s on charindex(@keyword,s.sname)>0 and c.cid=s.cid
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF 
GO

CREATE PROCEDURE [dbo].[createrhtml_info_move_period]
@timekind varchar(8),
@stime smalldatetime,
@etime smalldatetime,
@scid int,
@cid int
AS
declare @tree varchar(150)
select @tree=tree from cata where cid=@scid
if @timekind='addtime'
	update info set cid=@cid where cid in(select cid from cata where tree like @tree+'%') and addtime<=@etime and addtime>=@stime
if @timekind='newtime'
	update info set cid=@cid where cid in(select cid from cata where tree like @tree+'%') and  newtime<=@etime and newtime>=@stime
if @timekind='notime'
	update info set cid=@cid where cid in(select cid from cata where tree like @tree+'%')
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF 
GO

CREATE PROCEDURE [dbo].[createrhtml_info_move_user]
@uname varchar(10),
@scid int,
@cid int
AS
declare @tree varchar(150)
select @tree=tree from cata where cid=@scid
update info set cid=@cid where cid in(select cid from cata where tree like @tree+'%') and uname=@uname
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF 
GO

CREATE PROCEDURE [dbo].[createrhtml_info_nav_get]
@symbol varchar
AS
select cname,grade,cfname from cata where symbol=@symbol
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF 
GO

CREATE PROCEDURE [dbo].[createrhtml_info_new_get]
@cid int,
@jssize int
AS
declare @tree varchar(150)
select @tree=tree from cata where cid=@cid
set rowcount @jssize
select title,ifname from info where cid in (select cid from cata where tree like @tree+'%') and pass<>0 order by newtime
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF 
GO

CREATE PROCEDURE [dbo].[createrhtml_info_save_add]
@cid int,
@mid int,
@title varchar(255),
@content text,
@keyword varchar(50),
@author varchar(10),
@provenance varchar(20),
@uname varchar(10),
@datetimestr smalldatetime,
@pass int,
@ifname varchar(50)
AS
declare @suffix varchar(8)
select @suffix=suffix from cata where cid=@cid
insert into info (cid,mid,title,content,keyword,author,provenance,uname,addtime,newtime,pass) values(@cid,@mid,@title,@content,@keyword,@author,@provenance,@uname,@datetimestr,@datetimestr,@pass)
update info set ifname=@ifname+cast(@@IDENTITY as varchar(8))+@suffix where iid=@@IDENTITY
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF 
GO

CREATE PROCEDURE [dbo].[createrhtml_info_save_del]
@iid int
AS
delete from info where iid=@iid
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF 
GO

CREATE PROCEDURE [dbo].[createrhtml_info_save_edit]
@iid int,
@cid int,
@mid int,
@title varchar(255),
@author varchar(10),
@provenance varchar(20),
@content text,
@keyword varchar(50),
@datetimestr smalldatetime,
@pass int
AS
update info set cid=@cid,mid=@mid,title=@title,author=@author,provenance=@provenance,content=@content,keyword=@keyword,newtime=@datetimestr,pass=@pass where iid=@iid
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF 
GO

CREATE PROCEDURE [dbo].[createrhtml_info_save_move]
@iid int,
@cid int
AS
update info set cid=@cid where iid=@iid
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF 
GO

CREATE PROCEDURE [dbo].[createrhtml_info_tophit_get]
@cid int,
@jssize int
AS
declare @tree varchar(150)
select @tree=tree from cata where cid=@cid
set rowcount @jssize
select title,ifname from info where cid in (select cid from cata where tree like @tree+'%') and pass<>0 order by hits
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF 
GO

CREATE PROCEDURE [dbo].[createrhtml_model_get_cont]
@mid int
AS
select content from model where mid=@mid
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF 
GO

CREATE PROCEDURE [dbo].[createrhtml_model_get_edit]
@mid int
AS
select symbol,kind,mname,seq,content,designer,contact from model where mid=@mid
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF 
GO

CREATE PROCEDURE [dbo].[createrhtml_model_get_list]
@symbol varchar(10),
@kind int
AS
select mid,mname from model where symbol=@symbol and kind=@kind
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF 
GO

CREATE PROCEDURE [dbo].[createrhtml_model_get_manage]
@symbol varchar(8)
AS
if @symbol='all'
	select mname,mid from model
else
	select mname,mid from model where symbol=@symbol
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF 
GO

CREATE PROCEDURE [dbo].[createrhtml_model_get_num]
@symbol varchar,
@modelnum int output
AS
if @symbol=''
	select @modelnum=count(*) from model
else
	select @modelnum=count(*) from model where symbol=@symbol
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF 
GO

CREATE PROCEDURE [dbo].[createrhtml_model_save_add]
@symbol varchar(8),
@kind int,
@mname varchar(50),
@seq int,
@content text,
@designer varchar(10),
@contact varchar(50)
AS
insert into model (symbol,kind,mname,seq,content,designer,contact) values(@symbol,@kind,@mname,@seq,@content,@designer,@contact)
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF 
GO

CREATE PROCEDURE [dbo].[createrhtml_model_save_del]
@mid int
AS
delete from model where mid=@mid
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF 
GO

CREATE PROCEDURE [dbo].[createrhtml_model_save_edit]
@mid int,
@symbol varchar(8),
@kind int,
@mname varchar(50),
@seq int,
@content text,
@designer varchar(10),
@contact varchar(50)
AS
update model set symbol=@symbol,kind=@kind,mname=@mname,seq=@seq,content=@content,designer=@designer,contact=@contact where mid=@mid
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF 
GO

CREATE PROCEDURE [dbo].[createrhtml_soft_daytopdown_get]
@cid int,
@jssize int
AS
declare @tree varchar(150)
select @tree=tree from cata where cid=@cid
set rowcount @jssize
select sname,edition,sfname from soft where cid in (select cid from cate where tree like @tree+'%') and pass<>0 order by daydowns
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF 
GO

CREATE PROCEDURE [dbo].[createrhtml_soft_delete_byall]
AS
delete from soft
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF 
GO

CREATE PROCEDURE [dbo].[createrhtml_soft_delete_bycata]
@cid int
AS
delete from soft where cid=@cid
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF 
GO

CREATE PROCEDURE [dbo].[createrhtml_soft_delete_bydatetime]
@timekind varchar,
@stime smalldatetime,
@etime smalldatetime
AS
if @timekind='addtime'
	delete from soft where addtime<=@etime and addtime>=@stime
else
	delete from soft where newtime<=@etime and newtime>=@stime
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF 
GO

CREATE PROCEDURE [dbo].[createrhtml_soft_delete_bynew]
@newnum int
AS
set rowcount @newnum
declare del_cur scroll cursor for
	select sid from soft order by newtime
open del_cur
delete from soft where current of del_cur
while @@fetch_status=0
	fetch next from del_cur
set rowcount 0
close del_cur
deallocate del_cur
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF 
GO

CREATE PROCEDURE [dbo].[createrhtml_soft_delete_period]
@timekind varchar(8),
@stime smalldatetime,
@etime smalldatetime,
@cid int
AS
declare @tree varchar(150)
select @tree=tree from cata where cid=@cid
if @timekind='addtime'
	delete from soft where cid in(select cid from cata where tree like @tree+'%') and addtime<=@etime and addtime>=@stime
if @timekind='newtime'
	delete from soft where cid in(select cid from cata where tree like @tree+'%') and  newtime<=@etime and newtime>=@stime
if @timekind='notime'
	delete from soft where cid in(select cid from cata where tree like @tree+'%')
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF 
GO

CREATE PROCEDURE [dbo].[createrhtml_soft_delete_user]
@uname varchar(10),
@cid int
AS
declare @tree varchar(150)
select @tree=tree from cata where cid=@cid
delete from soft where cid in(select cid from cata where tree like @tree+'%') and uname=@uname
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF 
GO

CREATE PROCEDURE [dbo].[createrhtml_soft_edit_save]
@sid int,
@cid int,
@mid int,
@sname varchar,
@edition varchar,
@lang varchar,
@sort varchar,
@mode varchar,
@setting varchar,
@vol varchar,
@linkman varchar,
@linkurl varchar,
@demo varchar,
@pic varchar,
@about text,
@score int,
@datetimestr smalldatetime,
@pass int
AS
update soft set cid=@cid,mid=@mid,sname=@sname,edition=@edition,lang=@lang,sort=@sort,mode=@mode,setting=@setting,vol=@vol,linkman=@linkman,linkurl=@linkurl,demo=@demo,pic=@pic,about=@about,score=@score,newtime=@datetimestr,pass=@pass where sid=@sid
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS OFF 
GO

CREATE PROCEDURE [dbo].[createrhtml_soft_get_cont]
@sid int
AS
select cid,mid,sname,edition,lang,sort,mode,setting,vol,linkman,linkurl,demo,pic,about,score,hits,downs,lastdowntime,daydowns,weekdowns,err,addtime,newtime,uname,sfname from soft where sid=@sid
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF 
GO

CREATE PROCEDURE [dbo].[createrhtml_soft_get_count_byall]
@recordcount int output
AS
select @recordcount=count(*) from soft where cid in (select cid from cata where symbol='info')
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF 
GO

CREATE PROCEDURE [dbo].[createrhtml_soft_get_count_bycata]
@cid int,
@recordcount int output
AS
declare @tree varchar
select @tree=tree from cata where cid=@cid
select @recordcount=count(*) from soft where cid in (select cid from cata where tree like @tree+'%')
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF 
GO

CREATE PROCEDURE [dbo].[createrhtml_soft_get_count_bydatetime]
@timekind varchar,
@stime smalldatetime,
@etime smalldatetime,
@recordcount int output
AS
if @timekind='addtime'
	select @recordcount=count(*) from soft where addtime<=@etime and addtime>=@stime
else
	select @recordcount=count(*) from soft where newtime<=@etime and newtime>=@stime
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF 
GO

CREATE PROCEDURE [dbo].[createrhtml_soft_get_count_period]
@timekind varchar(8),
@stime smalldatetime,
@etime smalldatetime,
@cid int,
@recordcount int output
AS
declare @tree varchar(150)
select @tree=tree from cata where cid=@cid
if @timekind='addtime'
	select @recordcount=count(*) from soft where cid in(select cid from cata where tree like @tree+'%') and addtime<=@etime and addtime>=@stime
if @timekind='newtime'
	select @recordcount=count(*) from soft where cid in(select cid from cata where tree like @tree+'%') and newtime<=@etime and newtime>=@stime
if @timekind='notime'
	select @recordcount=count(*) from soft where cid in(select cid from cata where tree like @tree+'%')
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF 
GO

CREATE PROCEDURE [dbo].[createrhtml_soft_get_count_user]
@uname varchar(10),
@cid int,
@recordcount int output
AS
declare @tree varchar(150)
select @tree=tree from cata where cid=@cid
select @recordcount=count(*) from soft where cid in(select cid from cata where tree like @tree+'%') and uname=@uname
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS OFF 
GO

CREATE PROCEDURE [dbo].[createrhtml_soft_get_downlist]
@sid int
AS
select urlname,seq,sid from softurl where sid=@sid
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF 
GO

CREATE PROCEDURE [dbo].[createrhtml_soft_get_edit]
@sid int
AS
select cid,mid,sname,edition,lang,sort,mode,setting,vol,linkman,linkurl,demo,pic,about,score,pass from soft where sid=@sid
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS OFF 
GO

CREATE PROCEDURE [dbo].[createrhtml_soft_get_list]
@cid int,
@pageno int,
@pagesize int
AS
declare @tree varchar(150)
select @tree=tree from cata where cid=@cid
declare @start int,@end int
select @start=(@pageno-1)*@pagesize+1
select @end=@pageno*@pagesize
set rowcount @end
declare list_cur scroll cursor for
	select s.sid,(s.sname+' '+s.edition) as softname,s.newtime,s.sfname,s.groom,s.stage,c.cont_fldr from cata as c inner join soft as s on s.cid in (select cid from cata where tree like @tree+'%') and s.cid=c.cid
open list_cur
fetch absolute @start from list_cur
while @@fetch_status=0
	fetch next from list_cur
set rowcount 0
close list_cur
deallocate list_cur
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF 
GO

CREATE PROCEDURE [dbo].[createrhtml_soft_get_num]
@cid int,
@softnum int output
AS
declare @tree varchar(150)
select @tree=tree from cata where cid=@cid
select @softnum=count(*) from soft where cid in (select cid from cata where tree like @tree+'%')
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF 
GO

CREATE PROCEDURE [dbo].[createrhtml_soft_get_relative_info]
@sname varchar,
@jssize int
AS
set rowcount @jssize
select c.cont_fldr,i.ifname,i.title from cata as c inner join info as i on charindex(i.keyword,@sname)>0 and c.cid=i.cid
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF 
GO

CREATE PROCEDURE [dbo].[createrhtml_soft_get_relative_soft]
@sid int,
@jssize int
AS
declare @sname varchar
select @sname=sname from soft where sid=@sid
set rowcount @jssize
select sname,sfname from soft where sname like @sname and sname<>'' and sid<>@sid
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF 
GO

CREATE PROCEDURE [dbo].[createrhtml_soft_get_sfname]
@sid int
AS
select cid,sfname from soft where sid=@sid
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF 
GO

CREATE PROCEDURE [dbo].[createrhtml_soft_get_sid_byall]
@pageno int
AS
declare @start int,@end int
select @start=(@pageno-1)*100+1
select @end=@pageno*100
set rowcount @end
declare byall_cur scroll cursor for
	select sid from soft where cid in (select cid from cata where symbol='info')
open byall_cur
fetch absolute @start from byall_cur
while @@fetch_status=0
	fetch next from byall_cur
set rowcount 0
close byall_cur
deallocate byall_cur
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF 
GO

CREATE PROCEDURE [dbo].[createrhtml_soft_get_sid_bycata]
@pageno int,
@cid int
AS
declare @tree varchar
select @tree=tree from cata where cid=@cid
declare @start int,@end int
select @start=(@pageno-1)*100+1
select @end=@pageno*100
set rowcount @end
declare bycata_cur scroll cursor for
	select sid from soft where cid in (select cid from cata where tree like @tree+'%')
open bycata_cur
fetch absolute @start from bycata_cur
while @@fetch_status=0
	fetch next from bycata_cur
set rowcount 0
close bycata_cur
deallocate bycata_cur
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF 
GO

CREATE PROCEDURE [dbo].[createrhtml_soft_get_sid_bydatetime]
@pageno int,
@timekind varchar,
@stime smalldatetime,
@etime smalldatetime
AS
declare @start int,@end int
select @start=(@pageno-1)*100+1
select @end=@pageno*100
set rowcount @end
if @timekind='addtime'
	declare bytime_cur scroll cursor for
	select sid from soft where addtime<=@etime and addtime>=@stime
else
	declare bytime_cur scroll cursor for
	select sid from soft where newtime<=@etime and newtime>=@stime
open bytime_cur
fetch absolute @start from bytime_cur
while @@fetch_status=0
	fetch next from bytime_cur
set rowcount 0
close bytime_cur
deallocate bytime_cur
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF 
GO

CREATE PROCEDURE [dbo].[createrhtml_soft_get_sid_bynew]
@pageno int,
@newnum int
AS
declare @start int,@end int
select @start=(@pageno-1)*100+1
select @end=@pageno*100
set rowcount @end
declare bynew_cur scroll cursor for
	select sid from soft order by newtime
open bynew_cur
fetch absolute @start from bynew_cur
while @@fetch_status=0
	fetch next from bynew_cur
set rowcount 0
close bynew_cur
deallocate bynew_cur
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF 
GO

CREATE PROCEDURE [dbo].[createrhtml_soft_get_sid_period]
@pageno int,
@timekind varchar(8),
@stime smalldatetime,
@etime smalldatetime,
@cid int
AS
declare @tree varchar(150)
select @tree=tree from cata where cid=@cid
declare @start int,@end int
select @start=(@pageno-1)*100+1
select @end=@pageno*100
set rowcount @end
if @timekind='addtime'
	declare period_cur scroll cursor for
		select sid from soft where cid in(select cid from cata where tree like @tree+'%') and addtime<=@etime and addtime>=@stime
if @timekind='newtime'
	declare period_cur scroll cursor for
		select sid from soft where cid in(select cid from cata where tree like @tree+'%') and newtime<=@etime and newtime>=@stime
if @timekind='notime'
	declare period_cur scroll cursor for
		select sid from soft where cid in(select cid from cata where tree like @tree+'%')
open period_cur
fetch absolute @start from period_cur
while @@fetch_status=0
	fetch next from period_cur
set rowcount 0
close period_cur
deallocate period_cur
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF 
GO

CREATE PROCEDURE [dbo].[createrhtml_soft_get_sid_user]
@pageno int,
@uname varchar(10),
@cid int
AS
declare @tree varchar(150)
select @tree=tree from cata where cid=@cid
declare @start int,@end int
select @start=(@pageno-1)*100+1
select @end=@pageno*100
set rowcount @end
declare user_cur scroll cursor for
	select sid from soft where cid in(select cid from cata where tree like @tree+'%') and uname=@uname
open user_cur
fetch absolute @start from user_cur
while @@fetch_status=0
	fetch next from user_cur
set rowcount 0
close user_cur
deallocate user_cur
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS OFF 
GO

CREATE PROCEDURE [dbo].[createrhtml_soft_get_url]
@sid int,
@seq int,
@url varchar output,
@sfname varchar output
AS
select @url=url,@sfname=sfname from softurl where sid=@sid and seq=@seq
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF 
GO

CREATE PROCEDURE [dbo].[createrhtml_soft_move_period]
@timekind varchar(8),
@stime smalldatetime,
@etime smalldatetime,
@scid int,
@cid int
AS
declare @tree varchar(150)
select @tree=tree from cata where cid=@scid
if @timekind='addtime'
	update soft set cid=@cid where cid in(select cid from cata where tree like @tree+'%') and addtime<=@etime and addtime>=@stime
if @timekind='newtime'
	update soft set cid=@cid where cid in(select cid from cata where tree like @tree+'%') and  newtime<=@etime and newtime>=@stime
if @timekind='notime'
	update soft set cid=@cid where cid in(select cid from cata where tree like @tree+'%')
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF 
GO

CREATE PROCEDURE [dbo].[createrhtml_soft_move_user]
@uname varchar(10),
@scid int,
@cid int
AS
declare @tree varchar(150)
select @tree=tree from cata where cid=@scid
update soft set cid=@cid where cid in(select cid from cata where tree like @tree+'%') and uname=@uname
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF 
GO

CREATE PROCEDURE [dbo].[createrhtml_soft_nav_get]
@symbol varchar
AS
select cname,grade,cfname from cata where symbol=@symbol
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF 
GO

CREATE PROCEDURE [dbo].[createrhtml_soft_new_get]
@cid int,
@jssize int
AS
declare @tree varchar(150)
select @tree=tree from cata where cid=@cid
set rowcount @jssize
select sname,edition,sfname from soft where cid in (select cid from cata where tree like @tree+'%') and pass<>0 order by newtime
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF 
GO

CREATE PROCEDURE [dbo].[createrhtml_soft_save_add]
@cid int,
@mid int,
@sname varchar(255),
@edition varchar(50),
@lang varchar(10),
@sort varchar(10),
@mode varchar(10),
@setting varchar(10),
@vol varchar(4),
@linkman varchar(150),
@linkurl varchar(150),
@demo varchar(150),
@pic varchar(150),
@about text,
@score int,
@datetimestr smalldatetime,
@uname varchar(10),
@pass int,
@sfname varchar(50)
AS
declare @suffix varchar(8)
select @suffix=suffix from cata where cid=@cid
insert into soft (cid,mid,sname,edition,lang,sort,mode,setting,vol,linkman,linkurl,demo,pic,about,score,addtime,newtime,uname,pass) values(@cid,@mid,@sname,@edition,@lang,@sort,@mode,@setting,@vol,@linkman,@linkurl,@demo,@pic,@about,@score,@datetimestr,@datetimestr,@uname,@pass)
update soft set sfname=@sfname+cast(@@IDENTITY as varchar(8))+@suffix where sid=@@IDENTITY
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF 
GO

CREATE PROCEDURE [dbo].[createrhtml_soft_save_del]
@sid int
AS
delete from soft where sid=@sid
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS OFF 
GO

CREATE PROCEDURE [dbo].[createrhtml_soft_save_edit]
@sid int,
@cid int,
@mid int,
@sname varchar(255),
@edition varchar(50),
@lang varchar(10),
@sort varchar(10),
@mode varchar(10),
@setting varchar(10),
@vol varchar(6),
@linkman varchar(150),
@linkurl varchar(150),
@demo varchar(150),
@pic varchar(150),
@about text,
@score int,
@datetimestr smalldatetime,
@pass int
AS
update soft set cid=@cid,mid=@mid,sname=@sname,edition=@edition,lang=@lang,sort=@sort,mode=@mode,setting=@setting,vol=@vol,linkman=@linkman,linkurl=@linkurl,demo=@demo,pic=@pic,about=@about,score=@score,newtime=@datetimestr,pass=@pass where sid=@sid
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF 
GO

CREATE PROCEDURE [dbo].[createrhtml_soft_save_move]
@sid int,
@cid int
AS
update soft set cid=@cid where sid=@sid
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF 
GO

CREATE PROCEDURE [dbo].[createrhtml_soft_topdown_get]
@cid int,
@jssize int
AS
declare @tree varchar(150)
select @tree=tree from cata where cid=@cid
set rowcount @jssize
select sname,edition,sfname from soft where cid in (select cid from cata where tree like @tree+'%') and pass<>0 order by downs
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF 
GO

CREATE PROCEDURE [dbo].[createrhtml_soft_tophit_get]
@cid int,
@jssize int
AS
declare @tree varchar(150)
select @tree=tree from cata where cid=@cid
set rowcount @jssize
select sname,edition,sfname from soft where cid in (select cid from cata where tree like @tree+'%') and pass<>0 order by hits
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF 
GO

CREATE PROCEDURE [dbo].[createrhtml_soft_update_down]
@sid int
AS
update soft set downs=downs+1 where sid=@sid
declare @lastdowntime smalldatetime
select @lastdowntime=lastdowntime from soft where sid=@sid
if @lastdowntime=getdate()
	update soft set daydowns=daydowns+1 where sid=@sid
else
	update soft set daydowns=1 where sid=@sid
declare @pyear int,@pmonth int,@pday int,@ptime int
select @pyear=cast(year(getdate()) as int)-cast(year(@lastdowntime) as int)
select @pmonth=cast(month(getdate()) as int)-cast(month(@lastdowntime) as int)
select @pday=cast(day(getdate()) as int)-cast(day(@lastdowntime) as int)
select @ptime=(@pyear*12+@pmonth)*30+@pday
if @ptime<=7
	update soft set weekdowns=weekdowns+1 where sid=@sid
else
	update soft set weekdowns=1 where sid=@sid
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF 
GO

CREATE PROCEDURE [dbo].[createrhtml_soft_weektopdown_get]
@cid int,
@jssize int
AS
declare @tree varchar(150)
select @tree=tree from cata where cid=@cid
set rowcount @jssize
select sname,edition,sfname from soft where cid in (select cid from cata where tree like @tree+'%') and pass<>0 order by weekdowns
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF 
GO

CREATE PROCEDURE [dbo].[createrhtml_user_get_edit]
@uid int
AS
select uname,upassword,truename,qq,email,address,locked,mace from users where uid=@uid
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF 
GO

CREATE PROCEDURE [dbo].[createrhtml_user_get_list]
AS
select uname from users
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF 
GO

CREATE PROCEDURE [dbo].[createrhtml_user_get_manage]
AS
select uid,uname from users
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF 
GO

CREATE PROCEDURE [dbo].[createrhtml_user_get_upassword]
@uid int
AS
select upassword from users where uid=@uid
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS OFF 
GO

CREATE PROCEDURE [dbo].[createrhtml_user_login_check]
@uname varchar,
@upassword varchar
AS
select uname,flag from admin where uname=@uname and upassword=@upassword
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS OFF 
GO

CREATE PROCEDURE [dbo].[createrhtml_user_login_dlog]
@uname varchar,
@result varchar,
@loginip varchar,
@loginos varchar,
@errorpassword varchar
AS
insert into dlog (uname,result,loginip,loginos,errorpassword) values(@uname,@result,@loginip,@loginos,@errorpassword)
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS OFF 
GO

CREATE PROCEDURE [dbo].[createrhtml_user_login_update]
@uname varchar,
@loginip varchar
AS
update users set lastlogintime=getdate(),lastloginip=@loginip where uname=@uname
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF 
GO

CREATE PROCEDURE [dbo].[createrhtml_user_save_add]
@uname varchar(10),
@upassword varchar(20),
@truename varchar(10),
@qq varchar(15),
@email varchar(150),
@address varchar(50)
AS
insert into users(uname,upassword,truename,qq,email,address) values(@uname,@upassword,@truename,@qq,@email,@address)
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF 
GO

CREATE PROCEDURE [dbo].[createrhtml_user_save_del]
@uid int
AS
delete from users where uid=@uid
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF 
GO

CREATE PROCEDURE [dbo].[createrhtml_user_save_edit]
@uid int,
@uname varchar(10),
@upassword varchar(20),
@truename varchar(10),
@qq varchar(15),
@email varchar(150),
@address varchar(50),
@locked int,
@mace text
AS
update users set uname=@uname,upassword=@upassword,truename=@truename,qq=@qq,email=@email,address=@address,locked=@locked,mace=@mace where uid=@uid
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

