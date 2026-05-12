.class public final synthetic Lc5/c;
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
    .locals 0

    const-class p0, Le5/c$a;

    invoke-interface {p1, p0}, Lo4/d;->b(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object p0

    new-instance p1, Le5/c;

    invoke-direct {p1, p0}, Le5/c;-><init>(Ljava/util/Set;)V

    return-object p1
.end method
