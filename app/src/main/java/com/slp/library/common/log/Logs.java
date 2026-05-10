package com.slp.library.common.log;

import com.slp.library.common.log.SlpLogs;

/* JADX INFO: loaded from: classes2.dex */
public final class Logs {
    public static final SlpLogs.Configtor CONFIGTOR;
    public static final SlpLogs.LogImpl DEBUG;
    public static final SlpLogs.LogImpl ERROR;
    public static final SlpLogs.LogImpl INFOS;
    public static final SlpLogs.LogImpl ON;
    public static final SlpLogs.LogImpl WARNS;
    private static final LogsWrap _logs;

    static {
        LogsWrap logsWrap = LogsWrap.DEFAULT;
        _logs = logsWrap;
        CONFIGTOR = logsWrap.CONFIGTOR;
        ON = logsWrap.ON;
        DEBUG = logsWrap.DEBUG;
        INFOS = logsWrap.INFOS;
        WARNS = logsWrap.WARNS;
        ERROR = logsWrap.ERROR;
    }

    private Logs() {
    }
}
