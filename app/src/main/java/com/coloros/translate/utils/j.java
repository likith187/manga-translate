package com.coloros.translate.utils;

import android.app.Activity;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
public abstract class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f7127a = new a(null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static long f7128b;

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static /* synthetic */ boolean c(a aVar, long j10, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                j10 = 500;
            }
            return aVar.b(j10);
        }

        public final int a(float f10) {
            return (int) ((f10 * Resources.getSystem().getDisplayMetrics().density) + 0.5f);
        }

        public final boolean b(long j10) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (Math.abs(jCurrentTimeMillis - j.f7128b) < j10) {
                c0.f7098a.i("CommonUtils", "isDuplicateClick,Click again and again for a short time");
                return true;
            }
            c0.f7098a.d("CommonUtils", "isDuplicateClick,No repeated clicks for a short period of time");
            j.f7128b = jCurrentTimeMillis;
            return false;
        }

        public final boolean d(Context context) {
            Resources resources;
            Configuration configuration;
            return (context == null || (resources = context.getResources()) == null || (configuration = resources.getConfiguration()) == null || configuration.orientation != 1) ? false : true;
        }

        public final boolean e(Context context) {
            if (!(context instanceof Activity)) {
                return d(context);
            }
            int rotation = ((Activity) context).getWindowManager().getDefaultDisplay().getRotation();
            return rotation == 0 || rotation == 2;
        }

        private a() {
        }
    }

    public static final boolean c(long j10) {
        return f7127a.b(j10);
    }
}
