.class public final synthetic Lj8/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lj8/n0$a;


# direct methods
.method public synthetic constructor <init>(Lj8/n0$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj8/i;->a:Lj8/n0$a;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lj8/i;->a:Lj8/n0$a;

    check-cast p1, Lj8/m0;

    invoke-static {p0, p1}, Lj8/u;->h(Lj8/n0$a;Lj8/m0;)V

    return-void
.end method
