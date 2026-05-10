package com.oplus.aiunit.core.base;

import android.graphics.Bitmap;
import com.oplus.aiunit.core.FramePackage;
import com.oplus.aiunit.core.FrameUnit;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class FrameOutputSlot extends FrameSlot {
    private static final String OUTPUT_TAG_PREFIX = "output_";
    private static final String TAG = "FrameOutputSlot";
    private final Map<String, Bitmap> mBitmapCollection;
    private FramePackage mFramePackage;
    private String mJsonResult;
    private String mStatistics;

    public FrameOutputSlot(AIContext aIContext) {
        super(aIContext);
        this.mBitmapCollection = new HashMap();
        this.mJsonResult = "";
        this.mStatistics = "";
        this.mFramePackage = null;
    }

    public void clearBitmaps() {
        this.mBitmapCollection.clear();
    }

    public void convertBitmap(FrameUnit frameUnit) {
        this.mBitmapCollection.put(frameUnit.getTag(), frameUnit.createBitmap());
    }

    public Bitmap getBitmap(String str) {
        return this.mBitmapCollection.get(str);
    }

    public FramePackage getFramePackage() {
        return this.mFramePackage;
    }

    public String getJsonResult() {
        return this.mJsonResult;
    }

    public Bitmap getOutputBitmap() {
        Bitmap bitmap = getBitmap(0);
        return (bitmap == null && this.mBitmapCollection.size() == 1) ? this.mBitmapCollection.values().iterator().next() : bitmap;
    }

    public String getStatistics() {
        return this.mStatistics;
    }

    public void setFramePackage(FramePackage framePackage) {
        this.mFramePackage = framePackage;
    }

    public void setJsonResult(String str) {
        this.mJsonResult = str;
    }

    public void setStatistics(String str) {
        this.mStatistics = str;
    }

    public Bitmap getBitmap(int i10) {
        return getBitmap(OUTPUT_TAG_PREFIX + i10);
    }
}
