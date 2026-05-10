package com.coloros.translate.engine.tts;

import android.os.RemoteException;
import com.coloros.translate.engine.ITtsListener;
import com.coloros.translate.utils.c0;

/* JADX INFO: loaded from: classes.dex */
public class q extends ITtsListener.Stub {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private ITtsListener f5279a;

    public q(ITtsListener iTtsListener) {
        this.f5279a = iTtsListener;
    }

    @Override // com.coloros.translate.engine.ITtsListener
    public void onStart() {
        ITtsListener iTtsListener = this.f5279a;
        if (iTtsListener != null) {
            try {
                iTtsListener.onStart();
            } catch (RemoteException e10) {
                c0.j("TtsWrapperListener", "onStart error = " + e10.getMessage());
            }
        }
    }

    @Override // com.coloros.translate.engine.ITtsListener
    public void onStatus(int i10, String str) {
        ITtsListener iTtsListener = this.f5279a;
        if (iTtsListener != null) {
            try {
                iTtsListener.onStatus(i10, str);
            } catch (RemoteException e10) {
                c0.j("TtsWrapperListener", "onStatus error = " + e10.getMessage());
            }
        }
    }

    @Override // com.coloros.translate.engine.ITtsListener
    public void onStop() {
        ITtsListener iTtsListener = this.f5279a;
        if (iTtsListener != null) {
            try {
                iTtsListener.onStop();
            } catch (RemoteException e10) {
                c0.j("TtsWrapperListener", "onStop error = " + e10.getMessage());
            }
        }
    }

    @Override // com.coloros.translate.engine.ITtsListener
    public void onTtsEndWord() {
        ITtsListener iTtsListener = this.f5279a;
        if (iTtsListener != null) {
            try {
                iTtsListener.onTtsEndWord();
            } catch (RemoteException e10) {
                c0.j("TtsWrapperListener", "onTtsEndWord error = " + e10.getMessage());
            }
        }
    }

    @Override // com.coloros.translate.engine.ITtsListener
    public void onTtsResult(byte[] bArr) {
        ITtsListener iTtsListener = this.f5279a;
        if (iTtsListener != null) {
            try {
                iTtsListener.onTtsResult(bArr);
            } catch (RemoteException e10) {
                c0.j("TtsWrapperListener", "onTtsResult error = " + e10.getMessage());
            }
        }
    }
}
