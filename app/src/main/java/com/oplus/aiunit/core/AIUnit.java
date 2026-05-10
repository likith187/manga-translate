package com.oplus.aiunit.core;

import android.content.Context;
import android.os.Bundle;
import com.oplus.aiunit.core.callback.ConnectionCallback;
import com.oplus.aiunit.core.data.DetectData;
import com.oplus.aiunit.core.data.DetectInfo;
import com.oplus.aiunit.core.data.ServiceType;
import com.oplus.aiunit.core.protocol.AIProtocol;
import com.oplus.aiunit.core.protocol.common.ErrorCode;
import com.oplus.aiunit.core.service.IServiceManager;
import com.oplus.aiunit.core.utils.AILog;
import com.oplus.aiunit.toolkits.AISettings;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes.dex */
public final class AIUnit {
    public static final Companion Companion = new Companion(null);
    private static final String TAG = "AIUnit";

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static /* synthetic */ DetectData getDetectData$default(Companion companion, Context context, String str, Bundle bundle, int i10, Object obj) {
            if ((i10 & 4) != 0) {
                bundle = null;
            }
            return companion.getDetectData(context, str, bundle);
        }

        public static /* synthetic */ int getUnitState$default(Companion companion, Context context, String str, Bundle bundle, int i10, Object obj) {
            if ((i10 & 4) != 0) {
                bundle = null;
            }
            return companion.getUnitState(context, str, bundle);
        }

        public static /* synthetic */ Bundle getUnstableRunningInfo$default(Companion companion, Context context, String str, Bundle bundle, int i10, Object obj) {
            if ((i10 & 4) != 0) {
                bundle = null;
            }
            return companion.getUnstableRunningInfo(context, str, bundle);
        }

        public static /* synthetic */ void init$default(Companion companion, Context context, ConnectionCallback connectionCallback, boolean z10, int i10, Object obj) {
            if ((i10 & 2) != 0) {
                connectionCallback = null;
            }
            if ((i10 & 4) != 0) {
                z10 = false;
            }
            companion.init(context, connectionCallback, z10);
        }

        public static /* synthetic */ boolean isAIUnitSupported$default(Companion companion, Context context, int i10, int i11, Object obj) {
            if ((i11 & 2) != 0) {
                i10 = 400001;
            }
            return companion.isAIUnitSupported(context, i10);
        }

        public static /* synthetic */ boolean isDetectSupported$default(Companion companion, Context context, String str, Bundle bundle, int i10, Object obj) {
            if ((i10 & 4) != 0) {
                bundle = null;
            }
            return companion.isDetectSupported(context, str, bundle);
        }

        public final void addCallback(ConnectionCallback callback) {
            r.e(callback, "callback");
            IServiceManager.Companion.getInstance().addConnectionCallback(callback);
        }

        public final void destroy() {
            IServiceManager.Companion.getInstance().destroy();
        }

        public final DetectData getDetectData(Context context, String detectName) {
            r.e(context, "context");
            r.e(detectName, "detectName");
            return getDetectData$default(this, context, detectName, null, 4, null);
        }

        public final Bundle getStableRunningInfo(String detectName) {
            r.e(detectName, "detectName");
            return IServiceManager.Companion.getInstance().getRunningUnitInfo(detectName);
        }

        public final int getUnitState(Context context, String detectName, Bundle bundle) {
            r.e(context, "context");
            r.e(detectName, "detectName");
            return AIProtocol.getUnitState(context, detectName, bundle);
        }

        public final Bundle getUnstableRunningInfo(Context context, String detectName) {
            r.e(context, "context");
            r.e(detectName, "detectName");
            return getUnstableRunningInfo$default(this, context, detectName, null, 4, null);
        }

        public final void init(Context context) {
            r.e(context, "context");
            init$default(this, context, null, false, 6, null);
        }

        public final boolean isAIUnitCompatSupported(Context context) {
            r.e(context, "context");
            return AIProtocol.isAIUnitCompatSupported(context);
        }

        public final boolean isAIUnitSupported(Context context) {
            r.e(context, "context");
            return isAIUnitSupported$default(this, context, 0, 2, null);
        }

        public final boolean isConnected() {
            return IServiceManager.Companion.getInstance().isConnected();
        }

        public final boolean isDetectSupported(Context context, String detectName) {
            r.e(context, "context");
            r.e(detectName, "detectName");
            return isDetectSupported$default(this, context, detectName, null, 4, null);
        }

        public final boolean isDeviceSupported(Context context) {
            r.e(context, "context");
            return AIProtocol.isDeviceSupported(context);
        }

        public final boolean isHardwareBitmapSupported(Context context) {
            r.e(context, "context");
            return AIProtocol.isHardwareBitmapSupported(context);
        }

        public final boolean isStartedAndAvailable(String detectName) {
            r.e(detectName, "detectName");
            return IServiceManager.Companion.getInstance().isStarted(detectName);
        }

        public final boolean isUnitSupported(Context context, String detectName) {
            r.e(context, "context");
            r.e(detectName, "detectName");
            return AIProtocol.isUnitSupported(context, detectName);
        }

