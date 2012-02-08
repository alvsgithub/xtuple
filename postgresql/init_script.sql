﻿-- [ START ] initdb

-- create schemas
\i create_private_schema.sql;
\i create_xm_schema.sql;

-- create languages
\i create_plv8.sql;

-- [ END ] initdb

-- [ START ] core

-- core/global functions
\i core/global/private/functions/add_column.sql;
\i core/global/private/functions/add_constraint.sql;
\i core/global/private/functions/add_primary_key.sql;
\i core/global/private/functions/any_numeric.sql;
\i core/global/private/functions/any_text.sql;
\i core/global/private/functions/commit_record.sql;
\i core/global/private/functions/create_model.sql;
\i core/global/private/functions/create_table.sql;
\i core/global/private/functions/create_model_view.sql;
\i core/global/private/functions/drop_model_view.sql;
\i core/global/private/functions/ends_with.sql;
\i core/global/private/functions/execute_query.sql;
\i core/global/private/functions/extend_model.sql;
\i core/global/private/functions/fetch.sql;
\i core/global/private/functions/get_id.sql;
\i core/global/private/functions/is_date.sql;
\i core/global/private/functions/raise_exception.sql;
\i core/global/private/functions/retrieve_record.sql;
\i core/global/private/functions/starts_with.sql;
\i core/global/private/functions/text_gt_date.sql;
\i core/global/private/functions/text_lt_date.sql;
\i core/global/private/functions/session_privilege.sql;
\i core/global/private/functions/session_metrics.sql;
\i core/global/private/functions/session_locale.sql;

-- core/trigger functions
\i core/global/private/trigger_functions/model_changed.sql

-- core/global tables
\i core/global/private/tables/model.sql
\i core/global/private/tables/modelext.sql
\i core/global/private/tables/modelbas.sql

-- core/operators
\i core/global/private/operators/any_numeric.sql;
\i core/global/private/operators/any_text.sql;
\i core/global/private/operators/ends_with.sql;
\i core/global/private/operators/starts_with.sql;
\i core/global/private/operators/text_gt_date.sql;
\i core/global/private/operators/text_lt_date.sql;

-- core/user_account triggers
\i core/user_account/private/trigger_functions/useracct_duplicate_check.sql;

-- core/user_account tables
\i core/user_account/private/tables/useracct.sql;

-- core/user_account views
\i core/user_account/private/views/usr.sql;

-- core/global/xm/functions
\i core/global/xm/functions/dispatch.sql;
\i core/global/xm/functions/fetch_number.sql;
\i core/global/xm/functions/fetch_id.sql;

-- core/user_account xm models
\i core/user_account/xm/models/privilege.sql;
\i core/user_account/xm/models/language.sql;
\i core/user_account/xm/models/locale.sql;
\i core/user_account/xm/models/user_account_role.sql;
\i core/user_account/xm/models/user_account_user_account_role_assignment.sql;
\i core/user_account/xm/models/user_account_privilege_assignment.sql;
\i core/user_account/xm/models/user_account_role_privilege_assignment.sql;
\i core/user_account/xm/models/user_account_info.sql;
\i core/user_account/xm/models/user_account.sql;

-- core/characteristic xm models
\i core/characteristic/xm/models/characteristic.sql;
\i core/characteristic/xm/models/characteristic_assignment.sql;
\i core/characteristic/xm/models/characteristic_option.sql;

-- core/comment xm views
\i core/comment/xm/models/comment.sql;
\i core/comment/xm/models/comment_type.sql;

-- core/document xm views
\i core/document/private/views/docinfo.sql; 

-- core/document xm views
\i core/document/xm/models/file.sql;
\i core/document/xm/models/file_info.sql;
\i core/document/xm/models/image.sql;
\i core/document/xm/models/image_info.sql;
\i core/document/xm/models/url.sql;

-- core/item view (needed for contact_contact)
\i core/item/xm/models/item_info.sql;

-- core/address xm functions
\i core/address/xm/functions/address_find_existing.sql;
\i core/address/xm/functions/address_use_count.sql;

-- core/address xm models
\i core/address/xm/models/address_characteristic.sql;
\i core/address/xm/models/address_comment.sql;
\i core/address/xm/models/state.sql;
\i core/address/xm/models/country.sql;
\i core/address/xm/models/address.sql;
\i core/address/xm/models/address_info.sql;

-- core/contact xm models
\i core/contact/xm/models/contact_characteristic.sql;
\i core/contact/xm/models/contact_comment.sql;
\i core/contact/xm/models/contact_email.sql;
\i core/contact/xm/models/contact_info.sql;
\i core/contact/xm/models/contact_contact.sql;
\i core/contact/xm/models/contact_file.sql;
\i core/contact/xm/models/contact_image.sql;
\i core/contact/xm/models/contact_item.sql;
\i core/contact/xm/models/contact_url.sql;
\i core/contact/xm/models/contact.sql;
\i core/contact/xm/models/honorific.sql;

-- core/currency xm views
\i core/currency/xm/models/currency_rate.sql;
\i core/currency/xm/models/currency.sql;

