package com.oplus.aiunit.core.base;

import com.oplus.aiunit.core.FrameUnit;
import com.oplus.aiunit.core.utils.AILog;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes.dex */
public class FrameSlot implements Slot {
    private static final String TAG = "FrameSlot";
    private final AIContext mAIContext;
    private final List<FrameUnit> mFrameUnitList = new CopyOnWriteArrayList();

    public FrameSlot(AIContext aIContext) {
        this.mAIContext = aIContext;
    }

    public int addFrameUnit(FrameUnit frameUnit) {
        if (this.mFrameUnitList.add(frameUnit)) {
            return this.mFrameUnitList.size() - 1;
        }
        return -1;
    }

    public void cleanAutoFrameUnit() {
        if (this.mAIContext == null) {
            AILog.e(TAG, "ai context is null when clean existing frame unit");
            return;
        }
        for (FrameUnit frameUnit : this.mFrameUnitList) {
            if (frameUnit != null && frameUnit.isAutoClean()) {
                this.mAIContext.freeFrameUnit(frameUnit);
            }
        }
    }

    public void cleanExistFrameUnit() {
        if (this.mAIContext == null) {
            AILog.e(TAG, "ai context is null when clean existing frame unit");
            return;
        }
        Iterator<FrameUnit> it = this.mFrameUnitList.iterator();
        while (it.hasNext()) {
            this.mAIContext.freeFrameUnit(it.next());
        }
        this.mFrameUnitList.clear();
    }

    public List<FrameUnit> findFragmentChildList(FrameUnit frameUnit) {
        if (frameUnit == null) {
            AILog.d(TAG, "find fragment parent unit failed. unit is null.");
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (FrameUnit frameUnit2 : this.mFrameUnitList) {
            if (frameUnit2.isFragment() && frameUnit2.getUUID() != null && frameUnit2.getUUID().equals(frameUnit.getUUID())) {
                arrayList.add(frameUnit2);
            }
        }
        return arrayList;
    }

    public FrameUnit findFragmentParent(FrameUnit frameUnit) {
        if (frameUnit == null) {
            AILog.d(TAG, "find fragment parent unit failed. unit is null.");
            return null;
        }
        for (FrameUnit frameUnit2 : this.mFrameUnitList) {
            if (frameUnit2.isFragmentParent() && frameUnit2.getUUID() != null && frameUnit2.getUUID().equals(frameUnit.getUUID())) {
                return frameUnit2;
            }
        }
        return null;
    }

    public FrameUnit findFrameUnitByTag(String str) {
        for (FrameUnit frameUnit : this.mFrameUnitList) {
            if (Objects.equals(frameUnit.getTag(), str)) {
                return frameUnit;
            }
        }
        return null;
    }

    public AIContext getAIContext() {
        return this.mAIContext;
    }

    public int getFrameListSize() {
        return this.mFrameUnitList.size();
    }

    public FrameUnit getFrameUnit(int i10) {
        if (this.mFrameUnitList.size() <= i10) {
            return null;
        }
        return this.mFrameUnitList.get(i10);
    }

    public void removeFrameUnit(String str) {
        if (str == null) {
            return;
        }
        FrameUnit frameUnit = null;
        for (FrameUnit frameUnit2 : this.mFrameUnitList) {
            if (str.equals(frameUnit2.getTag())) {
                frameUnit = frameUnit2;
            }
        }
        if (frameUnit != null) {
            AIContext aIContext = this.mAIContext;
            if (aIContext != null) {
                aIContext.freeFrameUnit(frameUnit);
            }
            this.mFrameUnitList.remove(frameUnit);
        }
    }
}
