package d0;

import android.view.accessibility.AccessibilityManager;

/* JADX INFO: loaded from: classes.dex */
public abstract class c {

    public interface a {
        void onTouchExplorationStateChanged(boolean z10);
    }

    private static final class b implements AccessibilityManager.TouchExplorationStateChangeListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final a f11458a;

        b(a aVar) {
            this.f11458a = aVar;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof b) {
                return this.f11458a.equals(((b) obj).f11458a);
            }
            return false;
        }

        public int hashCode() {
            return this.f11458a.hashCode();
        }

        @Override // android.view.accessibility.AccessibilityManager.TouchExplorationStateChangeListener
        public void onTouchExplorationStateChanged(boolean z10) {
            this.f11458a.onTouchExplorationStateChanged(z10);
        }
    }

    public static boolean a(AccessibilityManager accessibilityManager, a aVar) {
        return accessibilityManager.addTouchExplorationStateChangeListener(new b(aVar));
    }

    public static boolean b(AccessibilityManager accessibilityManager) {
        return accessibilityManager.isTouchExplorationEnabled();
    }

    public static boolean c(AccessibilityManager accessibilityManager, a aVar) {
        return accessibilityManager.removeTouchExplorationStateChangeListener(new b(aVar));
    }
}
