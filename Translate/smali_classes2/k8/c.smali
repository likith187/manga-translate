.class public final synthetic Lk8/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:Ll8/f;


# direct methods
.method public synthetic constructor <init>(Ll8/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk8/c;->a:Ll8/f;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lk8/c;->a:Ll8/f;

    check-cast p1, Laa/d;

    invoke-static {p0, p1}, Lk8/e;->a(Ll8/f;Laa/d;)Laa/d;

    move-result-object p0

    return-object p0
.end method
