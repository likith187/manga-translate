.class public final Lcom/oplus/aiunit/core/data/ParamsKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final LLM_STATUS_FAILED:I = 0x2

.field public static final LLM_STATUS_NO_NEED:I = -0x1

.field public static final LLM_STATUS_NO_QUEUE:I = 0x0

.field public static final LLM_STATUS_SUCCESS:I = 0x3

.field public static final METHOD_CHECK_UNIT_SUPPORTED:Ljava/lang/String; = "check_unit_supported"

.field public static final METHOD_COMMON_CALL:Ljava/lang/String; = "common_call"

.field public static final METHOD_INNER_CALL:Ljava/lang/String; = "inner_call"

.field public static final PARAM_CORE_SDK_VERSION:Ljava/lang/String; = "package::core_sdk_version"

.field public static final PARAM_INIT_DURATION_TIME:Ljava/lang/String; = "package::cost_time"

.field public static final PARAM_INIT_START_TIME:Ljava/lang/String; = "package::start_time"

.field public static final PARAM_KEY_ACTIVITY_INTENT_DATA:Ljava/lang/String; = "ai::key::activity_intent_data"

.field public static final PARAM_KEY_AIUNIT_OCS_SWITCH:Ljava/lang/String; = "package::aiunit_ocs_switch"

.field public static final PARAM_KEY_API_LEVEL:Ljava/lang/String; = "package::unit_api_level"

.field public static final PARAM_KEY_AUTHORIZE_RESULT_CODE:Ljava/lang/String; = "ai::key::authorize_result_code"

.field public static final PARAM_KEY_AUTHORIZE_STATUS:Ljava/lang/String; = "ai::key::authorize_status"

.field public static final PARAM_KEY_AUTH_STYLE:Ljava/lang/String; = "package::auth_style"

.field public static final PARAM_KEY_CALL_STATUS:Ljava/lang/String; = "ai::key::call_status"

.field public static final PARAM_KEY_CLIENT_MESSENGER:Ljava/lang/String; = "package:client_messenger"

.field public static final PARAM_KEY_CLIENT_PACKAGE_NAME:Ljava/lang/String; = "package::client_package_name"

.field public static final PARAM_KEY_CLIENT_PID:Ljava/lang/String; = "package::client_pid"

.field public static final PARAM_KEY_CLIENT_PROTOCOL:Ljava/lang/String; = "ai::key::client_protocol"

.field public static final PARAM_KEY_CLIENT_UID:Ljava/lang/String; = "package::client_uid"

.field public static final PARAM_KEY_COMMON_CALLBACK:Ljava/lang/String; = "ai::key::ai_callback"

.field public static final PARAM_KEY_CONFIG_LIST:Ljava/lang/String; = "package::ai_config_list"

.field public static final PARAM_KEY_CONFIG_PACKAGE:Ljava/lang/String; = "package::config_package"

.field public static final PARAM_KEY_CONFIG_UUID:Ljava/lang/String; = "package::config_uuid"

.field public static final PARAM_KEY_CUSTOM_PLUGIN_ERROR_MSG:Ljava/lang/String; = "ai::key::custom_plugin_error_msg"

.field public static final PARAM_KEY_DETECTOR_EXTRAS:Ljava/lang/String; = "ai::key::detector_extras"

.field public static final PARAM_KEY_DETECTOR_TYPE:Ljava/lang/String; = "package::detector_type"

.field public static final PARAM_KEY_DETECT_CONFIG_LAST_UPDATE_TIME:Ljava/lang/String; = "package::detect_config_last_update_time"

.field public static final PARAM_KEY_DETECT_DATA_AVAILABLE:Ljava/lang/String; = "ai::key::detect_data_available"

.field public static final PARAM_KEY_DETECT_DATA_LIST:Ljava/lang/String; = "package::detect_data_list"

.field public static final PARAM_KEY_DETECT_DATA_LLM:Ljava/lang/String; = "ai::key::detect_data_llm"

