package com.coloros.translate.utils;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
public abstract class l0 {

    /* JADX INFO: renamed from: a */
    public static final a f7130a = new a(null);

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static /* synthetic */ boolean b(a aVar, String str, String str2, int i10, Object obj) {
            if ((i10 & 2) != 0) {
                str2 = "translatePreferences";
            }
            return aVar.a(str, str2);
        }

        public static /* synthetic */ Object g(a aVar, String str, Object obj, String str2, int i10, Object obj2) {
            if ((i10 & 4) != 0) {
                str2 = "translatePreferences";
            }
            return aVar.f(str, obj, str2);
        }

        public static /* synthetic */ void l(a aVar, String str, Object obj, boolean z10, String str2, int i10, Object obj2) {
            if ((i10 & 4) != 0) {
                z10 = false;
            }
            if ((i10 & 8) != 0) {
                str2 = "translatePreferences";
            }
            aVar.k(str, obj, z10, str2);
        }

        public final boolean a(String key, String fileName) {
            kotlin.jvm.internal.r.e(key, "key");
            kotlin.jvm.internal.r.e(fileName, "fileName");
            return m.INSTANCE.a().getSharedPreferences(fileName, 0).contains(key);
        }

        public final long c(Context context, String key) {
            kotlin.jvm.internal.r.e(key, "key");
            SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(context);
            if (defaultSharedPreferences == null) {
                return 0L;
            }
            try {
                return defaultSharedPreferences.getLong(key + "size", 0L);
            } catch (Exception e10) {
                c0.f7098a.d("PrefUtil", "getModeSize() " + e10.getMessage());
                return 0L;
            }
        }

        public final int d(Context context, String str) {
            SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(context);
            if (defaultSharedPreferences == null) {
                return 0;
            }
            try {
                return defaultSharedPreferences.getInt(str, 0);
            } catch (Exception e10) {
                c0.f7098a.d("PrefUtil", "getOffLinePackageVersion() " + e10.getMessage());
                return 0;
            }
        }

