.class public final synthetic Lc5/d;
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

    new-instance p0, Lf5/d;

    const-class v0, Lf5/h;

    invoke-interface {p1, v0}, Lo4/d;->c(Ljava/lang/Class;)Lu4/b;

    move-result-object p1

    invoke-direct {p0, p1}, Lf5/d;-><init>(Lu4/b;)V

    return-object p0
.end method
