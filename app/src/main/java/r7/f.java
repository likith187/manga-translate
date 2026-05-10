package r7;

import android.os.SystemClock;
import android.util.LruCache;
import java.util.LinkedList;
import java.util.Queue;

/* JADX INFO: loaded from: classes2.dex */
public class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f15459a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final long f15460b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final LruCache f15461c;

    public static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final int f15462a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final long f15463b;

        public b(int i10, long j10) {
            this.f15462a = Math.max(i10, 0);
            this.f15463b = Math.max(j10, 0L);
        }

        public f c() {
            return new f(this);
        }
    }

    private long b(Queue queue, long j10) {
        Long l10 = (Long) queue.peek();
        while (l10 != null && l10.longValue() < j10 - this.f15460b) {
            queue.poll();
            l10 = (Long) queue.peek();
        }
        return queue.size();
    }

    private Queue c(String str) {
        Queue queue = (Queue) this.f15461c.get(str);
        if (queue != null) {
            return queue;
        }
        LinkedList linkedList = new LinkedList();
        this.f15461c.put(str, linkedList);
        return linkedList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ String e(String str, long j10) {
        return "Chatty!!! Allow " + this.f15459a + "/" + this.f15460b + "ms, but " + str + " request " + j10 + " in the recent period.";
    }

    public boolean d(final String str) {
        Queue queueC = c(str);
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        queueC.add(Long.valueOf(jElapsedRealtime));
        final long jB = b(queueC, jElapsedRealtime);
        boolean z10 = jB <= ((long) this.f15459a);
        if (!z10 && jB % ((long) 10) == 1) {
            s7.f.f("FireWall", new s7.g() { // from class: r7.e
                @Override // s7.g
                public final Object get() {
                    return this.f15456a.e(str, jB);
                }
            });
        }
        return z10;
    }

    private f(b bVar) {
        this.f15459a = bVar.f15462a;
        this.f15460b = bVar.f15463b;
        this.f15461c = new LruCache(100);
    }
}
