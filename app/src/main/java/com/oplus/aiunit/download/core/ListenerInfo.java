package com.oplus.aiunit.download.core;

import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes2.dex */
public final class ListenerInfo {
    private final Command command;
    private final DownloadListener listener;
    private final String name;

    public ListenerInfo(String name, Command command, DownloadListener listener) {
        r.e(name, "name");
        r.e(command, "command");
        r.e(listener, "listener");
        this.name = name;
        this.command = command;
        this.listener = listener;
    }

    public final Command getCommand() {
        return this.command;
    }

    public final DownloadListener getListener() {
        return this.listener;
    }

    public final String getName() {
        return this.name;
    }
}
