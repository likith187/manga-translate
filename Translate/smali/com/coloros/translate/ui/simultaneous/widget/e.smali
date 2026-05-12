.class public final synthetic Lcom/coloros/translate/ui/simultaneous/widget/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/coloros/translate/ui/simultaneous/widget/COUIAnimateTextView;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/translate/ui/simultaneous/widget/COUIAnimateTextView;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/translate/ui/simultaneous/widget/e;->a:Lcom/coloros/translate/ui/simultaneous/widget/COUIAnimateTextView;

    iput p2, p0, Lcom/coloros/translate/ui/simultaneous/widget/e;->b:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/widget/e;->a:Lcom/coloros/translate/ui/simultaneous/widget/COUIAnimateTextView;

    iget p0, p0, Lcom/coloros/translate/ui/simultaneous/widget/e;->b:I

    invoke-static {v0, p0}, Lcom/coloros/translate/ui/simultaneous/widget/COUIAnimateTextView;->b(Lcom/coloros/translate/ui/simultaneous/widget/COUIAnimateTextView;I)V

    return-void
.end method
