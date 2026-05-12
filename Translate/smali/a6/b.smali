.class public final synthetic La6/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/oplus/ocs/base/common/api/OnConnectionFailedListener;


# instance fields
.field public final synthetic a:Lcom/oplus/aiunit/auth/AuthCallback;

.field public final synthetic b:Lcom/oplus/aiunit/auth/AuthClient;


# direct methods
.method public synthetic constructor <init>(Lcom/oplus/aiunit/auth/AuthCallback;Lcom/oplus/aiunit/auth/AuthClient;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La6/b;->a:Lcom/oplus/aiunit/auth/AuthCallback;

    iput-object p2, p0, La6/b;->b:Lcom/oplus/aiunit/auth/AuthClient;

    return-void
.end method
