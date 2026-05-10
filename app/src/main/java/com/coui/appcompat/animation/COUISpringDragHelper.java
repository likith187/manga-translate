package com.coui.appcompat.animation;

import android.annotation.SuppressLint;
import android.util.Log;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import com.coui.appcompat.animation.COUISpringDragHelper;
import com.coui.appcompat.animation.dynamicanimation.COUIDynamicAnimation;
import com.coui.appcompat.animation.dynamicanimation.COUISpringAnimation;
import com.coui.appcompat.animation.dynamicanimation.COUISpringForce;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public class COUISpringDragHelper {
    private static final int ATTACH_FLAG_UNSET = 0;
    private static final int ATTACH_FLAG_X = 1;
    private static final int ATTACH_FLAG_XY = 3;
    private static final int ATTACH_FLAG_Y = 2;
    public static final int CHANGING = 1;
    private static final float DEFAULT_BOUNCE_ATTACH = 0.2f;
    private static final float DEFAULT_BOUNCE_DRAG = 0.0f;
    private static final float DEFAULT_CURVE_RATIO = 0.12f;
    private static final float DEFAULT_MAX_SIZE = 800.0f;
    private static final float DEFAULT_MIN_SIZE = 100.0f;
    private static final float DEFAULT_OVER_DISTANCE = 20.0f;
    private static final float DEFAULT_RESPONSE_ATTACH = 0.35f;
    private static final float DEFAULT_RESPONSE_DRAG = 0.1f;
    public static final int IDLE = 0;
    private static final int MAX_VELOCITY = 12000;
    private static final int MILLISECOND_VELOCITY_UNIT = 1000;
    private static final float MINCHANGE = 0.01f;
    private static final int MOVE_DISTANCE_MIN = 1;
    public static final String TAG = "COUISpringDragHelper";
    private static final int TRANSFORM_DISTANCE = 8;
    private static final int TRANSFORM_VELOCITY = 5000;
    private static final float UNSET = Float.MIN_VALUE;
    private final COUISpringAnimation mAnimX;
    private final COUISpringAnimation mAnimY;
    private float mBounceAttach;
    private float mBounceDrag;
    private float mCurX;
    private float mCurY;
    private float mCurveRatio;
    private final Vec2 mCustomMax;
    private final Vec2 mCustomMin;
    private boolean mDebug;
    private boolean mDeltaSatisfy;
    private float mDeltaX;
    private float mDeltaY;
    private float mDownX;
    private float mDownY;
    private final androidx.dynamicanimation.animation.e mFloatValueHolderX;
    private final androidx.dynamicanimation.animation.e mFloatValueHolderY;
    private boolean mHasDrag;
    private float mMaxOverDistance;
    private Vec2 mMaxPosition;
    private Vec2 mMinPosition;
    private float mResponseAttach;
    private float mResponseDrag;
    private final SpringChangeObserver mSpringChangeObserver;
    private final COUISpringForce mSpringX;
    private final COUISpringForce mSpringY;
    private ArrayList<Vec2> mStableList;
    private float mStartX;
    private float mStartY;
    private int mStatus;
    private float mTransformDistance;
    private float mTransformVelocity;
    private VelocityTracker mVelocityTracker;

    public interface SpringChangeObserver {
        void onSizeChange(float f10, float f11);

        void onStateChange(int i10);
    }

    public COUISpringDragHelper(SpringChangeObserver springChangeObserver, ArrayList<Vec2> arrayList) {
        this(springChangeObserver, arrayList, DEFAULT_CURVE_RATIO, DEFAULT_OVER_DISTANCE, 5000.0f, 8.0f);
    }

    private void beginDrag(float f10, float f11) {
        if (this.mStartX == UNSET || this.mStartY == UNSET) {
            this.mStartX = 0.0f;
            this.mStartY = 0.0f;
            Log.d(TAG, "beginDrag : startValue is Unset");
        }
        this.mDownX = f10;
        this.mDownY = f11;
        this.mHasDrag = true;
        this.mDeltaSatisfy = false;
        float f12 = this.mStartX - f10;
        this.mDeltaX = f12;
        this.mDeltaY = this.mStartY - f11;
        this.mAnimX.setStartValue(f12 + f10);
        this.mAnimY.setStartValue(this.mDeltaY + f11);
        this.mSpringX.setResponse(this.mResponseDrag).setBounce(this.mBounceDrag);
        this.mSpringY.setResponse(this.mResponseDrag).setBounce(this.mBounceDrag);
        Log.d(TAG, "beginDrag : startSize:" + this.mStartX + "," + this.mStartY + ",startValue:" + (f10 + this.mDeltaX) + "," + (f11 + this.mDeltaY));
    }

    private void dragTo(float f10, float f11) {
        dragTo(f10, f11, false);
    }

    @SuppressLint({"NewApi"})
    private Vec2 findNeighborWithX(float f10, float f11, final float f12, ArrayList<Vec2> arrayList) {
        ArrayList arrayList2 = new ArrayList(arrayList);
        arrayList2.sort(new Comparator() { // from class: com.coui.appcompat.animation.c
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return COUISpringDragHelper.lambda$findNeighborWithX$4(f12, (COUISpringDragHelper.Vec2) obj, (COUISpringDragHelper.Vec2) obj2);
            }
        });
        Iterator it = arrayList2.iterator();
        Vec2 vec2 = null;
        Vec2 vec22 = null;
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            Vec2 vec23 = (Vec2) it.next();
            boolean z10 = (f12 < 0.0f && vec23.mX < f10) || (f12 > 0.0f && vec23.mX > f10);
            boolean z11 = vec23.mY == f11;
            if (z10 && z11) {
                if (vec2 == null) {
                    vec2 = vec23;
                }
            } else if (z10 && vec22 == null) {
                vec22 = vec23;
            }
        }
        if (vec2 == null) {
            vec2 = vec22 != null ? vec22 : (Vec2) arrayList2.get(arrayList2.size() - 1);
        }
        Log.d(TAG, "getAttachPosition : attachFlag-1: xOrderPosition:" + arrayList2 + ",result:" + vec2);
        return vec2;
    }

    @SuppressLint({"NewApi"})
    private Vec2 findNeighborWithXY(float f10, float f11, final float f12, final float f13, ArrayList<Vec2> arrayList) {
        ArrayList arrayList2 = new ArrayList(arrayList);
        arrayList2.sort(new Comparator() { // from class: com.coui.appcompat.animation.a
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return COUISpringDragHelper.lambda$findNeighborWithXY$6(f13, f12, (COUISpringDragHelper.Vec2) obj, (COUISpringDragHelper.Vec2) obj2);
            }
        });
        Iterator it = arrayList2.iterator();
        Vec2 vec2 = null;
        Vec2 vec22 = null;
        Vec2 vec23 = null;
        Vec2 vec24 = null;
        Vec2 vec25 = null;
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            Vec2 vec26 = (Vec2) it.next();
            boolean z10 = (f13 < 0.0f && vec26.mY < f11) || (f13 > 0.0f && vec26.mY > f11);
            boolean z11 = (f12 < 0.0f && vec26.mX < f10) || (f12 > 0.0f && vec26.mX > f10);
            boolean z12 = vec26.mY == f11;
            boolean z13 = vec26.mX == f10;
            if (z11 && z10) {
                if (vec2 == null) {
                    vec2 = vec26;
                }
            } else if (z10 && z13) {
                if (vec22 == null) {
                    vec22 = vec26;
                }
            } else if (z11 && z12) {
                if (vec23 == null) {
                    vec23 = vec26;
                }
            } else if (z10) {
                if (vec24 == null) {
                    vec24 = vec26;
                }
            } else if (z11 && vec25 == null) {
                vec25 = vec26;
            }
        }
        Vec2 vec27 = vec2 != null ? vec2 : vec22 != null ? vec22 : vec23 != null ? vec23 : vec24 != null ? vec24 : vec25 != null ? vec25 : (Vec2) arrayList2.get(arrayList2.size() - 1);
        Log.d(TAG, "getAttachPosition : attachFlag-3: orderPosition:" + arrayList2 + ",yChangedXEqual:" + vec22 + ",xChangedYEqual:" + vec23 + ",allChanged:" + vec2 + ",yChangedOnly:" + vec24 + ",xChangedOnly:" + vec25 + ",result:" + vec27);
        return vec27;
    }

    @SuppressLint({"NewApi"})
    private Vec2 findNeighborWithY(float f10, float f11, final float f12, ArrayList<Vec2> arrayList) {
        ArrayList arrayList2 = new ArrayList(arrayList);
        arrayList2.sort(new Comparator() { // from class: com.coui.appcompat.animation.b
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return COUISpringDragHelper.lambda$findNeighborWithY$5(f12, (COUISpringDragHelper.Vec2) obj, (COUISpringDragHelper.Vec2) obj2);
            }
        });
        Iterator it = arrayList2.iterator();
        Vec2 vec2 = null;
        Vec2 vec22 = null;
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            Vec2 vec23 = (Vec2) it.next();
            boolean z10 = (f12 < 0.0f && vec23.mY < f11) || (f12 > 0.0f && vec23.mY > f11);
            boolean z11 = vec23.mX == f10;
            if (z10 && z11) {
                if (vec2 == null) {
                    vec2 = vec23;
                }
            } else if (z10 && vec22 == null) {
                vec22 = vec23;
            }
        }
        if (vec2 == null) {
            vec2 = vec22 != null ? vec22 : (Vec2) arrayList2.get(arrayList2.size() - 1);
        }
        Log.d(TAG, "getAttachPosition : attachFlag-2: yOrderPosition:" + arrayList2 + ",result:" + vec2);
        return vec2;
    }

    private float getSpringApproximateOffset(float f10) {
        if (f10 != 0.0f) {
            float f11 = this.mMaxOverDistance;
            if (f11 != 0.0f) {
                float f12 = ((this.mCurveRatio * f10) / f11) + 1.0f;
                if (f12 == 0.0f) {
                    return 0.0f;
                }
                return (1.0f - (1.0f / f12)) * f11;
            }
        }
        return 0.0f;
    }

    private void initOrResetVelocityTracker() {
        VelocityTracker velocityTracker = this.mVelocityTracker;
        if (velocityTracker == null) {
            this.mVelocityTracker = VelocityTracker.obtain();
        } else {
            velocityTracker.clear();
        }
    }

    private void initVelocityTrackerIfNotExists() {
        if (this.mVelocityTracker == null) {
            this.mVelocityTracker = VelocityTracker.obtain();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int lambda$findNeighborWithX$4(float f10, Vec2 vec2, Vec2 vec22) {
        int i10 = (int) (vec2.mX - vec22.mX);
        if (i10 != 0) {
            return f10 > 0.0f ? i10 : -i10;
        }
        int i11 = (int) (vec2.mY - vec22.mY);
        return f10 > 0.0f ? i11 : -i11;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int lambda$findNeighborWithXY$6(float f10, float f11, Vec2 vec2, Vec2 vec22) {
        int i10 = (int) (vec2.mY - vec22.mY);
        if (i10 != 0) {
            return f10 > 0.0f ? i10 : -i10;
        }
        int i11 = (int) (vec2.mX - vec22.mX);
        return f11 > 0.0f ? i11 : -i11;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int lambda$findNeighborWithY$5(float f10, Vec2 vec2, Vec2 vec22) {
        int i10 = (int) (vec2.mY - vec22.mY);
        if (i10 != 0) {
            return f10 > 0.0f ? i10 : -i10;
        }
        int i11 = (int) (vec2.mX - vec22.mX);
        return f10 > 0.0f ? i11 : -i11;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(COUIDynamicAnimation cOUIDynamicAnimation, float f10, float f11) {
        if (this.mStatus != 1) {
            this.mStatus = 1;
            this.mSpringChangeObserver.onStateChange(1);
        }
        if (f10 != this.mCurX) {
            this.mCurX = f10;
            this.mSpringChangeObserver.onSizeChange(f10, this.mCurY);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$1(COUIDynamicAnimation cOUIDynamicAnimation, boolean z10, float f10, float f11) {
        if (this.mAnimY.isRunning()) {
            if (this.mStatus != 1) {
                this.mStatus = 1;
                this.mSpringChangeObserver.onStateChange(1);
                return;
            }
            return;
        }
        if (this.mStatus != 0) {
            this.mStatus = 0;
            this.mSpringChangeObserver.onStateChange(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$2(COUIDynamicAnimation cOUIDynamicAnimation, float f10, float f11) {
        if (this.mStatus != 1) {
            this.mStatus = 1;
            this.mSpringChangeObserver.onStateChange(1);
        }
        if (f10 != this.mCurY) {
            this.mCurY = f10;
            this.mSpringChangeObserver.onSizeChange(this.mCurX, f10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$3(COUIDynamicAnimation cOUIDynamicAnimation, boolean z10, float f10, float f11) {
        if (this.mAnimX.isRunning()) {
            if (this.mStatus != 1) {
                this.mStatus = 1;
                this.mSpringChangeObserver.onStateChange(1);
                return;
            }
            return;
        }
        if (this.mStatus != 0) {
            this.mStatus = 0;
            this.mSpringChangeObserver.onStateChange(0);
        }
    }

    private void loadStableList(ArrayList<Vec2> arrayList) {
        this.mStableList = arrayList;
        if (arrayList == null || arrayList.size() < 1) {
            this.mMinPosition.set(this.mCustomMin);
            this.mMaxPosition.set(this.mCustomMax);
            Log.d(TAG, "COUISpringDragHelper : stableList is empty");
            return;
        }
        float fMax = UNSET;
        float fMin = Float.MAX_VALUE;
        float fMin2 = Float.MAX_VALUE;
        float fMax2 = Float.MIN_VALUE;
        for (Vec2 vec2 : arrayList) {
            fMin = Math.min(fMin, vec2.mX);
            fMin2 = Math.min(fMin2, vec2.mY);
            fMax = Math.max(fMax, vec2.mX);
            fMax2 = Math.max(fMax2, vec2.mY);
        }
        this.mMinPosition.set(fMin, fMin2);
        this.mMaxPosition.set(fMax, fMax2);
        Log.d(TAG, "COUISpringDragHelper : stableList:" + arrayList);
    }

    private void recycleVelocityTracker() {
        VelocityTracker velocityTracker = this.mVelocityTracker;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.mVelocityTracker = null;
        }
    }

    private void resetDrag() {
        this.mHasDrag = false;
        this.mDeltaSatisfy = false;
        this.mDownX = UNSET;
        this.mDownY = UNSET;
        this.mStartX = UNSET;
        this.mStartY = UNSET;
        this.mDeltaX = UNSET;
        this.mDeltaY = UNSET;
    }

    public void cancelDrag() {
        this.mAnimX.cancelComplete();
        this.mAnimY.cancelComplete();
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x004f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public com.coui.appcompat.animation.COUISpringDragHelper.Vec2 getAttachPosition() {
        /*
            Method dump skipped, instruction units count: 381
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.coui.appcompat.animation.COUISpringDragHelper.getAttachPosition():com.coui.appcompat.animation.COUISpringDragHelper$Vec2");
    }

    public void setAttachBounce(float f10) {
        this.mBounceAttach = f10;
    }

    public void setAttachProp(float f10, float f11) {
        this.mResponseAttach = f10;
        this.mBounceAttach = f11;
    }

    public void setAttachResponse(float f10) {
        this.mResponseAttach = f10;
    }

    public void setCurveRatio(float f10) {
        this.mCurveRatio = f10;
    }

    public void setDebug() {
        this.mDebug = true;
    }

    public void setDragBounce(float f10) {
        this.mBounceDrag = f10;
    }

    public void setDragProp(float f10, float f11) {
        this.mResponseDrag = f10;
        this.mBounceDrag = f11;
    }

    public void setDragResponse(float f10) {
        this.mResponseDrag = f10;
    }

    public void setMax(Vec2 vec2) {
        this.mCustomMax.set(vec2);
        ArrayList<Vec2> arrayList = this.mStableList;
        if (arrayList == null || arrayList.size() < 1) {
            this.mMinPosition.set(this.mCustomMin);
            this.mMaxPosition.set(this.mCustomMax);
        }
    }

    public void setMin(Vec2 vec2) {
        this.mCustomMin.set(vec2);
        ArrayList<Vec2> arrayList = this.mStableList;
        if (arrayList == null || arrayList.size() < 1) {
            this.mMinPosition.set(this.mCustomMin);
            this.mMaxPosition.set(this.mCustomMax);
        }
    }

    public void setOverDistance(float f10) {
        this.mMaxOverDistance = f10;
    }

    public void setOverProp(float f10, float f11) {
        this.mCurveRatio = f10;
        this.mMaxOverDistance = f11;
    }

    public void setStableList(ArrayList<Vec2> arrayList) {
        loadStableList(arrayList);
    }

    public void setStartValue(float f10, float f11) {
        this.mStartX = f10;
        this.mStartY = f11;
        this.mCurX = f10;
        this.mCurY = f11;
    }

    public void setTransformDistance(float f10) {
        this.mTransformDistance = f10;
    }

    public void setTransformProp(float f10, float f11) {
        this.mTransformVelocity = f10;
        this.mTransformDistance = f11;
    }

    public void setTransformVelocity(float f10) {
        this.mTransformVelocity = f10;
    }

    public void springDrag(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        float rawX = motionEvent.getRawX();
        float rawY = motionEvent.getRawY();
        if (actionMasked == 0) {
            initOrResetVelocityTracker();
            this.mVelocityTracker.addMovement(motionEvent);
            beginDrag(rawX, rawY);
            return;
        }
        if (actionMasked != 1) {
            if (actionMasked == 2) {
                initVelocityTrackerIfNotExists();
                this.mVelocityTracker.addMovement(motionEvent);
                if (!this.mHasDrag) {
                    beginDrag(rawX, rawY);
                }
                dragTo(rawX, rawY);
                return;
            }
            if (actionMasked != 3) {
                return;
            }
        }
        Vec2 attachPosition = getAttachPosition();
        if (attachPosition != null) {
            cancelDrag();
            dragTo(attachPosition.mX - this.mDeltaX, attachPosition.mY - this.mDeltaY, true);
        } else {
            dragTo(rawX, rawY);
        }
        recycleVelocityTracker();
        resetDrag();
    }

    public static class Vec2 {
        float mX;
        float mY;

        public Vec2(Vec2 vec2) {
            this.mX = vec2.getX();
            this.mY = vec2.getY();
        }

        public float getX() {
            return this.mX;
        }

        public float getY() {
            return this.mY;
        }

        public void set(Vec2 vec2) {
            this.mX = vec2.getX();
            this.mY = vec2.getY();
        }

        public void setX(float f10) {
            this.mX = f10;
        }

        public void setY(float f10) {
            this.mY = f10;
        }

        public String toString() {
            return "[" + this.mX + "," + this.mY + "]";
        }

        public void set(float f10, float f11) {
            this.mX = f10;
            this.mY = f11;
        }

        public Vec2(float f10, float f11) {
            this.mX = f10;
            this.mY = f11;
        }
    }

    public COUISpringDragHelper(SpringChangeObserver springChangeObserver, ArrayList<Vec2> arrayList, float f10, float f11, float f12, float f13) {
        this(springChangeObserver, arrayList, 0.1f, 0.0f, DEFAULT_RESPONSE_ATTACH, 0.2f, f10, f11, f12, f13);
    }

    private void dragTo(float f10, float f11, boolean z10) {
        if (z10) {
            this.mSpringX.setResponse(this.mResponseAttach).setBounce(this.mBounceAttach);
            this.mSpringY.setResponse(this.mResponseAttach).setBounce(this.mBounceAttach);
        }
        if (!this.mDeltaSatisfy) {
            this.mDeltaSatisfy = Math.abs(f10 - this.mDownX) >= this.mTransformDistance || Math.abs(f11 - this.mDownY) >= this.mTransformDistance;
        }
        float springApproximateOffset = this.mDeltaX + f10;
        float springApproximateOffset2 = this.mDeltaY + f11;
        float f12 = this.mMinPosition.mX;
        if (springApproximateOffset < f12) {
            springApproximateOffset = this.mMinPosition.mX - getSpringApproximateOffset(f12 - springApproximateOffset);
        } else {
            float f13 = this.mMaxPosition.mX;
            if (springApproximateOffset > f13) {
                springApproximateOffset = getSpringApproximateOffset(springApproximateOffset - f13) + this.mMaxPosition.mX;
            }
        }
        float f14 = this.mMinPosition.mY;
        if (springApproximateOffset2 < f14) {
            springApproximateOffset2 = this.mMinPosition.mY - getSpringApproximateOffset(f14 - springApproximateOffset2);
        } else {
            float f15 = this.mMaxPosition.mY;
            if (springApproximateOffset2 > f15) {
                springApproximateOffset2 = getSpringApproximateOffset(springApproximateOffset2 - f15) + this.mMaxPosition.mY;
            }
        }
        if (this.mDebug) {
            Log.d(TAG, "dragTo : isAttach:" + z10 + " ,down:" + this.mDownX + "," + this.mDownY + " ,x:" + f10 + "," + f11 + " ,mTransformDistance:" + this.mTransformDistance + " ,mDeltaSatisfy:" + this.mDeltaSatisfy + " ,target:" + (f10 + this.mDeltaX) + "," + (f11 + this.mDeltaY) + " ,curValue:" + this.mFloatValueHolderX.a() + "," + this.mFloatValueHolderY.a() + " ,minPosition:" + this.mMinPosition.mX + "," + this.mMinPosition.mY + " ,maxPosition:" + this.mMaxPosition.mX + "," + this.mMaxPosition.mY);
        }
        if (Math.abs(springApproximateOffset - this.mFloatValueHolderX.a()) >= MINCHANGE || Math.abs(springApproximateOffset2 - this.mFloatValueHolderY.a()) >= MINCHANGE) {
            if (this.mAnimX.isRunning() || this.mAnimY.isRunning() || Math.abs(springApproximateOffset - this.mFloatValueHolderX.a()) >= 1.0f || Math.abs(springApproximateOffset2 - this.mFloatValueHolderY.a()) >= 1.0f) {
                this.mAnimX.animateToFinalPosition(springApproximateOffset);
                this.mAnimY.animateToFinalPosition(springApproximateOffset2);
            }
        }
    }

    public COUISpringDragHelper(SpringChangeObserver springChangeObserver, ArrayList<Vec2> arrayList, float f10, float f11, float f12, float f13, float f14, float f15, float f16, float f17) {
        this.mCustomMin = new Vec2(DEFAULT_MIN_SIZE, DEFAULT_MIN_SIZE);
        this.mCustomMax = new Vec2(DEFAULT_MAX_SIZE, DEFAULT_MAX_SIZE);
        this.mMinPosition = new Vec2(DEFAULT_MIN_SIZE, DEFAULT_MIN_SIZE);
        this.mMaxPosition = new Vec2(DEFAULT_MAX_SIZE, DEFAULT_MAX_SIZE);
        androidx.dynamicanimation.animation.e eVar = new androidx.dynamicanimation.animation.e();
        this.mFloatValueHolderX = eVar;
        androidx.dynamicanimation.animation.e eVar2 = new androidx.dynamicanimation.animation.e();
        this.mFloatValueHolderY = eVar2;
        this.mDownX = UNSET;
        this.mDownY = UNSET;
        this.mStartX = UNSET;
        this.mStartY = UNSET;
        this.mDeltaX = UNSET;
        this.mDeltaY = UNSET;
        this.mHasDrag = false;
        this.mDeltaSatisfy = false;
        this.mStatus = 0;
        this.mDebug = false;
        this.mResponseDrag = f10;
        this.mBounceDrag = f11;
        this.mResponseAttach = f12;
        this.mBounceAttach = f13;
        this.mCurveRatio = f14;
        this.mMaxOverDistance = f15;
        this.mTransformVelocity = f16;
        this.mTransformDistance = f17;
        this.mSpringChangeObserver = springChangeObserver;
        loadStableList(arrayList);
        COUISpringForce bounce = new COUISpringForce(0.0f).setResponse(this.mResponseDrag).setBounce(this.mBounceDrag);
        this.mSpringX = bounce;
        COUISpringForce bounce2 = new COUISpringForce(0.0f).setResponse(this.mResponseDrag).setBounce(this.mBounceDrag);
        this.mSpringY = bounce2;
        COUISpringAnimation spring = new COUISpringAnimation(eVar).setSpring(bounce);
        this.mAnimX = spring;
        COUISpringAnimation spring2 = new COUISpringAnimation(eVar2).setSpring(bounce2);
        this.mAnimY = spring2;
        spring.addUpdateListener(new COUIDynamicAnimation.OnAnimationUpdateListener() { // from class: com.coui.appcompat.animation.d
            @Override // com.coui.appcompat.animation.dynamicanimation.COUIDynamicAnimation.OnAnimationUpdateListener
            public final void onAnimationUpdate(COUIDynamicAnimation cOUIDynamicAnimation, float f18, float f19) {
                this.f7251a.lambda$new$0(cOUIDynamicAnimation, f18, f19);
            }
        });
        spring.addEndListener(new COUIDynamicAnimation.OnAnimationEndListener() { // from class: com.coui.appcompat.animation.e
            @Override // com.coui.appcompat.animation.dynamicanimation.COUIDynamicAnimation.OnAnimationEndListener
            public final void onAnimationEnd(COUIDynamicAnimation cOUIDynamicAnimation, boolean z10, float f18, float f19) {
                this.f7252a.lambda$new$1(cOUIDynamicAnimation, z10, f18, f19);
            }
        });
        spring2.addUpdateListener(new COUIDynamicAnimation.OnAnimationUpdateListener() { // from class: com.coui.appcompat.animation.f
            @Override // com.coui.appcompat.animation.dynamicanimation.COUIDynamicAnimation.OnAnimationUpdateListener
            public final void onAnimationUpdate(COUIDynamicAnimation cOUIDynamicAnimation, float f18, float f19) {
                this.f7253a.lambda$new$2(cOUIDynamicAnimation, f18, f19);
            }
        });
        spring2.addEndListener(new COUIDynamicAnimation.OnAnimationEndListener() { // from class: com.coui.appcompat.animation.g
            @Override // com.coui.appcompat.animation.dynamicanimation.COUIDynamicAnimation.OnAnimationEndListener
            public final void onAnimationEnd(COUIDynamicAnimation cOUIDynamicAnimation, boolean z10, float f18, float f19) {
                this.f7254a.lambda$new$3(cOUIDynamicAnimation, z10, f18, f19);
            }
        });
    }
}