.field public static final PARAM_KEY_DETECT_DATA_RUN_TYPE:Ljava/lang/String; = "ai::key::detect_data_run_type"

.field public static final PARAM_KEY_DETECT_DATA_STATE:Ljava/lang/String; = "ai::key::detect_data_state"

.field public static final PARAM_KEY_DETECT_DATA_UNAVAILABLE_SELF:Ljava/lang/String; = "ai::key::detect_data_unavailable_self"

.field public static final PARAM_KEY_DETECT_DATA_UNIT_INFO_LIST:Ljava/lang/String; = "ai::key::detect_data_unit_info_list"

.field public static final PARAM_KEY_DETECT_DOWNLOAD_SIZE:Ljava/lang/String; = "ai::key::detect_download_size"

.field public static final PARAM_KEY_DETECT_LIST:Ljava/lang/String; = "package::detect_name_list"

.field public static final PARAM_KEY_DETECT_NAME:Ljava/lang/String; = "package::unit_name"

.field public static final PARAM_KEY_DETECT_NAME_NEW:Ljava/lang/String; = "package::detect_name"

.field public static final PARAM_KEY_DIALOG_TYPE:Ljava/lang/String; = "ai::key::dialog_type"

.field public static final PARAM_KEY_DISABLE_TOAST:Ljava/lang/String; = "ai::key::disable_toast"

.field public static final PARAM_KEY_DOWNLOAD_ENABLE:Ljava/lang/String; = "ai::key::download_enable"

.field public static final PARAM_KEY_DOWNLOAD_GROUP:Ljava/lang/String; = "ai::key::download_group"

.field public static final PARAM_KEY_DOWNLOAD_PRIORITY:Ljava/lang/String; = "ai::key::download_priority"

.field public static final PARAM_KEY_ERROR_CODE:Ljava/lang/String; = "package::error_code"

.field public static final PARAM_KEY_ERROR_MESSAGE:Ljava/lang/String; = "package::error_message"

.field public static final PARAM_KEY_FILTER_ATTACH_LOCAL_LLM:Ljava/lang/String; = "ai::key::filter_attach_local_llm"

.field public static final PARAM_KEY_FILTER_LOCAL_LLM:Ljava/lang/String; = "ai::key::filter_local_llm"

.field public static final PARAM_KEY_INFERENCE_CALLBACK:Ljava/lang/String; = "package::inference_callback"

.field public static final PARAM_KEY_LLM_MODELS_STATUS:Ljava/lang/String; = "ai::key::llm_model_status"

.field public static final PARAM_KEY_LLM_QUEUE_STATUS:Ljava/lang/String; = "ai::key::llm_queue_status"

.field public static final PARAM_KEY_LLM_SETTINGS_LIST:Ljava/lang/String; = "ai::key::llm_settings_list"

.field public static final PARAM_KEY_LLM_USER_PREFERENCE_RESULT:Ljava/lang/String; = "ai::key::llm_user_preference_result"

.field public static final PARAM_KEY_LLM_USER_PREFERENCE_SETTINGS:Ljava/lang/String; = "ai::key::llm_user_preference_settings"

.field public static final PARAM_KEY_LOCAL_DETECT_STATUS:Ljava/lang/String; = "ai::value::local_detect_status"

.field public static final PARAM_KEY_LOCAL_DETECT_SWITCH:Ljava/lang/String; = "ai::value::local_detect_switch"

.field public static final PARAM_KEY_LOCAL_DETECT_SWITCH_AUTO:Ljava/lang/String; = "ai::value::local_detect_switch_auto"

.field public static final PARAM_KEY_METHOD_CALL_SOC:Ljava/lang/String; = "ai::key::method_call_soc"

.field public static final PARAM_KEY_METHOD_COMMON_CALL:Ljava/lang/String; = "ai::key::method_call"

.field public static final PARAM_KEY_NEED_CONFIG_UPDATE_TIME:Ljava/lang/String; = "ai::key::need_config_update_time"

.field public static final PARAM_KEY_NOTICE_DIALOG_TYPE:Ljava/lang/String; = "ai::key::notice_dialog_type"

