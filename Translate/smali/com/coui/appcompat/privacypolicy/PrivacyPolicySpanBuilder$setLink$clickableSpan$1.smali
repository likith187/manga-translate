.class public final Lcom/coui/appcompat/privacypolicy/PrivacyPolicySpanBuilder$setLink$clickableSpan$1;
.super Lcom/coui/appcompat/privacypolicy/MultiFunctionSpan;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/privacypolicy/PrivacyPolicySpanBuilder;->setLink(Ljava/lang/String;ILandroid/view/View$OnClickListener;)Lcom/coui/appcompat/privacypolicy/PrivacyPolicySpanBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $clickListener:Landroid/view/View$OnClickListener;


# direct methods
.method constructor <init>(Landroid/view/View$OnClickListener;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/privacypolicy/PrivacyPolicySpanBuilder$setLink$clickableSpan$1;->$clickListener:Landroid/view/View$OnClickListener;

    const-string p1, "context"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/coui/appcompat/privacypolicy/MultiFunctionSpan;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    const-string v0, "widget"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/coui/appcompat/privacypolicy/PrivacyPolicySpanBuilder$setLink$clickableSpan$1;->$clickListener:Landroid/view/View$OnClickListener;

    invoke-interface {p0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    return-void
.end method
