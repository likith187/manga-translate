package androidx.core.view;

import android.view.Menu;
import android.view.MenuItem;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public abstract class s {

    public static final class a implements Iterator, x8.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private int f2111a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Menu f2112b;

        a(Menu menu) {
            this.f2112b = menu;
        }

        @Override // java.util.Iterator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public MenuItem next() {
            Menu menu = this.f2112b;
            int i10 = this.f2111a;
            this.f2111a = i10 + 1;
            MenuItem item = menu.getItem(i10);
            if (item != null) {
                return item;
            }
            throw new IndexOutOfBoundsException();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f2111a < this.f2112b.size();
        }

        @Override // java.util.Iterator
        public void remove() {
            n8.h0 h0Var;
            Menu menu = this.f2112b;
            int i10 = this.f2111a - 1;
            this.f2111a = i10;
            MenuItem item = menu.getItem(i10);
            if (item != null) {
                menu.removeItem(item.getItemId());
                h0Var = n8.h0.INSTANCE;
            } else {
                h0Var = null;
            }
            if (h0Var == null) {
                throw new IndexOutOfBoundsException();
            }
        }
    }

    public static final Iterator a(Menu menu) {
        return new a(menu);
    }
}
