package com.oplus.aiunit.download.core;

import android.annotation.SuppressLint;
import android.app.Application;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import com.oplus.aiunit.core.data.ServiceType;
import com.oplus.aiunit.core.protocol.AIProtocol;
import com.oplus.aiunit.core.utils.AILog;
import com.oplus.aiunit.core.utils.ApiVersionUtils;
import com.oplus.aiunit.download.api.DownloadRequest;
import com.oplus.aiunit.download.core.AIDownloadImpl;
import com.oplus.aiunit.download.utls.DownloadConstantsKt;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.locks.ReadWriteLock;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import kotlin.collections.o;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;
import n8.h0;
import n8.j;
import n8.k;
import n8.r;
import n8.s;

/* JADX INFO: loaded from: classes2.dex */
public final class AIDownloadImpl {
    private static final String ACTION_DOWNLOAD = "com.oplus.aiunit.BIND_DOWNLOAD_SERVICE";
    private static final int CONNECTED = 1;
    private static final int CONNECTING = 2;
    public static final Companion Companion = new Companion(null);
    private static final long DELAY_HANDLE_CONNECT_TIMEOUT = 4000;
    private static final long DELAY_HANDLE_DESTROY = 500;
    private static final int DISCONNECT = 0;
    private static final String DISPATCH_THREAD_NAME = "AI_Download_Client";
    private static final int MSG_CONNECT_TIMEOUT = 100;
    private static final int MSG_DESTROY = 101;
    private static final String SERVICE_NAME_DOWNLOAD = "com.oplus.aiunit.download.service.AIUnitDownloadService";
    private static final String TAG = "AIDownloadImpl";
    private Bundle headers;
    private Context mContext;
    private Messenger remoteMessenger;
    private final ConcurrentHashMap<String, CopyOnWriteArrayList<DownloadRequest>> requestMap = new ConcurrentHashMap<>();
    private final ConcurrentHashMap<String, CopyOnWriteArrayList<ListenerInfo>> requestListenerMap = new ConcurrentHashMap<>();
    private final j looper$delegate = k.b(AIDownloadImpl$looper$2.INSTANCE);
    private final Handler workerHandler = new Handler(getLooper(), new Handler.Callback() { // from class: com.oplus.aiunit.download.core.a
        @Override // android.os.Handler.Callback
        public final boolean handleMessage(Message message) {
            return AIDownloadImpl.workerHandler$lambda$0(this.f10879a, message);
        }
    });
    private final j clientHandler$delegate = k.b(new AIDownloadImpl$clientHandler$2(this));
    private final j clientMessenger$delegate = k.b(new AIDownloadImpl$clientMessenger$2(this));
    private final DownloadConnection connection = new DownloadConnection();
    private final ReadWriteLock lock = new ReentrantReadWriteLock();

    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public final class DownloadConnection implements ServiceConnection, IBinder.DeathRecipient {
        private volatile int connectState;
        private volatile IBinder mService;

        public DownloadConnection() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void onServiceConnected$lambda$1(IBinder iBinder, AIDownloadImpl this$0, DownloadConnection this$1) {
            h0 h0Var;
            r.e(this$0, "this$0");
            r.e(this$1, "this$1");
            AILog.i(AIDownloadImpl.TAG, "onServiceConnected " + iBinder);
            if (iBinder == null) {
                AILog.i(AIDownloadImpl.TAG, "onServiceConnected service = null");
                this$0.callAllFail(118);
                this$0.destroy();
                return;
            }
            this$0.workerHandler.removeMessages(100);
            this$0.lock.writeLock().lock();
            try {
                this$1.mService = iBinder;
                try {
                    r.a aVar = n8.r.Companion;
                    IBinder iBinder2 = this$1.mService;
                    if (iBinder2 != null) {
                        iBinder2.linkToDeath(this$1, 0);
                        h0Var = h0.INSTANCE;
                    } else {
                        h0Var = null;
                    }
                    n8.r.m59constructorimpl(h0Var);
                } catch (Throwable th) {
                    r.a aVar2 = n8.r.Companion;
                    n8.r.m59constructorimpl(s.a(th));
                }
                this$0.remoteMessenger = new Messenger(iBinder);
                this$1.connectState = 1;
                this$0.lock.writeLock().unlock();
                this$0.executeAll();
            } catch (Throwable th2) {
                this$0.lock.writeLock().unlock();
                throw th2;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void onServiceDisconnected$lambda$5(AIDownloadImpl this$0, DownloadConnection this$1) {
            Object objM59constructorimpl;
            h0 h0Var;
            kotlin.jvm.internal.r.e(this$0, "this$0");
            kotlin.jvm.internal.r.e(this$1, "this$1");
            AILog.e(AIDownloadImpl.TAG, "onServiceDisconnected");
            this$0.lock.writeLock().lock();
            try {
                try {
                    r.a aVar = n8.r.Companion;
                    IBinder iBinder = this$1.mService;
                    n8.r.m59constructorimpl(iBinder != null ? Boolean.valueOf(iBinder.unlinkToDeath(this$1, 0)) : null);
                } finally {
                    r.a aVar2 = n8.r.Companion;
                    n8.r.m59constructorimpl(s.a(th));
                }
                if (this$1.mService != null) {
                    try {
                        Context context = this$0.mContext;
                        if (context != null) {
                            context.unbindService(this$0.connection);
                            h0Var = h0.INSTANCE;
                        } else {
                            h0Var = null;
                        }
                        objM59constructorimpl = n8.r.m59constructorimpl(h0Var);
                    } catch (Throwable th) {
                    }
                    n8.r.m58boximpl(objM59constructorimpl);
                }
                this$1.mService = null;
                this$0.remoteMessenger = null;
                this$1.connectState = 0;
                this$0.lock.writeLock().unlock();
                this$0.callAllFail(ErrorCode.CODE_SERVICE_DIED);
            } catch (Throwable th2) {
                this$0.lock.writeLock().unlock();
            }
        }

        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            AILog.i(AIDownloadImpl.TAG, "binderDied");
            AIDownloadImpl.this.lock.writeLock().lock();
            try {
                try {
                    r.a aVar = n8.r.Companion;
                    IBinder iBinder = this.mService;
                    n8.r.m59constructorimpl(iBinder != null ? Boolean.valueOf(iBinder.unlinkToDeath(this, 0)) : null);
                } finally {
                }
                this.mService = null;
                AIDownloadImpl.this.remoteMessenger = null;
                this.connectState = 0;
                AIDownloadImpl.this.lock.writeLock().unlock();
                AIDownloadImpl.this.callAllFail(ErrorCode.CODE_SERVICE_DIED);
            } catch (Throwable th) {
                AIDownloadImpl.this.lock.writeLock().unlock();
            }
        }

        public final void destroy() {
            AILog.i(AIDownloadImpl.TAG, "destroy");
            if (isConnected()) {
                AIDownloadImpl.this.lock.writeLock().lock();
                try {
                    try {
                        r.a aVar = n8.r.Companion;
                        IBinder iBinder = this.mService;
                        n8.r.m59constructorimpl(iBinder != null ? Boolean.valueOf(iBinder.unlinkToDeath(this, 0)) : null);
                    } finally {
                    }
                    this.mService = null;
                    AIDownloadImpl.this.remoteMessenger = null;
                    this.connectState = 0;
                    AIDownloadImpl.this.lock.writeLock().unlock();
                    AIDownloadImpl.this.callAllFail(ErrorCode.CODE_SERVICE_DIED);
                } catch (Throwable th) {
                    AIDownloadImpl.this.lock.writeLock().unlock();
                }
            }
        }

        public final boolean isBinderAlive() {
            AIDownloadImpl.this.lock.readLock().lock();
            try {
                IBinder iBinder = this.mService;
                return iBinder != null ? iBinder.isBinderAlive() : false;
            } finally {
                AIDownloadImpl.this.lock.readLock().unlock();
            }
        }

        public final boolean isConnected() {
            AIDownloadImpl.this.lock.readLock().lock();
            try {
                return this.connectState == 1;
            } finally {
                AIDownloadImpl.this.lock.readLock().unlock();
            }
        }

        public final boolean isConnecting() {
            AIDownloadImpl.this.lock.readLock().lock();
            try {
                return this.connectState == 2;
            } finally {
                AIDownloadImpl.this.lock.readLock().unlock();
            }
        }

        public final boolean isDisconnect() {
            AIDownloadImpl.this.lock.readLock().lock();
            try {
                return this.connectState == 0;
            } finally {
                AIDownloadImpl.this.lock.readLock().unlock();
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, final IBinder iBinder) {
            Handler handler = AIDownloadImpl.this.workerHandler;
            final AIDownloadImpl aIDownloadImpl = AIDownloadImpl.this;
            handler.post(new Runnable() { // from class: com.oplus.aiunit.download.core.c
                @Override // java.lang.Runnable
                public final void run() {
                    AIDownloadImpl.DownloadConnection.onServiceConnected$lambda$1(iBinder, aIDownloadImpl, this);
                }
            });
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            Handler handler = AIDownloadImpl.this.workerHandler;
            final AIDownloadImpl aIDownloadImpl = AIDownloadImpl.this;
            handler.post(new Runnable() { // from class: com.oplus.aiunit.download.core.b
                @Override // java.lang.Runnable
                public final void run() {
                    AIDownloadImpl.DownloadConnection.onServiceDisconnected$lambda$5(aIDownloadImpl, this);
                }
            });
        }

        public final void setState(int i10) {
            AIDownloadImpl.this.lock.writeLock().lock();
            try {
                this.connectState = i10;
            } finally {
                AIDownloadImpl.this.lock.writeLock().unlock();
            }
        }
    }

    private final void addRequest(DownloadRequest downloadRequest) {
        downloadRequest.getOrBuildRequestId$aiunit_sdk_download_release();
        CopyOnWriteArrayList<DownloadRequest> copyOnWriteArrayList = this.requestMap.get(downloadRequest.getName());
        if (copyOnWriteArrayList == null) {
            CopyOnWriteArrayList<DownloadRequest> copyOnWriteArrayList2 = new CopyOnWriteArrayList<>();
            ConcurrentHashMap<String, CopyOnWriteArrayList<DownloadRequest>> concurrentHashMap = this.requestMap;
            String name = downloadRequest.getName();
            copyOnWriteArrayList2.add(downloadRequest);
            concurrentHashMap.put(name, copyOnWriteArrayList2);
        } else if (!copyOnWriteArrayList.contains(downloadRequest)) {
            copyOnWriteArrayList.add(downloadRequest);
        }
        DownloadListener downloadListener = downloadRequest.getDownloadListener();
        if (downloadListener != null) {
            addRequestListener(downloadRequest.getName(), downloadListener, downloadRequest.getCommand());
        }
    }

    private final void addRequestListener(String str, DownloadListener downloadListener, Command command) {
        Object next;
        CopyOnWriteArrayList<ListenerInfo> copyOnWriteArrayList = this.requestListenerMap.get(str);
        if (copyOnWriteArrayList == null) {
            CopyOnWriteArrayList<ListenerInfo> copyOnWriteArrayList2 = new CopyOnWriteArrayList<>();
            ConcurrentHashMap<String, CopyOnWriteArrayList<ListenerInfo>> concurrentHashMap = this.requestListenerMap;
            copyOnWriteArrayList2.add(new ListenerInfo(str, command, downloadListener));
            concurrentHashMap.put(str, copyOnWriteArrayList2);
            return;
        }
        Iterator<T> it = copyOnWriteArrayList.iterator();
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            } else {
                next = it.next();
                if (kotlin.jvm.internal.r.a(((ListenerInfo) next).getListener(), downloadListener)) {
                    break;
                }
            }
        }
        if (next == null) {
            copyOnWriteArrayList.add(new ListenerInfo(str, command, downloadListener));
        }
    }

