.class public final synthetic Lcom/coloros/translate/repository/remote/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/coloros/translate/repository/remote/c$b;


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/translate/repository/remote/c$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/translate/repository/remote/d;->a:Lcom/coloros/translate/repository/remote/c$b;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/repository/remote/d;->a:Lcom/coloros/translate/repository/remote/c$b;

    invoke-static {p0}, Lcom/coloros/translate/repository/remote/c$h;->a(Lcom/coloros/translate/repository/remote/c$b;)V

    return-void
.end method
