.class final Lcom/coloros/translate/backuprestore/TranslateDataBackupPlugin$d;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lw8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/backuprestore/TranslateDataBackupPlugin;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/translate/backuprestore/TranslateDataBackupPlugin;


# direct methods
.method constructor <init>(Lcom/coloros/translate/backuprestore/TranslateDataBackupPlugin;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/backuprestore/TranslateDataBackupPlugin$d;->this$0:Lcom/coloros/translate/backuprestore/TranslateDataBackupPlugin;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method

.method public static synthetic a(Lcom/coloros/translate/backuprestore/TranslateDataBackupPlugin;)V
    .locals 0

    invoke-static {p0}, Lcom/coloros/translate/backuprestore/TranslateDataBackupPlugin$d;->invoke$lambda$0(Lcom/coloros/translate/backuprestore/TranslateDataBackupPlugin;)V

    return-void
.end method

.method private static final invoke$lambda$0(Lcom/coloros/translate/backuprestore/TranslateDataBackupPlugin;)V
    .locals 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/coloros/translate/backuprestore/TranslateDataBackupPlugin;->access$updateBackupProgress(Lcom/coloros/translate/backuprestore/TranslateDataBackupPlugin;)V

    invoke-static {p0}, Lcom/coloros/translate/backuprestore/TranslateDataBackupPlugin;->access$getMIsChangeCompleteCount$p(Lcom/coloros/translate/backuprestore/TranslateDataBackupPlugin;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x3e8

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/coloros/translate/backuprestore/TranslateDataBackupPlugin;->access$getMUpdateBackupProgressIntervalTime$p(Lcom/coloros/translate/backuprestore/TranslateDataBackupPlugin;)J

    move-result-wide v0

    const-wide/32 v2, 0xea60

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    move-wide v0, v2

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/coloros/translate/backuprestore/TranslateDataBackupPlugin;->access$getMUpdateBackupProgressIntervalTime$p(Lcom/coloros/translate/backuprestore/TranslateDataBackupPlugin;)J

    move-result-wide v0

    const-wide/16 v2, 0x7530

    add-long/2addr v0, v2

    :goto_0
    invoke-static {p0, v0, v1}, Lcom/coloros/translate/backuprestore/TranslateDataBackupPlugin;->access$setMUpdateBackupProgressIntervalTime$p(Lcom/coloros/translate/backuprestore/TranslateDataBackupPlugin;J)V

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/coloros/translate/backuprestore/TranslateDataBackupPlugin;->access$setMIsChangeCompleteCount$p(Lcom/coloros/translate/backuprestore/TranslateDataBackupPlugin;Z)V

    invoke-static {p0}, Lcom/coloros/translate/backuprestore/TranslateDataBackupPlugin;->access$getMUpdateBackupProgressIntervalTime$p(Lcom/coloros/translate/backuprestore/TranslateDataBackupPlugin;)J

    move-result-wide v0

    const-wide/32 v2, 0x1d4c0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_2

    invoke-static {p0}, Lcom/coloros/translate/backuprestore/TranslateDataBackupPlugin;->access$getMBackupHandler(Lcom/coloros/translate/backuprestore/TranslateDataBackupPlugin;)Lcom/coloros/translate/utils/v0;

    move-result-object v0

    invoke-static {p0}, Lcom/coloros/translate/backuprestore/TranslateDataBackupPlugin;->access$getMUpdateBackupProgress(Lcom/coloros/translate/backuprestore/TranslateDataBackupPlugin;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-static {p0}, Lcom/coloros/translate/backuprestore/TranslateDataBackupPlugin;->access$getMUpdateBackupProgressIntervalTime$p(Lcom/coloros/translate/backuprestore/TranslateDataBackupPlugin;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/coloros/translate/utils/v0;->d(Ljava/lang/Runnable;J)V

    :cond_2
    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/coloros/translate/backuprestore/TranslateDataBackupPlugin$d;->invoke()Ljava/lang/Runnable;

    move-result-object p0

    return-object p0
.end method

.method public final invoke()Ljava/lang/Runnable;
    .locals 1

    .line 2
    iget-object p0, p0, Lcom/coloros/translate/backuprestore/TranslateDataBackupPlugin$d;->this$0:Lcom/coloros/translate/backuprestore/TranslateDataBackupPlugin;

    new-instance v0, Lcom/coloros/translate/backuprestore/f;

    invoke-direct {v0, p0}, Lcom/coloros/translate/backuprestore/f;-><init>(Lcom/coloros/translate/backuprestore/TranslateDataBackupPlugin;)V

    return-object v0
.end method
