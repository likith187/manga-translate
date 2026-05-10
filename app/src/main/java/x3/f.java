package x3;

import android.graphics.Matrix;
import android.util.Property;
import android.widget.ImageView;

/* JADX INFO: loaded from: classes.dex */
public class f extends Property {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Matrix f16377a;

    public f() {
        super(Matrix.class, "imageMatrixProperty");
        this.f16377a = new Matrix();
    }

    @Override // android.util.Property
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public Matrix get(ImageView imageView) {
        this.f16377a.set(imageView.getImageMatrix());
        return this.f16377a;
    }

    @Override // android.util.Property
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public void set(ImageView imageView, Matrix matrix) {
        imageView.setImageMatrix(matrix);
    }
}
