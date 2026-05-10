package com.coui.appcompat.state;

import android.util.SparseArray;
import android.view.View;
import androidx.core.view.m0;

/* JADX INFO: loaded from: classes.dex */
public class PaddingProcessor extends Processor<Integer, View> {
    public static final int KEY_BOTTOM_PADDING = 2;
    public static final int KEY_END_PADDING = 3;
    public static final int KEY_START_PADDING = 1;
    public static final int KEY_TOP_PADDING = 0;

    public static class Builder {
        SparseArray<Integer> mSparseArray = new SparseArray<>();
        int mState;
        View mView;

        public Builder(int i10) {
            this.mState = i10;
        }

        public PaddingProcessor create() {
            return new PaddingProcessor(this.mView, this.mState, this.mSparseArray);
        }

        public Builder setPaddingBottom(int i10) {
            this.mSparseArray.put(2, Integer.valueOf(i10));
            return this;
        }

        public Builder setPaddingEnd(int i10) {
            this.mSparseArray.put(3, Integer.valueOf(i10));
            return this;
        }

        public Builder setPaddingStart(int i10) {
            this.mSparseArray.put(1, Integer.valueOf(i10));
            return this;
        }

        public Builder setPaddingTop(int i10) {
            this.mSparseArray.put(0, Integer.valueOf(i10));
            return this;
        }

        public Builder with(View view) {
            this.mView = view;
            return this;
        }
    }

    @Override // com.coui.appcompat.state.Processor
    public void onProcess(View view, int i10, SparseArray<Integer> sparseArray) {
        m0.z0(view, sparseArray.get(1) != null ? sparseArray.get(1).intValue() : view.getPaddingStart(), sparseArray.get(0) != null ? sparseArray.get(0).intValue() : view.getPaddingTop(), sparseArray.get(3) != null ? sparseArray.get(3).intValue() : view.getPaddingEnd(), sparseArray.get(2) != null ? sparseArray.get(2).intValue() : view.getPaddingBottom());
    }

    private PaddingProcessor(View view, int i10, SparseArray<Integer> sparseArray) {
        super(view, i10, sparseArray);
    }
}
