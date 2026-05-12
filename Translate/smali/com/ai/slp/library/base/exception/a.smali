.class public interface abstract Lcom/ai/slp/library/base/exception/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/ai/slp/library/base/exception/d;

.field public static final b:Lcom/ai/slp/library/base/exception/d;

.field public static final c:Lcom/ai/slp/library/base/exception/d;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/ai/slp/library/base/exception/c;

    const/4 v1, 0x1

    const-string v2, "ERROR_SDK"

    invoke-direct {v0, v1, v2}, Lcom/ai/slp/library/base/exception/c;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/ai/slp/library/base/exception/a;->a:Lcom/ai/slp/library/base/exception/d;

    new-instance v1, Lcom/ai/slp/library/base/exception/c;

    const-string v2, "01"

    const-string v3, "ERROR_AUTH"

    invoke-direct {v1, v0, v2, v3}, Lcom/ai/slp/library/base/exception/c;-><init>(Lcom/ai/slp/library/base/exception/d;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/ai/slp/library/base/exception/a;->b:Lcom/ai/slp/library/base/exception/d;

    new-instance v1, Lcom/ai/slp/library/base/exception/c;

    const-string v2, "02"

    const-string v3, "ERROR_NETWORK"

    invoke-direct {v1, v0, v2, v3}, Lcom/ai/slp/library/base/exception/c;-><init>(Lcom/ai/slp/library/base/exception/d;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/ai/slp/library/base/exception/a;->c:Lcom/ai/slp/library/base/exception/d;

    return-void
.end method