        public final int e(Context context, String str) {
            SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(context);
            if (defaultSharedPreferences == null) {
                return 0;
            }
            try {
                return defaultSharedPreferences.getInt(str, 0);
            } catch (Exception e10) {
                c0.f7098a.d("PrefUtil", "getOffLinePackageVersion() " + e10.getMessage());
                return 0;
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:60:0x007d, code lost:
        
            r2 = r4;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final java.lang.Object f(java.lang.String r3, java.lang.Object r4, java.lang.String r5) {
            /*
                r2 = this;
                java.lang.String r2 = "key"
                kotlin.jvm.internal.r.e(r3, r2)
                java.lang.String r2 = "fileName"
                kotlin.jvm.internal.r.e(r5, r2)
                com.coloros.translate.utils.m r2 = com.coloros.translate.utils.m.INSTANCE
                android.content.Context r2 = r2.a()
                r0 = 0
                android.content.SharedPreferences r2 = r2.getSharedPreferences(r5, r0)
                boolean r5 = r4 instanceof java.lang.Integer     // Catch: java.lang.Exception -> L29
                if (r5 == 0) goto L2b
                r5 = r4
                java.lang.Number r5 = (java.lang.Number) r5     // Catch: java.lang.Exception -> L29
                int r5 = r5.intValue()     // Catch: java.lang.Exception -> L29
                int r2 = r2.getInt(r3, r5)     // Catch: java.lang.Exception -> L29
                java.lang.Integer r2 = java.lang.Integer.valueOf(r2)     // Catch: java.lang.Exception -> L29
                goto L7d
            L29:
                r2 = move-exception
                goto L73
            L2b:
                boolean r5 = r4 instanceof java.lang.Float     // Catch: java.lang.Exception -> L29
                if (r5 == 0) goto L3f
                r5 = r4
                java.lang.Number r5 = (java.lang.Number) r5     // Catch: java.lang.Exception -> L29
                float r5 = r5.floatValue()     // Catch: java.lang.Exception -> L29
                float r2 = r2.getFloat(r3, r5)     // Catch: java.lang.Exception -> L29
                java.lang.Float r2 = java.lang.Float.valueOf(r2)     // Catch: java.lang.Exception -> L29
                goto L7d
            L3f:
                boolean r5 = r4 instanceof java.lang.Long     // Catch: java.lang.Exception -> L29
                if (r5 == 0) goto L53
                r5 = r4
                java.lang.Number r5 = (java.lang.Number) r5     // Catch: java.lang.Exception -> L29
                long r0 = r5.longValue()     // Catch: java.lang.Exception -> L29
                long r2 = r2.getLong(r3, r0)     // Catch: java.lang.Exception -> L29
                java.lang.Long r2 = java.lang.Long.valueOf(r2)     // Catch: java.lang.Exception -> L29
                goto L7d
            L53:
                boolean r5 = r4 instanceof java.lang.Boolean     // Catch: java.lang.Exception -> L29
                if (r5 == 0) goto L67
                r5 = r4
                java.lang.Boolean r5 = (java.lang.Boolean) r5     // Catch: java.lang.Exception -> L29
                boolean r5 = r5.booleanValue()     // Catch: java.lang.Exception -> L29
                boolean r2 = r2.getBoolean(r3, r5)     // Catch: java.lang.Exception -> L29
                java.lang.Boolean r2 = java.lang.Boolean.valueOf(r2)     // Catch: java.lang.Exception -> L29
                goto L7d
            L67:
                boolean r5 = r4 instanceof java.lang.String     // Catch: java.lang.Exception -> L29
                if (r5 == 0) goto L7c
                r5 = r4
                java.lang.String r5 = (java.lang.String) r5     // Catch: java.lang.Exception -> L29
                java.lang.String r2 = r2.getString(r3, r5)     // Catch: java.lang.Exception -> L29
                goto L7d
            L73:
                com.coloros.translate.utils.c0$a r3 = com.coloros.translate.utils.c0.f7098a
                java.lang.String r5 = "PrefUtil"
                java.lang.String r0 = "getValue"
                r3.f(r5, r0, r2)
            L7c:
                r2 = r4
            L7d:
                if (r2 != 0) goto L80
                goto L81
            L80:
                r4 = r2
            L81:
                return r4
            */
            throw new UnsupportedOperationException("Method not decompiled: com.coloros.translate.utils.l0.a.f(java.lang.String, java.lang.Object, java.lang.String):java.lang.Object");
        }

        public final void h(Context context, String key, long j10) {
            kotlin.jvm.internal.r.e(key, "key");
            SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(context);
            if (defaultSharedPreferences != null) {
                SharedPreferences.Editor editorEdit = defaultSharedPreferences.edit();
                editorEdit.putLong(key + "size", j10);
                editorEdit.apply();
            }
        }

        public final void i(Context context, String str, int i10) {
            SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(context);
            if (defaultSharedPreferences != null) {
                SharedPreferences.Editor editorEdit = defaultSharedPreferences.edit();
                editorEdit.putInt(str, i10);
                editorEdit.apply();
            }
        }

        public final void j(Context context, String str, int i10) {
            SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(context);
            if (defaultSharedPreferences != null) {
                SharedPreferences.Editor editorEdit = defaultSharedPreferences.edit();
                editorEdit.putInt(str, i10);
                editorEdit.apply();
            }
        }

        public final void k(String key, Object obj, boolean z10, String fileName) {
            kotlin.jvm.internal.r.e(key, "key");
            kotlin.jvm.internal.r.e(fileName, "fileName");
            SharedPreferences sharedPreferences = m.INSTANCE.a().getSharedPreferences(fileName, 0);
            kotlin.jvm.internal.r.d(sharedPreferences, "getSharedPreferences(...)");
            SharedPreferences.Editor editorEdit = sharedPreferences.edit();
            try {
                if (obj instanceof Integer) {
                    editorEdit.putInt(key, ((Number) obj).intValue());
                } else if (obj instanceof Float) {
                    editorEdit.putFloat(key, ((Number) obj).floatValue());
                } else if (obj instanceof Long) {
                    editorEdit.putLong(key, ((Number) obj).longValue());
                } else if (obj instanceof Boolean) {
                    editorEdit.putBoolean(key, ((Boolean) obj).booleanValue());
                } else if (obj instanceof String) {
                    editorEdit.putString(key, (String) obj);
                }
            } catch (Exception e10) {
                c0.f7098a.f("PrefUtil", "setValue", e10);
            }
            if (z10) {
                editorEdit.commit();
            } else {
                editorEdit.apply();
            }
        }

        private a() {
        }
    }
}
