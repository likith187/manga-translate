.class public final synthetic Lp2/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp2/d;->a:Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView;

    iput p2, p0, Lp2/d;->b:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lp2/d;->a:Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView;

    iget p0, p0, Lp2/d;->b:I

    invoke-static {v0, p0}, Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView;->c(Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView;I)V

    return-void
.end method
