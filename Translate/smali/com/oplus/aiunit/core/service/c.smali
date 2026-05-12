.class public final synthetic Lcom/oplus/aiunit/core/service/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/oplus/aiunit/core/callback/ConnectionCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/oplus/aiunit/core/callback/ConnectionCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/aiunit/core/service/c;->a:Lcom/oplus/aiunit/core/callback/ConnectionCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/core/service/c;->a:Lcom/oplus/aiunit/core/callback/ConnectionCallback;

    invoke-static {p0}, Lcom/oplus/aiunit/core/service/ServiceManager;->d(Lcom/oplus/aiunit/core/callback/ConnectionCallback;)V

    return-void
.end method
