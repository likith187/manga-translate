.class public final synthetic Lcom/coloros/translate/ui/dialoguetranslation/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/coloros/translate/ui/dialoguetranslation/i;

.field public final synthetic b:Lcom/coloros/translate/repository/local/Conversation;


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/translate/ui/dialoguetranslation/i;Lcom/coloros/translate/repository/local/Conversation;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/c;->a:Lcom/coloros/translate/ui/dialoguetranslation/i;

    iput-object p2, p0, Lcom/coloros/translate/ui/dialoguetranslation/c;->b:Lcom/coloros/translate/repository/local/Conversation;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/c;->a:Lcom/coloros/translate/ui/dialoguetranslation/i;

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/c;->b:Lcom/coloros/translate/repository/local/Conversation;

    invoke-static {v0, p0, p1}, Lcom/coloros/translate/ui/dialoguetranslation/i;->g(Lcom/coloros/translate/ui/dialoguetranslation/i;Lcom/coloros/translate/repository/local/Conversation;Landroid/view/View;)V

    return-void
.end method
