.class public final synthetic Lc5/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo4/g;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lo4/d;)Ljava/lang/Object;
    .locals 1

    new-instance p0, Ld5/a;

    const-class v0, Lf5/g;

    invoke-interface {p1, v0}, Lo4/d;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lf5/g;

    invoke-direct {p0, p1}, Ld5/a;-><init>(Lf5/g;)V

    return-object p0
.end method
