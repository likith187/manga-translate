package com.oplus.aiunit.core.service;

import android.content.ContentProviderClient;
import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.os.RemoteException;
import com.oplus.aiunit.core.data.ConfigKt;
import com.oplus.aiunit.core.data.ParamsKt;
import com.oplus.aiunit.core.data.ServiceType;
import com.oplus.aiunit.core.data.SimpleUnitInfo;
import com.oplus.aiunit.core.utils.AILog;
import com.oplus.aiunit.core.utils.AuthUtil;
import java.util.ArrayList;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes.dex */
public final class ProviderClient {
    public static final Companion Companion = new Companion(null);
    private static final String TAG = "ProviderClient";

    public static final class Companion {

        public /* synthetic */ class WhenMappings {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0;

            static {
                int[] iArr = new int[ServiceType.values().length];
                try {
                    iArr[ServiceType.AIUNIT.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[ServiceType.OCRSERVICE.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                $EnumSwitchMapping$0 = iArr;
            }
        }

        private Companion() {
        }

        public static /* synthetic */ Bundle call$default(Companion companion, Context context, ServiceType serviceType, String str, Bundle bundle, String str2, int i10, Object obj) {
            if ((i10 & 16) != 0) {
                str2 = ParamsKt.METHOD_COMMON_CALL;
            }
            return companion.call(context, serviceType, str, bundle, str2);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r10v13 */
        /* JADX WARN: Type inference failed for: r10v14 */
        /* JADX WARN: Type inference failed for: r10v7, types: [java.lang.StringBuilder] */
        public final Bundle call(Context context, ServiceType type, String str, Bundle extras, String method) {
            String str2;
            ContentProviderClient contentProviderClientAcquireUnstableContentProviderClient;
            long jCurrentTimeMillis;
            String string = "] ms";
            r.e(context, "context");
            r.e(type, "type");
            r.e(extras, "extras");
            r.e(method, "method");
            int i10 = WhenMappings.$EnumSwitchMapping$0[type.ordinal()];
            if (i10 == 1) {
                str2 = ConfigKt.AIUNIT_OPEN_PROVIDER_URI;
            } else {
                if (i10 != 2) {
                    return null;
                }
                str2 = ConfigKt.OCRSERVICE_OPEN_PROVIDER_URI;
            }
            long jCurrentTimeMillis2 = System.currentTimeMillis();
            try {
                try {
                    Uri uri = Uri.parse(str2);
                    r.d(uri, "parse(...)");
                    contentProviderClientAcquireUnstableContentProviderClient = context.getContentResolver().acquireUnstableContentProviderClient(uri);
                } catch (RemoteException e10) {
                    e = e10;
                    contentProviderClientAcquireUnstableContentProviderClient = null;
                } catch (Throwable th) {
                    th = th;
                    contentProviderClientAcquireUnstableContentProviderClient = null;
                }
                try {
                    Bundle bundleCall = contentProviderClientAcquireUnstableContentProviderClient != null ? contentProviderClientAcquireUnstableContentProviderClient.call(type == ServiceType.AIUNIT ? ConfigKt.AIUNIT_OPEN_AUTHORITY : ConfigKt.OCRSERVICE_OPEN_AUTHORITY, method, str, extras) : null;
                    StringBuilder sb = new StringBuilder("call: code = ");
                    sb.append(bundleCall != null ? Integer.valueOf(bundleCall.getInt(ParamsKt.PARAM_KEY_ERROR_CODE, 0)) : null);
                    sb.append(", result = ");
                    sb.append(bundleCall);
                    AILog.i(ProviderClient.TAG, sb.toString());
                    if (contentProviderClientAcquireUnstableContentProviderClient != null) {
                        contentProviderClientAcquireUnstableContentProviderClient.close();
                    }
                    AILog.i(ProviderClient.TAG, "call " + type + " cost[" + (System.currentTimeMillis() - jCurrentTimeMillis2) + "] ms");
                    return bundleCall;
                } catch (RemoteException e11) {
                    e = e11;
                    AILog.w(ProviderClient.TAG, "call " + extras + " remote failed. " + e.getMessage());
                    if (contentProviderClientAcquireUnstableContentProviderClient != null) {
                        contentProviderClientAcquireUnstableContentProviderClient.close();
                    }
                    jCurrentTimeMillis = System.currentTimeMillis();
                    context = new StringBuilder("call ");
                    context.append(type);
                    context.append(" cost[");
                    context.append(jCurrentTimeMillis - jCurrentTimeMillis2);
                    context.append("] ms");
                    string = context.toString();
                    AILog.i(ProviderClient.TAG, string);
                    return null;
                } catch (Throwable th2) {
                    th = th2;
                    AILog.e(ProviderClient.TAG, "call " + extras + " failed. " + th.getMessage());
                    if (contentProviderClientAcquireUnstableContentProviderClient != null) {
                        contentProviderClientAcquireUnstableContentProviderClient.close();
                    }
                    jCurrentTimeMillis = System.currentTimeMillis();
                    context = new StringBuilder("call ");
                    context.append(type);
                    context.append(" cost[");
                    context.append(jCurrentTimeMillis - jCurrentTimeMillis2);
                    context.append("] ms");
                    string = context.toString();
                    AILog.i(ProviderClient.TAG, string);
                    return null;
                }
            } catch (Throwable th3) {
                if (context != 0) {
                    context.close();
                }
                AILog.i(ProviderClient.TAG, "call " + type + " cost[" + (System.currentTimeMillis() - jCurrentTimeMillis2) + string);
                throw th3;
            }
        }

        public final boolean callUnitSupported(Context context, String detectName, ServiceType type) {
            r.e(context, "context");
            r.e(detectName, "detectName");
            r.e(type, "type");
            ContentResolver contentResolver = context.getContentResolver();
            Bundle bundle = new Bundle();
            bundle.putInt(ParamsKt.PARAM_KEY_SDK_VERSION, 203);
            bundle.putString("package::unit_name", detectName);
            bundle.putString(ParamsKt.PARAM_KEY_AUTH_STYLE, AuthUtil.getAuthStyle(context));
            Bundle bundleCall = null;
            try {
                bundleCall = contentResolver.call(type == ServiceType.AIUNIT ? ConfigKt.AIUNIT_OPEN_AUTHORITY : ConfigKt.OCRSERVICE_OPEN_AUTHORITY, ParamsKt.METHOD_CHECK_UNIT_SUPPORTED, (String) null, bundle);
            } catch (Exception e10) {
                AILog.e(ProviderClient.TAG, "callUnitSupported " + type + ' ' + detectName + " err. " + e10.getMessage());
            }
            boolean z10 = bundleCall != null ? bundleCall.getBoolean(ParamsKt.PARAM_KEY_UNIT_CHECK_SUPPORTED_RESULT, false) : false;
            AILog.d(ProviderClient.TAG, "callUnitSupported " + type + ' ' + detectName + ": " + z10 + ' ');
            return z10;
        }

        public final ArrayList<SimpleUnitInfo> queryUnitInfo(Context context, String detectName, ServiceType type) {
            int i10;
            int i11;
            r.e(context, "context");
            r.e(detectName, "detectName");
            r.e(type, "type");
            ContentResolver contentResolver = context.getContentResolver();
            try {
                long jCurrentTimeMillis = System.currentTimeMillis();
                Cursor cursorQuery = contentResolver.query(Uri.parse((type == ServiceType.AIUNIT ? ConfigKt.AIUNIT_QUERY_DETECT_INFO_URI : ConfigKt.OCRSERVICE_QUERY_DETECT_INFO_URI) + '/' + detectName), null, "enable_internet = ?", null, null);
                if (cursorQuery != null && cursorQuery.getCount() > 0) {
                    int columnIndex = cursorQuery.getColumnIndex(ConfigKt.COLUMN_UNIT_ID);
                    int columnIndex2 = cursorQuery.getColumnIndex(ConfigKt.COLUMN_UNIT_NAME);
                    int columnIndex3 = cursorQuery.getColumnIndex(ConfigKt.COLUMN_UNIT_STATE);
                    int columnIndex4 = cursorQuery.getColumnIndex(ConfigKt.COLUMN_UNIT_AVAILABLE);
                    int columnIndex5 = cursorQuery.getColumnIndex(ConfigKt.COLUMN_UNIT_UNSUPPORTED_BY_SELF);
                    ArrayList<SimpleUnitInfo> arrayList = new ArrayList<>();
                    while (cursorQuery.moveToNext()) {
                        int i12 = columnIndex >= 0 ? cursorQuery.getInt(columnIndex) : -1;
                        if (i12 > 0) {
                            String string = columnIndex2 >= 0 ? cursorQuery.getString(columnIndex2) : "";
                            if (columnIndex3 >= 0) {
                                i10 = columnIndex;
                                i11 = cursorQuery.getInt(columnIndex3);
                            } else {
                                i10 = columnIndex;
                                i11 = 0;
                            }
                            r.b(string);
                            SimpleUnitInfo simpleUnitInfo = new SimpleUnitInfo(i12, string, i11);
                            boolean z10 = true;
                            if (columnIndex4 >= 0) {
                                simpleUnitInfo.setAvailable(cursorQuery.getInt(columnIndex4) == 1);
                            }
                            if (columnIndex5 >= 0) {
                                if (cursorQuery.getInt(columnIndex5) != 1) {
                                    z10 = false;
                                }
                                simpleUnitInfo.setUnsupportedBySelf(z10);
                            }
                            arrayList.add(simpleUnitInfo);
                            columnIndex = i10;
                        }
                    }
                    cursorQuery.close();
                    AILog.d(ProviderClient.TAG, "queryUnitInfo " + type + ' ' + detectName + ": [" + arrayList + "]. cost " + (System.currentTimeMillis() - jCurrentTimeMillis));
                    return arrayList;
                }
                AILog.d(ProviderClient.TAG, "queryUnitInfo failed by cursor is empty!");
                return new ArrayList<>();
            } catch (Exception e10) {
                AILog.e(ProviderClient.TAG, "queryUnitInfo " + type + ' ' + detectName + " err. " + e10.getMessage());
                return new ArrayList<>();
            }
        }

        public final boolean queryUnitSupported(Context context, String detectName, ServiceType type) {
            r.e(context, "context");
            r.e(detectName, "detectName");
            r.e(type, "type");
            ContentResolver contentResolver = context.getContentResolver();
            try {
                long jCurrentTimeMillis = System.currentTimeMillis();
                Cursor cursorQuery = contentResolver.query(Uri.parse((type == ServiceType.AIUNIT ? ConfigKt.AIUNIT_QUERY_UNIT_URI : ConfigKt.OCRSERVICE_QUERY_UNIT_URI) + '/' + detectName), null, null, null);
                if (cursorQuery != null && cursorQuery.getCount() > 0) {
                    cursorQuery.moveToNext();
                    int columnIndex = cursorQuery.getColumnIndex(ConfigKt.COLUMN_UNIT_NAME);
                    int columnIndex2 = cursorQuery.getColumnIndex(ConfigKt.COLUMN_UNIT_ID);
                    int columnIndex3 = cursorQuery.getColumnIndex(ConfigKt.COLUMN_UNIT_ENABLED);
                    String string = columnIndex >= 0 ? cursorQuery.getString(columnIndex) : detectName;
                    int i10 = columnIndex2 >= 0 ? cursorQuery.getInt(columnIndex2) : 0;
                    boolean z10 = columnIndex3 >= 0 && cursorQuery.getInt(columnIndex3) > 0;
                    cursorQuery.close();
                    AILog.i(ProviderClient.TAG, "queryUnitSupported " + type + ' ' + detectName + ": [" + string + ", " + i10 + ", " + z10 + "]. cost " + (System.currentTimeMillis() - jCurrentTimeMillis));
                    return z10;
                }
                AILog.d(ProviderClient.TAG, "queryUnitSupported false by cursor is empty!");
                return false;
            } catch (Exception e10) {
                AILog.e(ProviderClient.TAG, "queryUnitSupported " + type + ' ' + detectName + " err. " + e10.getMessage());
                return false;
            }
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public static final Bundle call(Context context, ServiceType serviceType, String str, Bundle bundle, String str2) {
        return Companion.call(context, serviceType, str, bundle, str2);
    }

    public static final boolean callUnitSupported(Context context, String str, ServiceType serviceType) {
        return Companion.callUnitSupported(context, str, serviceType);
    }

    public static final ArrayList<SimpleUnitInfo> queryUnitInfo(Context context, String str, ServiceType serviceType) {
        return Companion.queryUnitInfo(context, str, serviceType);
    }

    public static final boolean queryUnitSupported(Context context, String str, ServiceType serviceType) {
        return Companion.queryUnitSupported(context, str, serviceType);
    }
}
