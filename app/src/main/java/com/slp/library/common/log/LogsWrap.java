package com.slp.library.common.log;

import com.slp.library.common.log.SlpLogs;

/* JADX INFO: loaded from: classes2.dex */
public class LogsWrap {
    public static final LogsWrap DEFAULT = new LogsWrap();
    public SlpLogs.Configtor CONFIGTOR;
    public SlpLogs.LogImpl DEBUG;
    public SlpLogs.LogImpl ERROR;
    public SlpLogs.LogImpl INFOS;
    public SlpLogs.LogImpl ON;
    public SlpLogs.LogImpl WARNS;
    private final SlpLogs _logs;

    public LogsWrap() {
        SlpLogs slpLogs = new SlpLogs();
        this._logs = slpLogs;
        this.CONFIGTOR = slpLogs.CONFIGTOR;
        this.ON = slpLogs.ON;
        this.DEBUG = slpLogs.DEBUG;
        this.INFOS = slpLogs.INFOS;
        this.WARNS = slpLogs.WARNS;
        this.ERROR = slpLogs.ERROR;
    }

    public boolean attachLogs(LogsWrap logsWrap) {
        if (logsWrap == this) {
            return false;
        }
        this.CONFIGTOR = logsWrap.CONFIGTOR;
        this.ON = logsWrap.ON;
        this.DEBUG = logsWrap.DEBUG;
        this.INFOS = logsWrap.INFOS;
        this.WARNS = logsWrap.WARNS;
        this.ERROR = logsWrap.ERROR;
        return true;
    }

    public LogsWrap(LogsWrap logsWrap) {
        SlpLogs slpLogs = new SlpLogs();
        this._logs = slpLogs;
        this.CONFIGTOR = slpLogs.CONFIGTOR;
        this.ON = slpLogs.ON;
        this.DEBUG = slpLogs.DEBUG;
        this.INFOS = slpLogs.INFOS;
        this.WARNS = slpLogs.WARNS;
        this.ERROR = slpLogs.ERROR;
        attachLogs(logsWrap);
    }
}
