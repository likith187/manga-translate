package androidx.core.view;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.util.Log;
import android.view.MenuItem;

/* JADX INFO: loaded from: classes.dex */
public abstract class r {

    static class a {
        static MenuItem a(MenuItem menuItem, char c10, int i10) {
            return menuItem.setAlphabeticShortcut(c10, i10);
        }

        static MenuItem b(MenuItem menuItem, CharSequence charSequence) {
            return menuItem.setContentDescription(charSequence);
        }

        static MenuItem c(MenuItem menuItem, ColorStateList colorStateList) {
            return menuItem.setIconTintList(colorStateList);
        }

        static MenuItem d(MenuItem menuItem, PorterDuff.Mode mode) {
            return menuItem.setIconTintMode(mode);
        }

        static MenuItem e(MenuItem menuItem, char c10, int i10) {
            return menuItem.setNumericShortcut(c10, i10);
        }

        static MenuItem f(MenuItem menuItem, CharSequence charSequence) {
            return menuItem.setTooltipText(charSequence);
        }
    }

    public static MenuItem a(MenuItem menuItem, b bVar) {
        if (menuItem instanceof w.b) {
            return ((w.b) menuItem).setSupportActionProvider(bVar);
        }
        Log.w("MenuItemCompat", "setActionProvider: item does not implement SupportMenuItem; ignoring");
        return menuItem;
    }

    public static void b(MenuItem menuItem, char c10, int i10) {
        if (menuItem instanceof w.b) {
            ((w.b) menuItem).setAlphabeticShortcut(c10, i10);
        } else {
            a.a(menuItem, c10, i10);
        }
    }

    public static void c(MenuItem menuItem, CharSequence charSequence) {
        if (menuItem instanceof w.b) {
            ((w.b) menuItem).setContentDescription(charSequence);
        } else {
            a.b(menuItem, charSequence);
        }
    }

    public static void d(MenuItem menuItem, ColorStateList colorStateList) {
        if (menuItem instanceof w.b) {
            ((w.b) menuItem).setIconTintList(colorStateList);
        } else {
            a.c(menuItem, colorStateList);
        }
    }

    public static void e(MenuItem menuItem, PorterDuff.Mode mode) {
        if (menuItem instanceof w.b) {
            ((w.b) menuItem).setIconTintMode(mode);
        } else {
            a.d(menuItem, mode);
        }
    }

    public static void f(MenuItem menuItem, char c10, int i10) {
        if (menuItem instanceof w.b) {
            ((w.b) menuItem).setNumericShortcut(c10, i10);
        } else {
            a.e(menuItem, c10, i10);
        }
    }

    public static void g(MenuItem menuItem, CharSequence charSequence) {
        if (menuItem instanceof w.b) {
            ((w.b) menuItem).setTooltipText(charSequence);
        } else {
            a.f(menuItem, charSequence);
        }
    }
}
