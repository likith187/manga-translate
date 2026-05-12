.class public final synthetic Lcom/coloros/translate/backuprestore/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/coloros/translate/backuprestore/TranslateDataRestorePlugin;


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/translate/backuprestore/TranslateDataRestorePlugin;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/translate/backuprestore/g;->a:Lcom/coloros/translate/backuprestore/TranslateDataRestorePlugin;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/backuprestore/g;->a:Lcom/coloros/translate/backuprestore/TranslateDataRestorePlugin;

    invoke-static {p0}, Lcom/coloros/translate/backuprestore/TranslateDataRestorePlugin$d;->a(Lcom/coloros/translate/backuprestore/TranslateDataRestorePlugin;)V

    return-void
.end method