        public final DetectInfo queryDetectInfo(Context context, String detectName) {
            r.e(context, "context");
            r.e(detectName, "detectName");
            return AISettings.getDetectData$default(context, detectName, null, 4, null).toDetectInfo();
        }

        public final void remove(ConnectionCallback callback) {
            r.e(callback, "callback");
            IServiceManager.Companion.getInstance().removeConnectionCallback(callback);
        }

        private Companion() {
        }

        public final DetectData getDetectData(Context context, String detectName, Bundle bundle) {
            r.e(context, "context");
            r.e(detectName, "detectName");
            return AISettings.getDetectData(context, detectName, bundle);
        }

        public final Bundle getUnstableRunningInfo(Context context, String detectName, Bundle bundle) {
            r.e(context, "context");
            r.e(detectName, "detectName");
            Bundle stableRunningInfo = getStableRunningInfo(detectName);
            return stableRunningInfo == null ? getDetectData(context, detectName, bundle).getData() : stableRunningInfo;
        }

        public final void init(Context context, ConnectionCallback connectionCallback) {
            r.e(context, "context");
            init$default(this, context, connectionCallback, false, 4, null);
        }

        public final boolean isAIUnitSupported(Context context, int i10) {
            r.e(context, "context");
            return AIProtocol.isAIUnitSupported(context, i10);
        }

        public final boolean isDetectSupported(Context context, String detectName, Bundle bundle) {
            r.e(context, "context");
            r.e(detectName, "detectName");
            return AIProtocol.isDetectSupported(context, detectName, bundle);
        }

        public final void init(Context context, ConnectionCallback connectionCallback, boolean z10) {
            r.e(context, "context");
            AILog.init(context, z10);
            ServiceType serviceTypeAcquireServiceType = AIProtocol.acquireServiceType(context);
            AILog.i(AIUnit.TAG, "init for service: " + serviceTypeAcquireServiceType);
            if (serviceTypeAcquireServiceType != ServiceType.NONE) {
                IServiceManager.Companion.getInstance().init(context, connectionCallback, serviceTypeAcquireServiceType);
            } else if (connectionCallback != null) {
                connectionCallback.onServiceConnectFailed(ErrorCode.kErrorDeviceNotSupported.value());
            }
        }
    }

    private AIUnit() {
    }

    public static final void addCallback(ConnectionCallback connectionCallback) {
        Companion.addCallback(connectionCallback);
    }

    public static final void destroy() {
        Companion.destroy();
    }

    public static final DetectData getDetectData(Context context, String str) {
        return Companion.getDetectData(context, str);
    }

    public static final Bundle getStableRunningInfo(String str) {
        return Companion.getStableRunningInfo(str);
    }

    public static final int getUnitState(Context context, String str, Bundle bundle) {
        return Companion.getUnitState(context, str, bundle);
    }

    public static final Bundle getUnstableRunningInfo(Context context, String str) {
        return Companion.getUnstableRunningInfo(context, str);
    }

    public static final void init(Context context) {
        Companion.init(context);
    }

    public static final boolean isAIUnitCompatSupported(Context context) {
        return Companion.isAIUnitCompatSupported(context);
    }

    public static final boolean isAIUnitSupported(Context context) {
        return Companion.isAIUnitSupported(context);
    }

    public static final boolean isConnected() {
        return Companion.isConnected();
    }

    public static final boolean isDetectSupported(Context context, String str) {
        return Companion.isDetectSupported(context, str);
    }

    public static final boolean isDeviceSupported(Context context) {
        return Companion.isDeviceSupported(context);
    }

    public static final boolean isHardwareBitmapSupported(Context context) {
        return Companion.isHardwareBitmapSupported(context);
    }

    public static final boolean isStartedAndAvailable(String str) {
        return Companion.isStartedAndAvailable(str);
    }

    public static final boolean isUnitSupported(Context context, String str) {
        return Companion.isUnitSupported(context, str);
    }

    public static final DetectInfo queryDetectInfo(Context context, String str) {
        return Companion.queryDetectInfo(context, str);
    }

    public static final void remove(ConnectionCallback connectionCallback) {
        Companion.remove(connectionCallback);
    }

    public static final DetectData getDetectData(Context context, String str, Bundle bundle) {
        return Companion.getDetectData(context, str, bundle);
    }

    public static final Bundle getUnstableRunningInfo(Context context, String str, Bundle bundle) {
        return Companion.getUnstableRunningInfo(context, str, bundle);
    }

    public static final void init(Context context, ConnectionCallback connectionCallback) {
        Companion.init(context, connectionCallback);
    }

    public static final boolean isAIUnitSupported(Context context, int i10) {
        return Companion.isAIUnitSupported(context, i10);
    }

    public static final boolean isDetectSupported(Context context, String str, Bundle bundle) {
        return Companion.isDetectSupported(context, str, bundle);
    }

    public static final void init(Context context, ConnectionCallback connectionCallback, boolean z10) {
        Companion.init(context, connectionCallback, z10);
    }
}
