package d;

import android.content.Context;
import android.content.Intent;
import androidx.activity.result.ActivityResult;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes.dex */
public final class d extends d.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f11454a = new a(null);

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    @Override // d.a
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public Intent a(Context context, Intent input) {
        r.e(context, "context");
        r.e(input, "input");
        return input;
    }

    @Override // d.a
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public ActivityResult c(int i10, Intent intent) {
        return new ActivityResult(i10, intent);
    }
}
