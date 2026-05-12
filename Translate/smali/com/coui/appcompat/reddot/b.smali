.class public final synthetic Lcom/coui/appcompat/reddot/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;

.field public final synthetic b:Lcom/coui/appcompat/reddot/COUIHintRedDot;


# direct methods
.method public synthetic constructor <init>(Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;Lcom/coui/appcompat/reddot/COUIHintRedDot;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/reddot/b;->a:Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;

    iput-object p2, p0, Lcom/coui/appcompat/reddot/b;->b:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/reddot/b;->a:Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;

    iget-object p0, p0, Lcom/coui/appcompat/reddot/b;->b:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    invoke-static {v0, p0}, Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;->a(Lcom/coui/appcompat/reddot/COUIRedDotFrameLayout;Lcom/coui/appcompat/reddot/COUIHintRedDot;)V

    return-void
.end method
