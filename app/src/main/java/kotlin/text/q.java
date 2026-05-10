package kotlin.text;

/* JADX INFO: loaded from: classes2.dex */
final class q {
    public static final q INSTANCE = new q();

    /* JADX INFO: renamed from: a */
    public static final n f13164a;

    static {
        String str = "[eE][+-]?(\\p{Digit}+)";
        f13164a = new n("[\\x00-\\x20]*[+-]?(NaN|Infinity|((" + ("((\\p{Digit}+)(\\.)?((\\p{Digit}+)?)(" + str + ")?)|(\\.((\\p{Digit}+))(" + str + ")?)|((" + ("(0[xX](\\p{XDigit}+)(\\.)?)|(0[xX](\\p{XDigit}+)?(\\.)(\\p{XDigit}+))") + ")[pP][+-]?(\\p{Digit}+))") + ")[fFdD]?))[\\x00-\\x20]*");
    }

    private q() {
    }
}
