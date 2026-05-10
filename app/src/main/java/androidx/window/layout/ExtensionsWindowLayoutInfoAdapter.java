package androidx.window.layout;

import android.app.Activity;
import android.graphics.Rect;
import androidx.window.core.Bounds;
import androidx.window.layout.FoldingFeature;
import androidx.window.layout.HardwareFoldingFeature;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes.dex */
public final class ExtensionsWindowLayoutInfoAdapter {
    public static final ExtensionsWindowLayoutInfoAdapter INSTANCE = new ExtensionsWindowLayoutInfoAdapter();

    private ExtensionsWindowLayoutInfoAdapter() {
    }

    private final boolean c(Activity activity, Bounds bounds) {
        Rect rectA = WindowMetricsCalculatorCompat.INSTANCE.a(activity).a();
        if (bounds.e()) {
            return false;
        }
        if (bounds.d() != rectA.width() && bounds.a() != rectA.height()) {
            return false;
        }
        if (bounds.d() >= rectA.width() || bounds.a() >= rectA.height()) {
            return (bounds.d() == rectA.width() && bounds.a() == rectA.height()) ? false : true;
        }
        return false;
    }

    public final FoldingFeature a(Activity activity, androidx.window.extensions.layout.FoldingFeature oemFeature) {
        HardwareFoldingFeature.Type typeA;
        FoldingFeature.State state;
        r.e(activity, "activity");
        r.e(oemFeature, "oemFeature");
        int type = oemFeature.getType();
        if (type == 1) {
            typeA = HardwareFoldingFeature.Type.f4116b.a();
        } else {
            if (type != 2) {
                return null;
            }
            typeA = HardwareFoldingFeature.Type.f4116b.b();
        }
        int state2 = oemFeature.getState();
        if (state2 == 1) {
            state = FoldingFeature.State.f4109c;
        } else {
            if (state2 != 2) {
                return null;
            }
            state = FoldingFeature.State.f4110d;
        }
        Rect bounds = oemFeature.getBounds();
        r.d(bounds, "oemFeature.bounds");
        if (!c(activity, new Bounds(bounds))) {
            return null;
        }
        Rect bounds2 = oemFeature.getBounds();
        r.d(bounds2, "oemFeature.bounds");
        return new HardwareFoldingFeature(new Bounds(bounds2), typeA, state);
    }

    public final WindowLayoutInfo b(Activity activity, androidx.window.extensions.layout.WindowLayoutInfo info) {
        FoldingFeature foldingFeatureA;
        r.e(activity, "activity");
        r.e(info, "info");
        List<androidx.window.extensions.layout.FoldingFeature> displayFeatures = info.getDisplayFeatures();
        r.d(displayFeatures, "info.displayFeatures");
        ArrayList arrayList = new ArrayList();
        for (androidx.window.extensions.layout.FoldingFeature feature : displayFeatures) {
            if (feature instanceof androidx.window.extensions.layout.FoldingFeature) {
                ExtensionsWindowLayoutInfoAdapter extensionsWindowLayoutInfoAdapter = INSTANCE;
                r.d(feature, "feature");
                foldingFeatureA = extensionsWindowLayoutInfoAdapter.a(activity, feature);
            } else {
                foldingFeatureA = null;
            }
            if (foldingFeatureA != null) {
                arrayList.add(foldingFeatureA);
            }
        }
        return new WindowLayoutInfo(arrayList);
    }
}
