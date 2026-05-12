.class public final synthetic Lcom/coloros/translate/ui/dialoguetranslation/d1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/coloros/translate/ui/dialoguetranslation/c1;

.field public final synthetic b:Lcom/coloros/translate/repository/local/Conversation;


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/translate/ui/dialoguetranslation/c1;Lcom/coloros/translate/repository/local/Conversation;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/d1;->a:Lcom/coloros/translate/ui/dialoguetranslation/c1;

    iput-object p2, p0, Lcom/coloros/translate/ui/dialoguetranslation/d1;->b:Lcom/coloros/translate/repository/local/Conversation;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/d1;->a:Lcom/coloros/translate/ui/dialoguetranslation/c1;

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/d1;->b:Lcom/coloros/translate/repository/local/Conversation;

    invoke-static {v0, p0}, Lcom/coloros/translate/ui/dialoguetranslation/c1$e;->a(Lcom/coloros/translate/ui/dialoguetranslation/c1;Lcom/coloros/translate/repository/local/Conversation;)V

    return-void
.end method
