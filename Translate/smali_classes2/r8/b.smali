.class public abstract Lr8/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a([Ljava/lang/Enum;)Lr8/a;
    .locals 1

    const-string v0, "entries"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lr8/c;

    invoke-direct {v0, p0}, Lr8/c;-><init>([Ljava/lang/Enum;)V

    return-object v0
.end method
