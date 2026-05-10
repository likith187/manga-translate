package com.oplus.aiunit.download.api;

import android.annotation.SuppressLint;
import android.content.Context;
import com.oplus.aiunit.core.data.ServiceType;
import com.oplus.aiunit.core.protocol.AIProtocol;
import com.oplus.aiunit.core.utils.AILog;
import com.oplus.aiunit.download.core.AIDownloadImpl;
import com.oplus.aiunit.download.core.DownloadListener;
import com.oplus.aiunit.download.core.ErrorCode;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes2.dex */
@SuppressLint({"StaticFieldLeak"})
public final class AIDownload {
    private static final String TAG = "AIDownload";
    public static final AIDownload INSTANCE = new AIDownload();
    private static AIDownloadImpl aiDownloadImpl = new AIDownloadImpl();

    private AIDownload() {
    }

    public static final void cancelAll() {
        aiDownloadImpl.cancelAll();
    }

    public static final void cancelByName(String name) {
        r.e(name, "name");
        aiDownloadImpl.cancel(name);
    }

    public static final void destroy() {
        aiDownloadImpl.destroy();
    }

    public static final ServiceType getDownloadService(Context context) {
        r.e(context, "context");
        ServiceType serviceTypeAcquireServiceType = AIProtocol.acquireServiceType(context);
        if (serviceTypeAcquireServiceType != ServiceType.NONE && AIProtocol.isGlobalDep(AIProtocol.getServiceProtocol(context, serviceTypeAcquireServiceType.getPkgName()))) {
            return serviceTypeAcquireServiceType;
        }
        return null;
    }

    public static final boolean isDownloadSupport(Context context) {
        r.e(context, "context");
        ServiceType downloadService = getDownloadService(context);
        return (downloadService == null || downloadService == ServiceType.NONE) ? false : true;
    }

    public static final boolean isDownloading(String name) {
        r.e(name, "name");
        return aiDownloadImpl.isDownloading(name);
    }

    public static final boolean isIDListSupport(Context context) {
        r.e(context, "context");
        return AIProtocol.getServiceProtocol(context) >= 143;
    }

    public static final void queryByName(Context context, String name) {
        r.e(context, "context");
        r.e(name, "name");
        queryByName$default(context, name, null, 0, false, 28, null);
    }

    public static /* synthetic */ void queryByName$default(Context context, String str, DownloadListener downloadListener, int i10, boolean z10, int i11, Object obj) {
        if ((i11 & 4) != 0) {
            downloadListener = null;
        }
        if ((i11 & 8) != 0) {
            i10 = 0;
        }
        if ((i11 & 16) != 0) {
            z10 = false;
        }
        queryByName(context, str, downloadListener, i10, z10);
    }

    public static final void register(Context context, String groupName, DownloadListener listener) {
        r.e(context, "context");
        r.e(groupName, "groupName");
        r.e(listener, "listener");
        ServiceType downloadService = getDownloadService(context);
        if (downloadService != null && downloadService != ServiceType.NONE) {
            aiDownloadImpl.register(groupName, listener);
            return;
        }
        AILog.e(TAG, "register " + groupName + " fail by service not support!");
        listener.onFail(ErrorCode.CODE_SERVICE_NOT_SUPPORT);
    }

    public static final void removeOnly(String name) {
        r.e(name, "name");
        aiDownloadImpl.removeRequest(name);
    }

    public static final void start(Context context, DownloadRequest request) {
        r.e(context, "context");
        r.e(request, "request");
        if (!request.isValid()) {
            DownloadListener downloadListener = request.getDownloadListener();
            if (downloadListener != null) {
                downloadListener.onFail(ErrorCode.CODE_INVALID_REQUEST);
                return;
            }
            return;
        }
        ServiceType downloadService = getDownloadService(context);
        if (downloadService != null && downloadService != ServiceType.NONE) {
            if (!((Boolean) AIProtocol.isAISelf(context).getFirst()).booleanValue()) {
                request.setEventId$aiunit_sdk_download_release("APP_CALL");
            }
            aiDownloadImpl.start(context, request, downloadService);
            return;
        }
        AILog.e(TAG, "start " + request + " fail by service not support!");
        DownloadListener downloadListener2 = request.getDownloadListener();
        if (downloadListener2 != null) {
            downloadListener2.onFail(ErrorCode.CODE_SERVICE_NOT_SUPPORT);
        }
    }

    public static final void startWithEventId(Context context, DownloadRequest request, String eventID) {
        r.e(context, "context");
        r.e(request, "request");
        r.e(eventID, "eventID");
        if (((Boolean) AIProtocol.isAISelf(context).getFirst()).booleanValue()) {
            request.setEventId$aiunit_sdk_download_release(eventID);
            start(context, request);
        }
    }

    public static final void queryByName(Context context, String name, DownloadListener downloadListener) {
        r.e(context, "context");
        r.e(name, "name");
        queryByName$default(context, name, downloadListener, 0, false, 24, null);
    }

    public static final void queryByName(Context context, String name, DownloadListener downloadListener, int i10) {
        r.e(context, "context");
        r.e(name, "name");
        queryByName$default(context, name, downloadListener, i10, false, 16, null);
    }

    public static final void queryByName(Context context, String name, DownloadListener downloadListener, int i10, boolean z10) {
        r.e(context, "context");
        r.e(name, "name");
        ServiceType downloadService = getDownloadService(context);
        if (downloadService != null && downloadService != ServiceType.NONE) {
            aiDownloadImpl.query(context, name, downloadListener, i10, downloadService, z10);
            return;
        }
        AILog.e(TAG, "queryByName service not support!");
        if (downloadListener != null) {
            downloadListener.onQuery(null);
        }
    }
}
