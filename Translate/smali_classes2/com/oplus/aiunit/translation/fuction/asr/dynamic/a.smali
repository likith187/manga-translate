.class public final synthetic Lcom/oplus/aiunit/translation/fuction/asr/dynamic/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/oplus/aiunit/translation/fuction/asr/dynamic/DynamicRealtimeAsrClient;

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic h:Lcom/oplus/aiunit/translation/common/BaseClient$RunActionErrorListener;


# direct methods
.method public synthetic constructor <init>(Lcom/oplus/aiunit/translation/fuction/asr/dynamic/DynamicRealtimeAsrClient;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Lcom/oplus/aiunit/translation/common/BaseClient$RunActionErrorListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/aiunit/translation/fuction/asr/dynamic/a;->a:Lcom/oplus/aiunit/translation/fuction/asr/dynamic/DynamicRealtimeAsrClient;

    iput-object p2, p0, Lcom/oplus/aiunit/translation/fuction/asr/dynamic/a;->b:Ljava/lang/Object;

    iput-object p3, p0, Lcom/oplus/aiunit/translation/fuction/asr/dynamic/a;->c:Ljava/lang/Object;

    iput-object p4, p0, Lcom/oplus/aiunit/translation/fuction/asr/dynamic/a;->f:Ljava/lang/String;

    iput-object p5, p0, Lcom/oplus/aiunit/translation/fuction/asr/dynamic/a;->h:Lcom/oplus/aiunit/translation/common/BaseClient$RunActionErrorListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/oplus/aiunit/translation/fuction/asr/dynamic/a;->a:Lcom/oplus/aiunit/translation/fuction/asr/dynamic/DynamicRealtimeAsrClient;

    iget-object v1, p0, Lcom/oplus/aiunit/translation/fuction/asr/dynamic/a;->b:Ljava/lang/Object;

    iget-object v2, p0, Lcom/oplus/aiunit/translation/fuction/asr/dynamic/a;->c:Ljava/lang/Object;

    iget-object v3, p0, Lcom/oplus/aiunit/translation/fuction/asr/dynamic/a;->f:Ljava/lang/String;

    iget-object p0, p0, Lcom/oplus/aiunit/translation/fuction/asr/dynamic/a;->h:Lcom/oplus/aiunit/translation/common/BaseClient$RunActionErrorListener;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/oplus/aiunit/translation/fuction/asr/dynamic/DynamicRealtimeAsrClient;->a(Lcom/oplus/aiunit/translation/fuction/asr/dynamic/DynamicRealtimeAsrClient;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Lcom/oplus/aiunit/translation/common/BaseClient$RunActionErrorListener;)V

    return-void
.end method
