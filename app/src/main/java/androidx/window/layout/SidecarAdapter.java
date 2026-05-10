package androidx.window.layout;

import android.graphics.Rect;
import androidx.window.core.Bounds;
import androidx.window.core.SpecificationComputer;
import androidx.window.layout.FoldingFeature;
import androidx.window.layout.HardwareFoldingFeature;
import androidx.window.sidecar.SidecarDeviceState;
import androidx.window.sidecar.SidecarDisplayFeature;
import androidx.window.sidecar.SidecarWindowLayoutInfo;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.o;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes.dex */
public final class SidecarAdapter {

    /* JADX INFO: renamed from: b */
    public static final Companion f4122b = new Companion(null);

    /* JADX INFO: renamed from: c */
    private static final String f4123c = SidecarAdapter.class.getSimpleName();

    /* JADX INFO: renamed from: a */
    private final SpecificationComputer.VerificationMode f4124a;

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final int a(SidecarDeviceState sidecarDeviceState) {
            r.e(sidecarDeviceState, "sidecarDeviceState");
            try {
                try {
                    return sidecarDeviceState.posture;
                } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException unused) {
                    return 0;
                }
            } catch (NoSuchFieldError unused2) {
                Object objInvoke = SidecarDeviceState.class.getMethod("getPosture", null).invoke(sidecarDeviceState, null);
                if (objInvoke != null) {
                    return ((Integer) objInvoke).intValue();
                }
                throw new NullPointerException("null cannot be cast to non-null type kotlin.Int");
            }
        }

        public final int b(SidecarDeviceState sidecarDeviceState) {
            r.e(sidecarDeviceState, "sidecarDeviceState");
            int iA = a(sidecarDeviceState);
            if (iA < 0 || iA > 4) {
                return 0;
            }
            return iA;
        }

        public final List c(SidecarWindowLayoutInfo info) {
            r.e(info, "info");
            try {
                try {
                    List list = info.displayFeatures;
                    return list == null ? o.h() : list;
                } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException unused) {
                    return o.h();
                }
            } catch (NoSuchFieldError unused2) {
                Object objInvoke = SidecarWindowLayoutInfo.class.getMethod("getDisplayFeatures", null).invoke(info, null);
                if (objInvoke != null) {
                    return (List) objInvoke;
                }
                throw new NullPointerException("null cannot be cast to non-null type kotlin.collections.List<androidx.window.sidecar.SidecarDisplayFeature>");
            }
        }

        public final void d(SidecarDeviceState sidecarDeviceState, int i10) {
            r.e(sidecarDeviceState, "sidecarDeviceState");
            try {
                try {
                    sidecarDeviceState.posture = i10;
                } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException unused) {
                }
            } catch (NoSuchFieldError unused2) {
                SidecarDeviceState.class.getMethod("setPosture", Integer.TYPE).invoke(sidecarDeviceState, Integer.valueOf(i10));
            }
        }

        private Companion() {
        }
    }

    public SidecarAdapter() {
        this(null, 1, null);
    }

    private final boolean b(SidecarDisplayFeature sidecarDisplayFeature, SidecarDisplayFeature sidecarDisplayFeature2) {
        if (r.a(sidecarDisplayFeature, sidecarDisplayFeature2)) {
            return true;
        }
        if (sidecarDisplayFeature == null || sidecarDisplayFeature2 == null || sidecarDisplayFeature.getType() != sidecarDisplayFeature2.getType()) {
            return false;
        }
        return r.a(sidecarDisplayFeature.getRect(), sidecarDisplayFeature2.getRect());
    }

    private final boolean c(List list, List list2) {
        if (list == list2) {
            return true;
        }
        if (list == null || list2 == null || list.size() != list2.size()) {
            return false;
        }
        int size = list.size();
        for (int i10 = 0; i10 < size; i10++) {
            if (!b((SidecarDisplayFeature) list.get(i10), (SidecarDisplayFeature) list2.get(i10))) {
                return false;
            }
        }
        return true;
    }

    public final boolean a(SidecarDeviceState sidecarDeviceState, SidecarDeviceState sidecarDeviceState2) {
        if (r.a(sidecarDeviceState, sidecarDeviceState2)) {
            return true;
        }
        if (sidecarDeviceState == null || sidecarDeviceState2 == null) {
            return false;
        }
        Companion companion = f4122b;
        return companion.b(sidecarDeviceState) == companion.b(sidecarDeviceState2);
    }

    public final boolean d(SidecarWindowLayoutInfo sidecarWindowLayoutInfo, SidecarWindowLayoutInfo sidecarWindowLayoutInfo2) {
        if (r.a(sidecarWindowLayoutInfo, sidecarWindowLayoutInfo2)) {
            return true;
        }
        if (sidecarWindowLayoutInfo == null || sidecarWindowLayoutInfo2 == null) {
            return false;
        }
        Companion companion = f4122b;
        return c(companion.c(sidecarWindowLayoutInfo), companion.c(sidecarWindowLayoutInfo2));
    }

    public final WindowLayoutInfo e(SidecarWindowLayoutInfo sidecarWindowLayoutInfo, SidecarDeviceState state) {
        r.e(state, "state");
        if (sidecarWindowLayoutInfo == null) {
            return new WindowLayoutInfo(o.h());
        }
        SidecarDeviceState sidecarDeviceState = new SidecarDeviceState();
        Companion companion = f4122b;
        companion.d(sidecarDeviceState, companion.b(state));
        return new WindowLayoutInfo(f(companion.c(sidecarWindowLayoutInfo), sidecarDeviceState));
    }

    public final List f(List sidecarDisplayFeatures, SidecarDeviceState deviceState) {
        r.e(sidecarDisplayFeatures, "sidecarDisplayFeatures");
        r.e(deviceState, "deviceState");
        ArrayList arrayList = new ArrayList();
        Iterator it = sidecarDisplayFeatures.iterator();
        while (it.hasNext()) {
            DisplayFeature displayFeatureG = g((SidecarDisplayFeature) it.next(), deviceState);
            if (displayFeatureG != null) {
                arrayList.add(displayFeatureG);
            }
        }
        return arrayList;
    }

    public final DisplayFeature g(SidecarDisplayFeature feature, SidecarDeviceState deviceState) {
        HardwareFoldingFeature.Type typeA;
        FoldingFeature.State state;
        r.e(feature, "feature");
        r.e(deviceState, "deviceState");
        SpecificationComputer.Companion companion = SpecificationComputer.f4026a;
        String TAG = f4123c;
        r.d(TAG, "TAG");
        SidecarDisplayFeature sidecarDisplayFeature = (SidecarDisplayFeature) SpecificationComputer.Companion.b(companion, feature, TAG, this.f4124a, null, 4, null).c("Type must be either TYPE_FOLD or TYPE_HINGE", SidecarAdapter$translate$checkedFeature$1.INSTANCE).c("Feature bounds must not be 0", SidecarAdapter$translate$checkedFeature$2.INSTANCE).c("TYPE_FOLD must have 0 area", SidecarAdapter$translate$checkedFeature$3.INSTANCE).c("Feature be pinned to either left or top", SidecarAdapter$translate$checkedFeature$4.INSTANCE).a();
        if (sidecarDisplayFeature == null) {
            return null;
        }
        int type = sidecarDisplayFeature.getType();
        if (type == 1) {
            typeA = HardwareFoldingFeature.Type.f4116b.a();
        } else {
            if (type != 2) {
                return null;
            }
            typeA = HardwareFoldingFeature.Type.f4116b.b();
        }
        int iB = f4122b.b(deviceState);
        if (iB == 0 || iB == 1) {
            return null;
        }
        if (iB == 2) {
            state = FoldingFeature.State.f4110d;
        } else {
            if (iB != 3 && iB == 4) {
                return null;
            }
            state = FoldingFeature.State.f4109c;
        }
        Rect rect = feature.getRect();
        r.d(rect, "feature.rect");
        return new HardwareFoldingFeature(new Bounds(rect), typeA, state);
    }

    public SidecarAdapter(SpecificationComputer.VerificationMode verificationMode) {
        r.e(verificationMode, "verificationMode");
        this.f4124a = verificationMode;
    }

    public /* synthetic */ SidecarAdapter(SpecificationComputer.VerificationMode verificationMode, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? SpecificationComputer.VerificationMode.QUIET : verificationMode);
    }
}
