package kotlinx.serialization.internal;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;
import kotlinx.serialization.descriptors.SerialDescriptor;
import w8.p;

/* JADX INFO: loaded from: classes2.dex */
@CoreFriendModuleApi
public final class ElementMarker {
    private static final Companion Companion = new Companion(null);
    private static final long[] EMPTY_HIGH_MARKS = new long[0];
    private final SerialDescriptor descriptor;
    private final long[] highMarksArray;
    private long lowerMarks;
    private final p readIfAbsent;

    private static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public ElementMarker(SerialDescriptor descriptor, p readIfAbsent) {
        r.e(descriptor, "descriptor");
        r.e(readIfAbsent, "readIfAbsent");
        this.descriptor = descriptor;
        this.readIfAbsent = readIfAbsent;
        int elementsCount = descriptor.getElementsCount();
        if (elementsCount <= 64) {
            this.lowerMarks = elementsCount != 64 ? (-1) << elementsCount : 0L;
            this.highMarksArray = EMPTY_HIGH_MARKS;
        } else {
            this.lowerMarks = 0L;
            this.highMarksArray = prepareHighMarksArray(elementsCount);
        }
    }

    private final void markHigh(int i10) {
        int i11 = (i10 >>> 6) - 1;
        long[] jArr = this.highMarksArray;
        jArr[i11] = jArr[i11] | (1 << (i10 & 63));
    }

    private final int nextUnmarkedHighIndex() {
        int length = this.highMarksArray.length;
        int i10 = 0;
        while (i10 < length) {
            int i11 = i10 + 1;
            int i12 = i11 * 64;
            long j10 = this.highMarksArray[i10];
            while (j10 != -1) {
                int iNumberOfTrailingZeros = Long.numberOfTrailingZeros(~j10);
                j10 |= 1 << iNumberOfTrailingZeros;
                int i13 = iNumberOfTrailingZeros + i12;
                if (((Boolean) this.readIfAbsent.invoke(this.descriptor, Integer.valueOf(i13))).booleanValue()) {
                    this.highMarksArray[i10] = j10;
                    return i13;
                }
            }
            this.highMarksArray[i10] = j10;
            i10 = i11;
        }
        return -1;
    }

    private final long[] prepareHighMarksArray(int i10) {
        long[] jArr = new long[(i10 - 1) >>> 6];
        if ((i10 & 63) != 0) {
            jArr[kotlin.collections.i.F(jArr)] = (-1) << i10;
        }
        return jArr;
    }

    public final void mark(int i10) {
        if (i10 < 64) {
            this.lowerMarks |= 1 << i10;
        } else {
            markHigh(i10);
        }
    }

    public final int nextUnmarkedIndex() {
        int iNumberOfTrailingZeros;
        int elementsCount = this.descriptor.getElementsCount();
        do {
            long j10 = this.lowerMarks;
            if (j10 == -1) {
                if (elementsCount > 64) {
                    return nextUnmarkedHighIndex();
                }
                return -1;
            }
            iNumberOfTrailingZeros = Long.numberOfTrailingZeros(~j10);
            this.lowerMarks |= 1 << iNumberOfTrailingZeros;
        } while (!((Boolean) this.readIfAbsent.invoke(this.descriptor, Integer.valueOf(iNumberOfTrailingZeros))).booleanValue());
        return iNumberOfTrailingZeros;
    }
}
