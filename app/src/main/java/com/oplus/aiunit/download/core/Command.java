package com.oplus.aiunit.download.core;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes2.dex */
public final class Command {
    private static final /* synthetic */ r8.a $ENTRIES;
    private static final /* synthetic */ Command[] $VALUES;
    public static final Command DOWNLOAD = new Command("DOWNLOAD", 0);
    public static final Command UPDATE = new Command("UPDATE", 1);
    public static final Command QUERY = new Command("QUERY", 2);
    public static final Command CANCEL = new Command("CANCEL", 3);

    private static final /* synthetic */ Command[] $values() {
        return new Command[]{DOWNLOAD, UPDATE, QUERY, CANCEL};
    }

    static {
        Command[] commandArr$values = $values();
        $VALUES = commandArr$values;
        $ENTRIES = r8.b.a(commandArr$values);
    }

    private Command(String str, int i10) {
    }

    public static r8.a getEntries() {
        return $ENTRIES;
    }

    public static Command valueOf(String str) {
        return (Command) Enum.valueOf(Command.class, str);
    }

    public static Command[] values() {
        return (Command[]) $VALUES.clone();
    }
}
