package com.slp.library.track;

/* JADX INFO: loaded from: classes2.dex */
public interface ITrackApi<T> {
    void add(T t10, String str, Object obj);

    void commit(T t10);

    T createTrack(String str);

    void push(T t10);

    void remove(T t10, String str);
}
