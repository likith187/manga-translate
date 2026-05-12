.class public final synthetic Lc5/h;
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
    .locals 2

    new-instance p0, Le5/c$a;

    const-class v0, Le5/a;

    const-class v1, Ld5/a;

    invoke-interface {p1, v1}, Lo4/d;->c(Ljava/lang/Class;)Lu4/b;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Le5/c$a;-><init>(Ljava/lang/Class;Lu4/b;)V

    return-object p0
.end method
