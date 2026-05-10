package x9;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import org.greenrobot.eventbus.ThreadMode;

/* JADX INFO: loaded from: classes2.dex */
@Retention(RetentionPolicy.RUNTIME)
public @interface m {
    int priority() default 0;

    boolean sticky() default false;

    ThreadMode threadMode() default ThreadMode.POSTING;
}
