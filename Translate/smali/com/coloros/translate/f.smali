.class public final synthetic Lcom/coloros/translate/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/coloros/translate/LanguageManager;

.field public final synthetic b:Ljava/lang/Boolean;


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/translate/LanguageManager;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/translate/f;->a:Lcom/coloros/translate/LanguageManager;

    iput-object p2, p0, Lcom/coloros/translate/f;->b:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/coloros/translate/f;->a:Lcom/coloros/translate/LanguageManager;

    iget-object p0, p0, Lcom/coloros/translate/f;->b:Ljava/lang/Boolean;

    invoke-static {v0, p0}, Lcom/coloros/translate/LanguageManager;->d(Lcom/coloros/translate/LanguageManager;Ljava/lang/Boolean;)V

    return-void
.end method
