.class public final synthetic Lcom/coui/appcompat/card/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/card/BaseCardInstructionAdapter$BaseHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/coui/appcompat/card/BaseCardInstructionAdapter$BaseHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/card/a;->a:Lcom/coui/appcompat/card/BaseCardInstructionAdapter$BaseHolder;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/card/a;->a:Lcom/coui/appcompat/card/BaseCardInstructionAdapter$BaseHolder;

    invoke-static {p0}, Lcom/coui/appcompat/card/BaseCardInstructionAdapter$BaseHolder;->b(Lcom/coui/appcompat/card/BaseCardInstructionAdapter$BaseHolder;)V

    return-void
.end method
