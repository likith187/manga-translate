.class public final synthetic Lcom/coloros/translate/backuprestore/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/coloros/translate/backuprestore/TranslateDataBackupPlugin;


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/translate/backuprestore/TranslateDataBackupPlugin;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/translate/backuprestore/f;->a:Lcom/coloros/translate/backuprestore/TranslateDataBackupPlugin;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/backuprestore/f;->a:Lcom/coloros/translate/backuprestore/TranslateDataBackupPlugin;

    invoke-static {p0}, Lcom/coloros/translate/backuprestore/TranslateDataBackupPlugin$d;->a(Lcom/coloros/translate/backuprestore/TranslateDataBackupPlugin;)V

    return-void
.end method
