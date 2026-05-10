package androidx.appcompat.widget;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Outline;
import android.graphics.drawable.Drawable;

/* JADX INFO: loaded from: classes.dex */
class b extends Drawable {

    /* JADX INFO: renamed from: a */
    final ActionBarContainer f818a;

    private static class a {
        public static void a(Drawable drawable, Outline outline) {
            drawable.getOutline(outline);
        }
    }

    public b(ActionBarContainer actionBarContainer) {
        this.f818a = actionBarContainer;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        ActionBarContainer actionBarContainer = this.f818a;
        if (actionBarContainer.f551k) {
            Drawable drawable = actionBarContainer.f550j;
            if (drawable != null) {
                drawable.draw(canvas);
                return;
            }
            return;
        }
        Drawable drawable2 = actionBarContainer.f548h;
        if (drawable2 != null) {
            drawable2.draw(canvas);
        }
        ActionBarContainer actionBarContainer2 = this.f818a;
        Drawable drawable3 = actionBarContainer2.f549i;
        if (drawable3 == null || !actionBarContainer2.f552l) {
            return;
        }
        drawable3.draw(canvas);
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return 0;
    }

    @Override // android.graphics.drawable.Drawable
    public void getOutline(Outline outline) {
        ActionBarContainer actionBarContainer = this.f818a;
        if (actionBarContainer.f551k) {
            if (actionBarContainer.f550j != null) {
                a.a(actionBarContainer.f548h, outline);
            }
        } else {
            Drawable drawable = actionBarContainer.f548h;
            if (drawable != null) {
                a.a(drawable, outline);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i10) {
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
    }
}
