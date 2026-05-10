package com.google.android.material.internal;

import android.content.Context;
import android.graphics.Point;
import android.graphics.Rect;
import android.util.Log;
import android.view.Display;
import android.view.WindowManager;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes.dex */
public class WindowUtils {
    private static final String TAG = "WindowUtils";

    private static class Api14Impl {
        private Api14Impl() {
        }

        static Rect getCurrentWindowBounds(WindowManager windowManager) {
            int i10;
            Display defaultDisplay = windowManager.getDefaultDisplay();
            Point realSizeForDisplay = getRealSizeForDisplay(defaultDisplay);
            Rect rect = new Rect();
            int i11 = realSizeForDisplay.x;
            if (i11 == 0 || (i10 = realSizeForDisplay.y) == 0) {
                defaultDisplay.getRectSize(rect);
            } else {
                rect.right = i11;
                rect.bottom = i10;
            }
            return rect;
        }

        private static Point getRealSizeForDisplay(Display display) {
            Point point = new Point();
            try {
                Method declaredMethod = Display.class.getDeclaredMethod("getRealSize", Point.class);
                declaredMethod.setAccessible(true);
                declaredMethod.invoke(display, point);
            } catch (IllegalAccessException e10) {
                Log.w(WindowUtils.TAG, e10);
            } catch (NoSuchMethodException e11) {
                Log.w(WindowUtils.TAG, e11);
            } catch (InvocationTargetException e12) {
                Log.w(WindowUtils.TAG, e12);
            }
            return point;
        }
    }

    private static class Api17Impl {
        private Api17Impl() {
        }

        static Rect getCurrentWindowBounds(WindowManager windowManager) {
            Display defaultDisplay = windowManager.getDefaultDisplay();
            Point point = new Point();
            defaultDisplay.getRealSize(point);
            Rect rect = new Rect();
            rect.right = point.x;
            rect.bottom = point.y;
            return rect;
        }
    }

    private static class Api30Impl {
        private Api30Impl() {
        }

        static Rect getCurrentWindowBounds(WindowManager windowManager) {
            return windowManager.getCurrentWindowMetrics().getBounds();
        }
    }

    private WindowUtils() {
    }

    public static Rect getCurrentWindowBounds(Context context) {
        return Api30Impl.getCurrentWindowBounds((WindowManager) context.getSystemService("window"));
    }
}
