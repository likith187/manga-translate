package com.oplus.aiunit.download.api;

import android.app.PendingIntent;
import android.os.Bundle;
import android.os.Parcelable;
import com.oplus.aiunit.core.data.ParamsKt;
import com.oplus.aiunit.download.core.Command;
import com.oplus.aiunit.download.core.DownloadListener;
import com.oplus.aiunit.download.utls.DownloadConstantsKt;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Locale;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes2.dex */
public final class DownloadRequest {
    public static final Companion Companion = new Companion(null);
    public static final String PARAM_KEY_DOWNLOAD_ALIAS_NAME = "ai::download::key::alias_name";
    public static final String PARAM_KEY_DOWNLOAD_ALLOW_AUTO = "ai::download::key::allow_auto_downloads";
    public static final String PARAM_KEY_DOWNLOAD_COMPLETE = "ai::download::key::term_download_complete";
    public static final String PARAM_KEY_DOWNLOAD_DESCRIPTION = "ai::download::key::description";
    public static final String PARAM_KEY_DOWNLOAD_DOWNLOADING = "ai::download::key::term_downloading";
    public static final String PARAM_KEY_DOWNLOAD_ENABLE_CELLULAR = "ai::download::key::enable_cellular";
    public static final String PARAM_KEY_DOWNLOAD_ENABLE_PROGRESS_CALLBACK = "ai::download::key::enable_progress_callback";
    public static final String PARAM_KEY_DOWNLOAD_ENABLE_PROGRESS_UI = "ai::download::key::enable_progress_ui";
    public static final String PARAM_KEY_DOWNLOAD_EVENT_ID = "ai::download::key::event_id";
    public static final String PARAM_KEY_DOWNLOAD_FAIL_RETRY = "ai::download::key::term_download_retry";
    public static final String PARAM_KEY_DOWNLOAD_INSTALL_FAIL_RETRY = "ai::download::key::term_install_retry";
    public static final String PARAM_KEY_DOWNLOAD_PENDING_INTENT = "ai::download::key::pending_intent";
    public static final String PARAM_KEY_DOWNLOAD_REQUEST_ID = "ai::download::key::request_id";
    public static final String PARAM_KEY_DOWNLOAD_SILENCE = "ai::download::key::silence";
    public static final String PARAM_KEY_DOWNLOAD_SKIP_CONFIRM_UI = "ai::download::key::skip_confirm_ui";
    public static final String PARAM_KEY_DOWNLOAD_TITLE = "ai::download::key::title";
    private ArrayList<Integer> allowAutoDownloads;
    private ArrayList<String> detectNames;
    private DownloadListener downloadListener;
    private boolean enableCellular;
    private boolean enableProgressCallback;
    private Bundle extras;
    private PendingIntent intent;
    private boolean silence;
    private boolean skipConfirmUI;
    private ArrayList<Integer> unitIds;
    private String sceneName = "";
    private String detectName = "";
    private CustomTerms terms = new CustomTerms();
    private boolean enableProgressUI = true;
    private String eventId = "";
    private String requestId = "";
    private int state = -1;
    private Command command = Command.DOWNLOAD;

    public static final class Companion {
        private Companion() {
        }

