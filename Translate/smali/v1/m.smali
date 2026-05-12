.class public abstract Lv1/m;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final synthetic a(C)V
    .locals 0

    invoke-static {p0}, Lv1/m;->b(C)V

    return-void
.end method

.method private static final b(C)V
    .locals 3

    new-instance v0, Lu1/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid token \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p0, 0x27

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lu1/a;-><init>(Ljava/lang/String;)V

    throw v0
.end method
