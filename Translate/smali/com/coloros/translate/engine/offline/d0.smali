.class public final synthetic Lcom/coloros/translate/engine/offline/d0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/oplus/aiunit/translation/request/OfflinePackageRequest;


# direct methods
.method public synthetic constructor <init>(Lcom/oplus/aiunit/translation/request/OfflinePackageRequest;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/translate/engine/offline/d0;->a:Lcom/oplus/aiunit/translation/request/OfflinePackageRequest;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/engine/offline/d0;->a:Lcom/oplus/aiunit/translation/request/OfflinePackageRequest;

    invoke-static {p0}, Lcom/coloros/translate/engine/offline/e0;->b(Lcom/oplus/aiunit/translation/request/OfflinePackageRequest;)V

    return-void
.end method
