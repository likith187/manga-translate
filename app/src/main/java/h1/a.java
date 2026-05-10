package h1;

import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.os.LocaleList;
import r1.i;

/* JADX INFO: loaded from: classes.dex */
public class a extends Paint {
    public a() {
    }

    @Override // android.graphics.Paint
    public void setAlpha(int i10) {
        super.setAlpha(i.c(i10, 0, 255));
    }

    @Override // android.graphics.Paint
    public void setTextLocales(LocaleList localeList) {
    }

    public a(int i10) {
        super(i10);
    }

    public a(PorterDuff.Mode mode) {
        setXfermode(new PorterDuffXfermode(mode));
    }

    public a(int i10, PorterDuff.Mode mode) {
        super(i10);
        setXfermode(new PorterDuffXfermode(mode));
    }
}
