.class public final synthetic Lcom/coloros/translate/screen/translate/engine/language/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/coloros/translate/screen/translate/engine/language/c;

.field public final synthetic b:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/translate/screen/translate/engine/language/c;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/translate/screen/translate/engine/language/b;->a:Lcom/coloros/translate/screen/translate/engine/language/c;

    iput-object p2, p0, Lcom/coloros/translate/screen/translate/engine/language/b;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/coloros/translate/screen/translate/engine/language/b;->a:Lcom/coloros/translate/screen/translate/engine/language/c;

    iget-object p0, p0, Lcom/coloros/translate/screen/translate/engine/language/b;->b:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/coloros/translate/screen/translate/engine/language/c;->a(Lcom/coloros/translate/screen/translate/engine/language/c;Landroid/content/Context;)V

    return-void
.end method