.field public static final PARAM_KEY_OAP_API:Ljava/lang/String; = "package::unit_name"

.field public static final PARAM_KEY_OAP_ID:Ljava/lang/String; = "package::detector_type"

.field public static final PARAM_KEY_OPLUS_VERSION:Ljava/lang/String; = "ai::key::oplus_version"

.field public static final PARAM_KEY_OTA_VERSION:Ljava/lang/String; = "ai::key::ota_version"

.field public static final PARAM_KEY_PACKAGE_NAME:Ljava/lang/String; = "package::package_name"

.field public static final PARAM_KEY_PACKAGE_VERSION:Ljava/lang/String; = "package::package_version"

.field public static final PARAM_KEY_PRIVACY_LOAD:Ljava/lang/String; = "ai::key_privacy_load"

.field public static final PARAM_KEY_PRIVACY_STATUS:Ljava/lang/String; = "ai::key::privacy_status"

.field public static final PARAM_KEY_PRIVACY_UI_VISIBLE:Ljava/lang/String; = "ai::value::privacy_ui_visible"

.field public static final PARAM_KEY_PROCESS_RETRY:Ljava/lang/String; = "ai::key::process_retry"

.field public static final PARAM_KEY_REQUEST_CONFIG_UPDATE_RESULT:Ljava/lang/String; = "package::request_config_update_result"

.field public static final PARAM_KEY_SCENE_DOWNLOAD_SIZE:Ljava/lang/String; = "ai::key::scene_download_size"

.field public static final PARAM_KEY_SCENE_DOWNLOAD_TYPE:Ljava/lang/String; = "ai::key::scene_download_type"

.field public static final PARAM_KEY_SCENE_NAME:Ljava/lang/String; = "package::scene_name"

.field public static final PARAM_KEY_SCENE_SUPPORT:Ljava/lang/String; = "ai::key::scene_support"

.field public static final PARAM_KEY_SDK_VERSION:Ljava/lang/String; = "package::sdk_version"

.field public static final PARAM_KEY_SDK_VERSION_NAME:Ljava/lang/String; = "package::sdk_version_name"

.field public static final PARAM_KEY_SELL_MODE:Ljava/lang/String; = "ai::key::sell_mode"

.field public static final PARAM_KEY_SETTINGS_CALLBACK_TYPE:Ljava/lang/String; = "ai::key::settings_callback_type"

.field public static final PARAM_KEY_SETTINGS_ENABLE:Ljava/lang/String; = "ai::key::settings_enable"

.field public static final PARAM_KEY_SETTINGS_GUIDE_ENABLE:Ljava/lang/String; = "ai::key::settings_guide_enable"

.field public static final PARAM_KEY_SETTINGS_STATUS:Ljava/lang/String; = "ai::key::settings_status"

.field public static final PARAM_KEY_SETTINGS_UI_STATUS:Ljava/lang/String; = "ai::key::settings_ui_status"

.field public static final PARAM_KEY_UNIT_CHECK_SUPPORTED_RESULT:Ljava/lang/String; = "package::unit_supported"

.field public static final PARAM_KEY_UNIT_CUSTOM:Ljava/lang/String; = "ai::key::unit_config_custom"

.field public static final PARAM_KEY_UNIT_ID:Ljava/lang/String; = "package::unit_id"

.field public static final PARAM_KEY_UNIT_ID_LIST:Ljava/lang/String; = "package::unit_id_list"

.field public static final PARAM_KEY_UNIT_LISTENER:Ljava/lang/String; = "package::unit_listener"

.field public static final PARAM_KEY_UNIT_NAME:Ljava/lang/String; = "package::unit_name"

.field public static final PARAM_KEY_UNIT_VERSION:Ljava/lang/String; = "package::unit_version"

.field public static final PARAM_PARAMETERS_PERFORMANCE_OCR_AR:Ljava/lang/String; = "package::parameters_performance::ocr_ar"