-- core/item xm views
\i core/item/xm/models/item_alias.sql; 
\i core/item/xm/models/item_characteristic.sql;
\i core/item/xm/models/item_comment.sql;
\i core/item/xm/models/item_conversion.sql;
\i core/item/xm/models/item_conversion_type_assignment.sql;
\i core/item/xm/models/item_substitute.sql;
\i core/item/xm/models/item_cost.sql;
\i core/item/xm/models/item_contact.sql;
\i core/item/xm/models/item_file.sql;
\i core/item/xm/models/item_image.sql;
\i core/item/xm/models/item_item.sql;
\i core/item/xm/models/item_url.sql;
\i core/item/xm/models/item.sql;

-- core/priority xm views 
\i core/priority/xm/models/priority.sql;

-- core/site xm models 
\i core/site/xm/models/site_comment.sql;
\i core/site/xm/models/site_type.sql;
\i core/site/xm/models/site_zone.sql;
\i core/site/xm/models/site_info.sql;
\i core/site/xm/models/site.sql;

-- core/unit xm models
\i core/unit/xm/models/unit_conversion.sql;
\i core/unit/xm/models/unit.sql;
-- [ END ] core

-- [ START ] extensions
-- extensions/account xm models
\i extensions/account/xm/models/account_info.sql;
\i extensions/account/xm/models/account_contact.sql;
\i extensions/account/xm/models/account_file.sql;
\i extensions/account/xm/models/account_image.sql;
\i extensions/account/xm/models/account_item.sql;
\i extensions/account/xm/models/account_url.sql;
\i extensions/account/xm/models/account_account.sql;
\i extensions/account/xm/models/account_characteristic.sql;
\i extensions/account/xm/models/account_comment.sql;
\i extensions/account/xm/models/account.sql;

-- extensions/incident xm models
\i extensions/incident/xm/models/incident_alarm.sql;
\i extensions/incident/xm/models/incident_category.sql;
\i extensions/incident/xm/models/incident_characteristic.sql;
\i extensions/incident/xm/models/incident_comment.sql;
\i extensions/incident/xm/models/incident_history.sql;
\i extensions/incident/xm/models/incident_info.sql;
\i extensions/incident/xm/models/incident_contact.sql;
\i extensions/incident/xm/models/incident_file.sql;
\i extensions/incident/xm/models/incident_image.sql;
\i extensions/incident/xm/models/incident_item.sql;
\i extensions/incident/xm/models/incident_url.sql;
\i extensions/incident/xm/models/incident_incident.sql;
\i extensions/incident/xm/models/incident_resolution.sql;
\i extensions/incident/xm/models/incident_severity.sql;
\i extensions/incident/xm/models/incident.sql;
\i extensions/incident/xm/models/incident_recurrence.sql;

-- extensions/opportunity xm models
\i extensions/opportunity/xm/models/opportunity_characteristic.sql;
\i extensions/opportunity/xm/models/opportunity_comment.sql;
\i extensions/opportunity/xm/models/opportunity_info.sql;
\i extensions/opportunity/xm/models/opportunity_contact.sql;
\i extensions/opportunity/xm/models/opportunity_file.sql;
\i extensions/opportunity/xm/models/opportunity_image.sql;
\i extensions/opportunity/xm/models/opportunity_item.sql;
\i extensions/opportunity/xm/models/opportunity_url.sql;
\i extensions/opportunity/xm/models/opportunity_opportunity.sql;
\i extensions/opportunity/xm/models/opportunity_source.sql;
\i extensions/opportunity/xm/models/opportunity_stage.sql;
\i extensions/opportunity/xm/models/opportunity_type.sql;
\i extensions/opportunity/xm/models/opportunity.sql;

-- extensions/project xm models
\i extensions/project/xm/models/project_info.sql;
\i extensions/project/xm/models/project_contact.sql;
\i extensions/project/xm/models/project_file.sql;
\i extensions/project/xm/models/project_image.sql;
\i extensions/project/xm/models/project_item.sql;
\i extensions/project/xm/models/project_url.sql;
\i extensions/project/xm/models/project_project.sql;
\i extensions/project/xm/models/project_comment.sql;
\i extensions/project/xm/models/project_task_alarm.sql;
\i extensions/project/xm/models/project_task_comment.sql;
\i extensions/project/xm/models/project_task.sql;
\i extensions/project/xm/models/project.sql;
\i extensions/project/xm/models/project_recurrence.sql;

-- extensions/todo xm models
\i extensions/todo/xm/models/to_do_alarm.sql;
\i extensions/todo/xm/models/to_do_comment.sql;
\i extensions/todo/xm/models/to_do_info.sql;
\i extensions/todo/xm/models/to_do_contact.sql;
\i extensions/todo/xm/models/to_do_file.sql;
\i extensions/todo/xm/models/to_do_image.sql;
\i extensions/todo/xm/models/to_do_item.sql;
\i extensions/todo/xm/models/to_do_url.sql;
\i extensions/todo/xm/models/to_do_to_do.sql;
\i extensions/todo/xm/models/to_do.sql;
\i extensions/todo/xm/models/to_do_recurrence.sql;

-- extensions/crm
\i extensions/crm/models/contact.sql;

-- [ END ] extensions
