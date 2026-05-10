package com.oplus.aiunit.core.data;

import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes.dex */
public final class SceneName {
    public static final String AI_DOC_SCAN = "doc_scan";
    public static final String AI_INFO_COLLECT = "info_collect";
    public static final String AI_INTERACT_SEGMENT = "ai_interact_segment";
    public static final String AI_OCR = "ocr";
    public static final String AI_PICTURE_CLEAR = "picture_clear";
    public static final String AI_PRIVACY_MOSAIC = "privacy_mosaic";
    public static final String AI_SCAN = "ai_scan";
    public static final String AUTO_FILL = "auto_fill";
    public static final String CAMERA_CROP = "camera_crop";
    public static final String CLOUD_AI_CALL_SUMMARY = "cloud_call_summary";
    public static final String CLOUD_AI_REMOVE = "cloud_ai_remove";
    public static final String CLOUD_PICTURE_AI_COMPOSITION = "cloud_picture_ai_composition";
    public static final String CLOUD_PICTURE_AUTO_CORRECTION = "cloud_picture_auto_correction";
    public static final String CLOUD_PICTURE_DEBLUR = "cloud_picture_deblur";
    public static final String CLOUD_PICTURE_DEFECT_RECOGNITION = "cloud_picture_defect_recognition";
    public static final String CLOUD_PICTURE_DEREFLECTION = "cloud_picture_dereflection";
    public static final String CLOUD_PICTURE_QUALITY_ENHANCEMENT = "cloud_picture_quality_enhancement";
    public static final SceneName INSTANCE = new SceneName();
    public static final String LOCAL_AI_CALL_SUMMARY = "local_call_summary";
    public static final String LOCAL_AI_CALL_SUMMARY_OAP = "local_call_summary_oap";
    public static final String LOCAL_AI_REMOVE = "local_ai_remove";
    public static final String LOCAL_PICTURE_AUTO_CORRECTION = "local_picture_auto_correction";
    public static final String SCENE_AI_SETTINGS = "ai_settings";
    public static final String SCENE_DEFAULT = "all_scene";
    public static final String SCENE_ENGINE_FRAMEWORK = "engine_framework";
    public static final String TEXT_INTENT = "text_intent";

    private SceneName() {
    }

    public static final boolean isAllScene(String sceneName) {
        r.e(sceneName, "sceneName");
        return r.a(sceneName, SCENE_DEFAULT) || r.a(sceneName, SCENE_AI_SETTINGS);
    }
}