.field public static final PARAM_PARAMETERS_PERFORMANCE_OCR_DETECTION:Ljava/lang/String; = "package::parameters_performance::ocr_detection"

.field public static final PARAM_PARAMETERS_PERFORMANCE_OCR_RECOGNITION:Ljava/lang/String; = "package::parameters_performance::ocr_recognition"

.field public static final PARAM_VALUE_METHOD_AUTHENTICATE_CHECK:Ljava/lang/String; = "ai::value::authenticate_check"

.field public static final PARAM_VALUE_METHOD_AUTHORIZE:Ljava/lang/String; = "ai::value::authorize"

.field public static final PARAM_VALUE_METHOD_CALL_SOC_MTK:Ljava/lang/String; = "ai::value::method_call_soc::mtk"

.field public static final PARAM_VALUE_METHOD_CALL_SOC_QCOM:Ljava/lang/String; = "ai::value::method_call_soc::qcom"

.field public static final PARAM_VALUE_METHOD_CHECK_PRIVACY:Ljava/lang/String; = "ai::value::check_privacy"

.field public static final PARAM_VALUE_METHOD_DISMISS_SETTINGS_UI:Ljava/lang/String; = "ai::value::dismiss_settings_ui"

.field public static final PARAM_VALUE_METHOD_GET_AUTHORIZE_STATUS:Ljava/lang/String; = "ai::value::get_authorize_status"

.field public static final PARAM_VALUE_METHOD_GET_DETECT_DATA:Ljava/lang/String; = "ai::value::get_detect_data"

.field public static final PARAM_VALUE_METHOD_GET_DETECT_DATA_LIST:Ljava/lang/String; = "ai::value::get_detect_data_list"

.field public static final PARAM_VALUE_METHOD_GET_LAST_PROVISION_TIMESTAMP:Ljava/lang/String; = "ai::value::get_last_provision_timestamp"

.field public static final PARAM_VALUE_METHOD_GET_LLM_QUEUE_STATUS:Ljava/lang/String; = "ai::value::get_llm_queue_status"

.field public static final PARAM_VALUE_METHOD_GET_LLM_SETTINGS:Ljava/lang/String; = "ai::value::get_llm_settings"

.field public static final PARAM_VALUE_METHOD_GET_LLM_USER_PREFERENCE_SETTINGS:Ljava/lang/String; = "ai::value::get_llm_user_preference_settings"

.field public static final PARAM_VALUE_METHOD_GET_SCENE_DATA:Ljava/lang/String; = "ai::value::get_scene_data"

.field public static final PARAM_VALUE_METHOD_GET_SETTINGS:Ljava/lang/String; = "ai::value::get_settings"

.field public static final PARAM_VALUE_METHOD_PREPARE_INNER_MODEL:Ljava/lang/String; = "ai::value::prepare_inner_model"

.field public static final PARAM_VALUE_METHOD_PROTOCOL:Ljava/lang/String; = "ai::value::protocol_method"

.field public static final PARAM_VALUE_METHOD_QUERY_VERSION_COMPACT:Ljava/lang/String; = "ai::value::query_version_compact"

.field public static final PARAM_VALUE_METHOD_REQUEST_CONFIGURATION_UPDATE:Ljava/lang/String; = "ai::value::request_configuration_update"

.field public static final PARAM_VALUE_METHOD_SET_CLIENT_RUNNING_VERSION:Ljava/lang/String; = "ai::value::set_client_running_version"

.field public static final PARAM_VALUE_METHOD_SET_CLIENT_VERSION_LIST:Ljava/lang/String; = "ai::value::set_client_version_list"

.field public static final PARAM_VALUE_METHOD_SET_LLM_USER_PREFERENCE_SETTINGS:Ljava/lang/String; = "ai::value::set_llm_user_preference_settings"

.field public static final PARAM_VALUE_METHOD_SET_SETTINGS:Ljava/lang/String; = "ai::value::set_settings"

.field public static final PARAM_VALUE_SUB_METHOD:Ljava/lang/String; = "ai::value::sub_method"