    @SuppressLint({"InlinedApi,NewApi"})
    private final void bindRemoteService(Context context, ServiceType serviceType, String str) {
        AILog.i(TAG, "bindRemoteService");
        this.connection.setState(2);
        Intent intent = new Intent(ACTION_DOWNLOAD);
        intent.setComponent(new ComponentName(serviceType.getPkgName(), SERVICE_NAME_DOWNLOAD));
        intent.setType(context.getPackageName());
        if (ApiVersionUtils.isQ()) {
            intent.setIdentifier(str);
        }
        intent.putExtras(AIProtocol.getExtras(context));
        context.bindService(intent, this.connection, 513);
        this.workerHandler.removeMessages(100);
        this.workerHandler.sendEmptyMessageDelayed(100, DELAY_HANDLE_CONNECT_TIMEOUT);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void callAllFail(int i10) {
        Iterator<Map.Entry<String, CopyOnWriteArrayList<DownloadRequest>>> it = this.requestMap.entrySet().iterator();
        while (it.hasNext()) {
            callFail(it.next().getKey(), i10, false);
        }
        this.requestMap.clear();
    }

    private final void callCancel(String str) {
        DownloadListener listener;
        CopyOnWriteArrayList<DownloadRequest> copyOnWriteArrayList = this.requestMap.get(str);
        if (copyOnWriteArrayList != null) {
            Iterator<T> it = copyOnWriteArrayList.iterator();
            while (it.hasNext()) {
                ((DownloadRequest) it.next()).setState(8);
            }
        }
        CopyOnWriteArrayList<ListenerInfo> copyOnWriteArrayList2 = this.requestListenerMap.get(str);
        if (copyOnWriteArrayList2 != null) {
            for (ListenerInfo listenerInfo : copyOnWriteArrayList2) {
                if (listenerInfo != null && (listener = listenerInfo.getListener()) != null) {
                    listener.onCancel();
                }
            }
        }
        this.requestMap.remove(str);
        this.requestListenerMap.remove(str);
        destroyWhenCompleteIfNeed();
    }

    private final void callFail(String str, int i10, boolean z10) {
        DownloadRequest downloadRequest;
        DownloadListener listener;
        CopyOnWriteArrayList<DownloadRequest> copyOnWriteArrayList = this.requestMap.get(str);
        if (copyOnWriteArrayList != null) {
            Iterator<T> it = copyOnWriteArrayList.iterator();
            while (it.hasNext()) {
                ((DownloadRequest) it.next()).setState(7);
            }
        }
        CopyOnWriteArrayList<ListenerInfo> copyOnWriteArrayList2 = this.requestListenerMap.get(str);
        if (copyOnWriteArrayList2 != null) {
            for (ListenerInfo listenerInfo : copyOnWriteArrayList2) {
                if (listenerInfo != null && (listener = listenerInfo.getListener()) != null) {
                    listener.onFail(i10);
                }
            }
        }
        CopyOnWriteArrayList<DownloadRequest> copyOnWriteArrayList3 = this.requestMap.get(str);
        if (copyOnWriteArrayList3 != null && (downloadRequest = (DownloadRequest) o.S(copyOnWriteArrayList3)) != null && downloadRequest.getSilence() && z10) {
            this.requestMap.remove(str);
            this.requestListenerMap.remove(str);
        }
        destroyWhenCompleteIfNeed();
    }

    private final void callQueryInfo(String str, DownloadInfo downloadInfo) {
        DownloadListener listener;
        CopyOnWriteArrayList<ListenerInfo> copyOnWriteArrayList = this.requestListenerMap.get(str);
        if (copyOnWriteArrayList != null) {
            for (ListenerInfo listenerInfo : copyOnWriteArrayList) {
                if (listenerInfo != null && (listener = listenerInfo.getListener()) != null) {
                    listener.onQuery(downloadInfo);
                }
            }
        }
        CopyOnWriteArrayList<ListenerInfo> copyOnWriteArrayList2 = this.requestListenerMap.get(str);
        if (copyOnWriteArrayList2 != null && !copyOnWriteArrayList2.isEmpty()) {
            o.A(copyOnWriteArrayList2, AIDownloadImpl$callQueryInfo$2$1.INSTANCE);
        }
        CopyOnWriteArrayList<DownloadRequest> copyOnWriteArrayList3 = this.requestMap.get(str);
        if (copyOnWriteArrayList3 == null || copyOnWriteArrayList3.isEmpty()) {
            return;
        }
        o.A(copyOnWriteArrayList3, AIDownloadImpl$callQueryInfo$3$1.INSTANCE);
    }

    private final void callSuccess(String str, long j10, long j11, boolean z10) {
        DownloadListener listener;
        CopyOnWriteArrayList<DownloadRequest> copyOnWriteArrayList = this.requestMap.get(str);
        if (copyOnWriteArrayList != null) {
            Iterator<T> it = copyOnWriteArrayList.iterator();
            while (it.hasNext()) {
                ((DownloadRequest) it.next()).setState(6);
            }
        }
        CopyOnWriteArrayList<ListenerInfo> copyOnWriteArrayList2 = this.requestListenerMap.get(str);
        if (copyOnWriteArrayList2 != null) {
            for (ListenerInfo listenerInfo : copyOnWriteArrayList2) {
                if (listenerInfo != null && (listener = listenerInfo.getListener()) != null) {
                    listener.onSuccess(j10, j11, z10);
                }
            }
        }
        this.requestMap.remove(str);
        this.requestListenerMap.remove(str);
        destroyWhenCompleteIfNeed();
    }

    private final void destroyWhenCompleteIfNeed() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void executeAll() {
        Iterator<Map.Entry<String, CopyOnWriteArrayList<DownloadRequest>>> it = this.requestMap.entrySet().iterator();
        while (it.hasNext()) {
            DownloadRequest downloadRequest = (DownloadRequest) o.S(it.next().getValue());
            if (downloadRequest != null) {
                requestSingle(downloadRequest);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Handler getClientHandler() {
        return (Handler) this.clientHandler$delegate.getValue();
    }

    private final Messenger getClientMessenger() {
        return (Messenger) this.clientMessenger$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Looper getLooper() {
        Object value = this.looper$delegate.getValue();
        kotlin.jvm.internal.r.d(value, "getValue(...)");
        return (Looper) value;
    }

    private final Messenger getRemoteMessengerSafely(DownloadRequest downloadRequest) {
        if (this.remoteMessenger != null && this.connection.isBinderAlive()) {
            return this.remoteMessenger;
        }
        Context context = this.mContext;
        if (context == null) {
            return null;
        }
        bindRemoteService(context, ServiceType.AIUNIT, downloadRequest.getOrBuildRequestId$aiunit_sdk_download_release());
        return null;
    }

    private final void handleConnectTimeout() {
        if (this.connection.isConnecting()) {
            AILog.e(TAG, "handleConnectTimeout");
            this.connection.setState(0);
            callAllFail(ErrorCode.CODE_SERVICE_TIMEOUT);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void handleData(Bundle bundle) {
        DownloadListener listener;
        DownloadListener listener2;
        DownloadListener listener3;
        DownloadListener listener4;
        String string = bundle.getString(DownloadConstantsKt.PARAM_KEY_DOWNLOAD_GROUP_NAME, "");
        kotlin.jvm.internal.r.b(string);
        if (string.length() == 0) {
            AILog.e(TAG, "sceneName isEmpty");
        }
        int i10 = bundle.getInt(DownloadConstantsKt.PARAM_KEY_DOWNLOAD_RESPONSE_COMMAND, -1);
        if (i10 != 4) {
            AILog.i(TAG, "receive command " + i10);
        }
        switch (i10) {
            case 2:
                long j10 = bundle.getLong(DownloadConstantsKt.PARAM_KEY_DOWNLOAD_FULL_SIZE, -1L);
                long j11 = bundle.getLong(DownloadConstantsKt.PARAM_KEY_DOWNLOAD_OFFSET_SIZE, -1L);
                CopyOnWriteArrayList<DownloadRequest> copyOnWriteArrayList = this.requestMap.get(string);
                if (copyOnWriteArrayList != null) {
                    Iterator<T> it = copyOnWriteArrayList.iterator();
                    while (it.hasNext()) {
                        ((DownloadRequest) it.next()).setState(2);
                    }
                }
                CopyOnWriteArrayList<ListenerInfo> copyOnWriteArrayList2 = this.requestListenerMap.get(string);
                if (copyOnWriteArrayList2 != null) {
                    for (ListenerInfo listenerInfo : copyOnWriteArrayList2) {
                        if (listenerInfo != null && (listener = listenerInfo.getListener()) != null) {
                            listener.onPrepare(j10, j11);
                        }
                    }
                }
                break;
            case 3:
                long j12 = bundle.getLong(DownloadConstantsKt.PARAM_KEY_DOWNLOAD_FULL_SIZE, -1L);
                long j13 = bundle.getLong(DownloadConstantsKt.PARAM_KEY_DOWNLOAD_OFFSET_SIZE, -1L);
                CopyOnWriteArrayList<DownloadRequest> copyOnWriteArrayList3 = this.requestMap.get(string);
                if (copyOnWriteArrayList3 != null) {
                    Iterator<T> it2 = copyOnWriteArrayList3.iterator();
                    while (it2.hasNext()) {
                        ((DownloadRequest) it2.next()).setState(3);
                    }
                }
                CopyOnWriteArrayList<ListenerInfo> copyOnWriteArrayList4 = this.requestListenerMap.get(string);
                if (copyOnWriteArrayList4 != null) {
                    for (ListenerInfo listenerInfo2 : copyOnWriteArrayList4) {
                        if (listenerInfo2 != null && (listener2 = listenerInfo2.getListener()) != null) {
                            listener2.onStart(j12, j13);
                        }
                    }
                }
                break;
            case 4:
                long j14 = bundle.getLong(DownloadConstantsKt.PARAM_KEY_DOWNLOAD_FULL_SIZE, -1L);
                long j15 = bundle.getLong(DownloadConstantsKt.PARAM_KEY_DOWNLOAD_OFFSET_SIZE, -1L);
                long j16 = bundle.getLong(DownloadConstantsKt.PARAM_KEY_DOWNLOAD_SPEED);
                CopyOnWriteArrayList<DownloadRequest> copyOnWriteArrayList5 = this.requestMap.get(string);
                if (copyOnWriteArrayList5 != null) {
                    Iterator<T> it3 = copyOnWriteArrayList5.iterator();
                    while (it3.hasNext()) {
                        ((DownloadRequest) it3.next()).setState(4);
                    }
                }
                CopyOnWriteArrayList<ListenerInfo> copyOnWriteArrayList6 = this.requestListenerMap.get(string);
                if (copyOnWriteArrayList6 != null) {
                    for (ListenerInfo listenerInfo3 : copyOnWriteArrayList6) {
                        if (listenerInfo3 != null && (listener3 = listenerInfo3.getListener()) != null) {
                            listener3.onProgress(j14, j15, j16);
                        }
                    }
                }
                break;
            case 5:
                CopyOnWriteArrayList<DownloadRequest> copyOnWriteArrayList7 = this.requestMap.get(string);
                if (copyOnWriteArrayList7 != null) {
                    Iterator<T> it4 = copyOnWriteArrayList7.iterator();
                    while (it4.hasNext()) {
                        ((DownloadRequest) it4.next()).setState(5);
                    }
                }
                CopyOnWriteArrayList<ListenerInfo> copyOnWriteArrayList8 = this.requestListenerMap.get(string);
                if (copyOnWriteArrayList8 != null) {
                    for (ListenerInfo listenerInfo4 : copyOnWriteArrayList8) {
                        if (listenerInfo4 != null && (listener4 = listenerInfo4.getListener()) != null) {
                            listener4.onInstall();
                        }
                    }
                }
                break;
            case 6:
                callSuccess(string, bundle.getLong(DownloadConstantsKt.PARAM_KEY_DOWNLOAD_FULL_SIZE, -1L), bundle.getLong(DownloadConstantsKt.PARAM_KEY_DOWNLOAD_ACTUAL_SIZE, -1L), bundle.getBoolean(DownloadConstantsKt.PARAM_KEY_DOWNLOAD_FROM_BREAKPOINT, false));
                break;
            case 7:
                callFail(string, bundle.getInt(DownloadConstantsKt.PARAM_KEY_DOWNLOAD_ERROR_CODE, -1), true);
                break;
            case 8:
                callCancel(string);
                break;
            case 9:
                long j17 = bundle.getLong(DownloadConstantsKt.PARAM_KEY_DOWNLOAD_FULL_SIZE, -1L);
                long j18 = bundle.getLong(DownloadConstantsKt.PARAM_KEY_DOWNLOAD_OFFSET_SIZE, -1L);
                int i11 = bundle.getInt(DownloadConstantsKt.PARAM_KEY_DOWNLOAD_STATE, 0);
                DownloadInfo downloadInfo = new DownloadInfo();
                downloadInfo.setGroupName(string);
                downloadInfo.setFullSize(j17);
                downloadInfo.setOffsetSize(j18);
                downloadInfo.setState(i11);
                h0 h0Var = h0.INSTANCE;
                callQueryInfo(string, downloadInfo);
                break;
        }
    }

    private final boolean hasTaskDownloading(String str) {
        CopyOnWriteArrayList<DownloadRequest> copyOnWriteArrayList = this.requestMap.get(str);
        if (copyOnWriteArrayList == null) {
            return false;
        }
        for (DownloadRequest downloadRequest : copyOnWriteArrayList) {
            if (downloadRequest.getCommand() == Command.DOWNLOAD && !downloadRequest.isComplete()) {
                return true;
            }
        }
        return false;
    }

    private final void requestSingle(DownloadRequest downloadRequest) {
        CopyOnWriteArrayList<DownloadRequest> copyOnWriteArrayList;
        Bundle bundle = new Bundle();
        bundle.putAll(downloadRequest.buildBody());
        Bundle bundle2 = this.headers;
        if (bundle2 != null) {
            bundle.putAll(bundle2);
        }
        try {
            Messenger remoteMessengerSafely = getRemoteMessengerSafely(downloadRequest);
            if (remoteMessengerSafely != null) {
                Message message = new Message();
                message.replyTo = getClientMessenger();
                message.setData(bundle);
                remoteMessengerSafely.send(message);
            }
        } catch (RemoteException e10) {
            AILog.e(TAG, "requestSingle exception: " + e10);
        }
        if (downloadRequest.getCommand() != Command.QUERY || (copyOnWriteArrayList = this.requestMap.get(downloadRequest.getName())) == null) {
            return;
        }
        copyOnWriteArrayList.remove(downloadRequest);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean workerHandler$lambda$0(AIDownloadImpl this$0, Message msg) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(msg, "msg");
        int i10 = msg.what;
        if (i10 == 100) {
            this$0.handleConnectTimeout();
            return true;
        }
        if (i10 == 101) {
            this$0.destroy();
            return true;
        }
        AILog.w(TAG, "handleMessage no usable msg for " + msg.what);
        return true;
    }

    public final void cancel(String name) {
        DownloadListener listener;
        kotlin.jvm.internal.r.e(name, "name");
        Bundle bundle = new Bundle();
        Bundle bundle2 = this.headers;
        if (bundle2 != null) {
            bundle.putAll(bundle2);
        }
        bundle.putString(DownloadConstantsKt.PARAM_KEY_DOWNLOAD_REQUEST_COMMAND, "CANCEL");
        bundle.putString(DownloadConstantsKt.PARAM_KEY_DOWNLOAD_GROUP_NAME, name);
        try {
            Messenger messenger = this.remoteMessenger;
            if (messenger != null) {
                Message message = new Message();
                message.replyTo = getClientMessenger();
                message.setData(bundle);
                messenger.send(message);
            }
        } catch (RemoteException e10) {
            AILog.i(TAG, "cancel exception: " + e10);
        }
        CopyOnWriteArrayList<DownloadRequest> copyOnWriteArrayList = this.requestMap.get(name);
        if (copyOnWriteArrayList != null) {
            Iterator<T> it = copyOnWriteArrayList.iterator();
            while (it.hasNext()) {
                ((DownloadRequest) it.next()).setState(8);
            }
        }
        CopyOnWriteArrayList<ListenerInfo> copyOnWriteArrayList2 = this.requestListenerMap.get(name);
        if (copyOnWriteArrayList2 != null) {
            for (ListenerInfo listenerInfo : copyOnWriteArrayList2) {
                if (listenerInfo != null && (listener = listenerInfo.getListener()) != null) {
                    listener.onCancel();
                }
            }
        }
        this.requestMap.remove(name);
        this.requestListenerMap.remove(name);
    }

    public final void cancelAll() {
        Iterator<Map.Entry<String, CopyOnWriteArrayList<DownloadRequest>>> it = this.requestMap.entrySet().iterator();
        while (it.hasNext()) {
            cancel(it.next().getKey());
        }
        this.requestMap.clear();
    }

    public final synchronized void destroy() {
        h0 h0Var;
        if (this.connection.isConnected()) {
            this.connection.destroy();
            try {
                r.a aVar = n8.r.Companion;
                Context context = this.mContext;
                if (context != null) {
                    context.unbindService(this.connection);
                    h0Var = h0.INSTANCE;
                } else {
                    h0Var = null;
                }
                n8.r.m59constructorimpl(h0Var);
            } catch (Throwable th) {
                r.a aVar2 = n8.r.Companion;
                n8.r.m59constructorimpl(s.a(th));
            }
            this.mContext = null;
            this.requestMap.clear();
            this.requestListenerMap.clear();
        }
    }

    public final boolean isDownloading(String name) {
        kotlin.jvm.internal.r.e(name, "name");
        return hasTaskDownloading(name);
    }

    public final void query(Context context, String name, DownloadListener downloadListener, int i10, ServiceType serviceType, boolean z10) {
        kotlin.jvm.internal.r.e(context, "context");
        kotlin.jvm.internal.r.e(name, "name");
        kotlin.jvm.internal.r.e(serviceType, "serviceType");
        if (this.remoteMessenger == null && !z10) {
            if (downloadListener != null) {
                downloadListener.onQuery(null);
                return;
            }
            return;
        }
        DownloadRequest downloadRequest = new DownloadRequest();
        if (i10 == 0) {
            downloadRequest.setSceneName(name);
        } else {
            downloadRequest.setDetectName(name);
        }
        downloadRequest.setDownloadListener(downloadListener);
        downloadRequest.setCommand(Command.QUERY);
        start(context, downloadRequest, serviceType);
    }

    public final void register(String groupName, DownloadListener listener) {
        kotlin.jvm.internal.r.e(groupName, "groupName");
        kotlin.jvm.internal.r.e(listener, "listener");
        addRequestListener(groupName, listener, Command.DOWNLOAD);
    }

    public final void removeRequest(String name) {
        kotlin.jvm.internal.r.e(name, "name");
        this.requestMap.remove(name);
        this.requestListenerMap.remove(name);
    }

    public final synchronized void start(Context context, DownloadRequest request, ServiceType serviceType) {
        try {
            kotlin.jvm.internal.r.e(context, "context");
            kotlin.jvm.internal.r.e(request, "request");
            kotlin.jvm.internal.r.e(serviceType, "serviceType");
            if (!(context instanceof Application)) {
                context = context.getApplicationContext();
            }
            if (this.mContext == null) {
                this.mContext = context;
            }
            if (this.headers == null) {
                kotlin.jvm.internal.r.b(context);
                this.headers = AIProtocol.getExtras(context);
            }
            this.workerHandler.removeMessages(101);
            if (this.connection.isDisconnect()) {
                addRequest(request);
                kotlin.jvm.internal.r.b(context);
                bindRemoteService(context, serviceType, request.getOrBuildRequestId$aiunit_sdk_download_release());
            } else if (this.connection.isConnecting()) {
                addRequest(request);
                AILog.i(TAG, "start service is connecting or connected");
            } else if (!hasTaskDownloading(request.getName()) || request.getCommand() == Command.QUERY) {
                AILog.i(TAG, "start connected requestSingle " + request);
                addRequest(request);
                requestSingle(request);
            } else if (hasTaskDownloading(request.getName())) {
                AILog.i(TAG, "start connected request exist " + request);
                addRequest(request);
            } else {
                AILog.w(TAG, "start service other.");
            }
        } catch (Throwable th) {
            throw th;
        }
    }
}