        public final DownloadRequest buildRequest(Bundle body) {
            Command commandValueOf;
            r.e(body, "body");
            DownloadRequest downloadRequest = new DownloadRequest();
            String string = body.getString(ParamsKt.PARAM_KEY_SCENE_NAME, "");
            r.d(string, "getString(...)");
            downloadRequest.setSceneName(string);
            String string2 = body.getString("package::unit_name", "");
            r.d(string2, "getString(...)");
            downloadRequest.setDetectName(string2);
            downloadRequest.setTerms(CustomTerms.Companion.buildTerms(body));
            downloadRequest.setEnableProgressUI(body.getBoolean(DownloadRequest.PARAM_KEY_DOWNLOAD_ENABLE_PROGRESS_UI, false));
            downloadRequest.setEnableProgressCallback(body.getBoolean(DownloadRequest.PARAM_KEY_DOWNLOAD_ENABLE_PROGRESS_CALLBACK, false));
            downloadRequest.setEnableCellular(body.getBoolean(DownloadRequest.PARAM_KEY_DOWNLOAD_ENABLE_CELLULAR, false));
            downloadRequest.setSilence(body.getBoolean(DownloadRequest.PARAM_KEY_DOWNLOAD_SILENCE, false));
            Parcelable parcelable = body.getParcelable(DownloadRequest.PARAM_KEY_DOWNLOAD_PENDING_INTENT);
            downloadRequest.setIntent(parcelable instanceof PendingIntent ? (PendingIntent) parcelable : null);
            String string3 = body.getString(DownloadRequest.PARAM_KEY_DOWNLOAD_REQUEST_ID, "");
            r.d(string3, "getString(...)");
            downloadRequest.requestId = string3;
            String string4 = body.getString(DownloadRequest.PARAM_KEY_DOWNLOAD_EVENT_ID, "");
            r.d(string4, "getString(...)");
            downloadRequest.setEventId$aiunit_sdk_download_release(string4);
            try {
                String string5 = body.getString(DownloadConstantsKt.PARAM_KEY_DOWNLOAD_REQUEST_COMMAND, "DOWNLOAD");
                r.d(string5, "getString(...)");
                commandValueOf = Command.valueOf(string5);
            } catch (Throwable unused) {
                commandValueOf = Command.DOWNLOAD;
            }
            downloadRequest.setCommand(commandValueOf);
            downloadRequest.setExtras(body);
            downloadRequest.setSkipConfirmUI(body.getBoolean(DownloadRequest.PARAM_KEY_DOWNLOAD_SKIP_CONFIRM_UI, false));
            if (body.containsKey(ParamsKt.PARAM_KEY_UNIT_ID_LIST)) {
                downloadRequest.setUnitIds(body.getIntegerArrayList(ParamsKt.PARAM_KEY_UNIT_ID_LIST));
            }
            if (body.containsKey(ParamsKt.PARAM_KEY_DETECT_LIST)) {
                downloadRequest.setDetectNames(body.getStringArrayList(ParamsKt.PARAM_KEY_DETECT_LIST));
            }
            if (body.containsKey(DownloadRequest.PARAM_KEY_DOWNLOAD_ALLOW_AUTO)) {
                downloadRequest.setAllowAutoDownloads(body.getIntegerArrayList(DownloadRequest.PARAM_KEY_DOWNLOAD_ALLOW_AUTO));
            }
            return downloadRequest;
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public static final DownloadRequest buildRequest(Bundle bundle) {
        return Companion.buildRequest(bundle);
    }

    public final Bundle buildBody() {
        String str;
        String str2;
        ArrayList<Integer> arrayList;
        ArrayList<String> arrayList2;
        ArrayList<Integer> arrayList3;
        Bundle bundle = new Bundle();
        Bundle bundle2 = this.extras;
        if (bundle2 != null) {
            bundle.putAll(bundle2);
        }
        if (this.sceneName.length() <= 0) {
            if (this.detectName.length() > 0) {
                str = this.detectName;
                str2 = "package::unit_name";
            }
            bundle.putString(DownloadConstantsKt.PARAM_KEY_DOWNLOAD_GROUP_NAME, getName());
            bundle.putString(DownloadConstantsKt.PARAM_KEY_DOWNLOAD_REQUEST_COMMAND, this.command.name());
            this.terms.fillBody(bundle);
            bundle.putParcelable(PARAM_KEY_DOWNLOAD_PENDING_INTENT, this.intent);
            bundle.putBoolean(PARAM_KEY_DOWNLOAD_ENABLE_PROGRESS_UI, this.enableProgressUI);
            bundle.putBoolean(PARAM_KEY_DOWNLOAD_ENABLE_PROGRESS_CALLBACK, this.enableProgressCallback);
            bundle.putBoolean(PARAM_KEY_DOWNLOAD_SILENCE, this.silence);
            bundle.putString(PARAM_KEY_DOWNLOAD_REQUEST_ID, this.requestId);
            bundle.putString(PARAM_KEY_DOWNLOAD_EVENT_ID, this.eventId);
            bundle.putBoolean(PARAM_KEY_DOWNLOAD_ENABLE_CELLULAR, this.enableCellular);
            bundle.putBoolean(PARAM_KEY_DOWNLOAD_SKIP_CONFIRM_UI, this.skipConfirmUI);
            arrayList = this.unitIds;
            if (arrayList != null && !arrayList.isEmpty()) {
                bundle.putIntegerArrayList(ParamsKt.PARAM_KEY_UNIT_ID_LIST, this.unitIds);
            }
            arrayList2 = this.detectNames;
            if (arrayList2 != null && !arrayList2.isEmpty()) {
                bundle.putStringArrayList(ParamsKt.PARAM_KEY_DETECT_LIST, this.detectNames);
            }
            arrayList3 = this.allowAutoDownloads;
            if (arrayList3 != null && !arrayList3.isEmpty()) {
                bundle.putIntegerArrayList(PARAM_KEY_DOWNLOAD_ALLOW_AUTO, this.allowAutoDownloads);
            }
            return bundle;
        }
        str = this.sceneName;
        str2 = ParamsKt.PARAM_KEY_SCENE_NAME;
        bundle.putString(str2, str);
        bundle.putString(DownloadConstantsKt.PARAM_KEY_DOWNLOAD_GROUP_NAME, getName());
        bundle.putString(DownloadConstantsKt.PARAM_KEY_DOWNLOAD_REQUEST_COMMAND, this.command.name());
        this.terms.fillBody(bundle);
        bundle.putParcelable(PARAM_KEY_DOWNLOAD_PENDING_INTENT, this.intent);
        bundle.putBoolean(PARAM_KEY_DOWNLOAD_ENABLE_PROGRESS_UI, this.enableProgressUI);
        bundle.putBoolean(PARAM_KEY_DOWNLOAD_ENABLE_PROGRESS_CALLBACK, this.enableProgressCallback);
        bundle.putBoolean(PARAM_KEY_DOWNLOAD_SILENCE, this.silence);
        bundle.putString(PARAM_KEY_DOWNLOAD_REQUEST_ID, this.requestId);
        bundle.putString(PARAM_KEY_DOWNLOAD_EVENT_ID, this.eventId);
        bundle.putBoolean(PARAM_KEY_DOWNLOAD_ENABLE_CELLULAR, this.enableCellular);
        bundle.putBoolean(PARAM_KEY_DOWNLOAD_SKIP_CONFIRM_UI, this.skipConfirmUI);
        arrayList = this.unitIds;
        if (arrayList != null) {
            bundle.putIntegerArrayList(ParamsKt.PARAM_KEY_UNIT_ID_LIST, this.unitIds);
        }
        arrayList2 = this.detectNames;
        if (arrayList2 != null) {
            bundle.putStringArrayList(ParamsKt.PARAM_KEY_DETECT_LIST, this.detectNames);
        }
        arrayList3 = this.allowAutoDownloads;
        if (arrayList3 != null) {
            bundle.putIntegerArrayList(PARAM_KEY_DOWNLOAD_ALLOW_AUTO, this.allowAutoDownloads);
        }
        return bundle;
    }

    public final ArrayList<Integer> getAllowAutoDownloads() {
        return this.allowAutoDownloads;
    }

    public final Command getCommand() {
        return this.command;
    }

    public final String getDetectName() {
        return this.detectName;
    }

    public final ArrayList<String> getDetectNames() {
        return this.detectNames;
    }

    public final DownloadListener getDownloadListener() {
        return this.downloadListener;
    }

    public final boolean getEnableCellular() {
        return this.enableCellular;
    }

    public final boolean getEnableProgressCallback() {
        return this.enableProgressCallback;
    }

    public final boolean getEnableProgressUI() {
        return this.enableProgressUI;
    }

    public final String getEventId() {
        return this.eventId;
    }

    public final Bundle getExtras() {
        return this.extras;
    }

    public final PendingIntent getIntent() {
        return this.intent;
    }

    public final String getName() {
        return this.sceneName.length() > 0 ? this.sceneName : this.detectName.length() > 0 ? this.detectName : "";
    }

    public final String getOrBuildRequestId$aiunit_sdk_download_release() {
        if (this.requestId.length() > 0) {
            return this.requestId;
        }
        String str = new SimpleDateFormat("yyyyMMddHHmmssSSS", Locale.getDefault()).format(Calendar.getInstance().getTime());
        r.d(str, "format(...)");
        this.requestId = str;
        return str;
    }

    public final String getRequestId() {
        return this.requestId;
    }

    public final String getSceneName() {
        return this.sceneName;
    }

    public final boolean getSilence() {
        return this.silence;
    }

    public final boolean getSkipConfirmUI() {
        return this.skipConfirmUI;
    }

    public final int getState() {
        return this.state;
    }

    public final CustomTerms getTerms() {
        return this.terms;
    }

    public final ArrayList<Integer> getUnitIds() {
        return this.unitIds;
    }

    public final boolean isComplete() {
        int i10 = this.state;
        return i10 == 6 || i10 == 7 || i10 == 8;
    }

    public final int isSceneOrDetect() {
        if (this.sceneName.length() > 0) {
            return 0;
        }
        return this.detectName.length() > 0 ? 1 : -1;
    }

    public final boolean isValid() {
        return isSceneOrDetect() >= 0;
    }

    public final void setAllowAutoDownloads(ArrayList<Integer> arrayList) {
        this.allowAutoDownloads = arrayList;
    }

    public final void setCommand(Command command) {
        r.e(command, "<set-?>");
        this.command = command;
    }

    public final void setDetectName(String str) {
        r.e(str, "<set-?>");
        this.detectName = str;
    }

    public final void setDetectNames(ArrayList<String> arrayList) {
        this.detectNames = arrayList;
    }

    public final void setDownloadListener(DownloadListener downloadListener) {
        this.downloadListener = downloadListener;
    }

    public final void setEnableCellular(boolean z10) {
        this.enableCellular = z10;
    }

    public final void setEnableProgressCallback(boolean z10) {
        this.enableProgressCallback = z10;
    }

    public final void setEnableProgressUI(boolean z10) {
        this.enableProgressUI = z10;
    }

    public final void setEventId$aiunit_sdk_download_release(String str) {
        r.e(str, "<set-?>");
        this.eventId = str;
    }

    public final void setExtras(Bundle bundle) {
        this.extras = bundle;
    }

    public final void setIntent(PendingIntent pendingIntent) {
        this.intent = pendingIntent;
    }

    public final void setSceneName(String str) {
        r.e(str, "<set-?>");
        this.sceneName = str;
    }

    public final void setSilence(boolean z10) {
        this.silence = z10;
    }

    public final void setSkipConfirmUI(boolean z10) {
        this.skipConfirmUI = z10;
    }

    public final void setState(int i10) {
        this.state = i10;
    }

    public final void setTerms(CustomTerms customTerms) {
        r.e(customTerms, "<set-?>");
        this.terms = customTerms;
    }

    public final void setUnitIds(ArrayList<Integer> arrayList) {
        this.unitIds = arrayList;
    }

    public String toString() {
        return "DownloadRequest(" + getName() + ", " + this.eventId + ", " + this.command + ')';
    }
}
