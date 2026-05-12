.class public final synthetic Lk0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq0/e$b;


# instance fields
.field public final synthetic a:Lk0/b;


# direct methods
.method public synthetic constructor <init>(Lk0/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk0/a;->a:Lk0/b;

    return-void
.end method


# virtual methods
.method public final saveState()Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Lk0/a;->a:Lk0/b;

    invoke-static {p0}, Lk0/b;->a(Lk0/b;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method
