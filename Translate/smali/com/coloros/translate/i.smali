.class public final synthetic Lcom/coloros/translate/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/coloros/translate/LanguageManager;


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/translate/LanguageManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/translate/i;->a:Lcom/coloros/translate/LanguageManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/i;->a:Lcom/coloros/translate/LanguageManager;

    invoke-static {p0}, Lcom/coloros/translate/LanguageManager$f;->d(Lcom/coloros/translate/LanguageManager;)V

    return-void
.end method
