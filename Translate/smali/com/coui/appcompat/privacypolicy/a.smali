.class public final synthetic Lcom/coui/appcompat/privacypolicy/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/coui/appcompat/privacypolicy/PrivacyPolicySpanBuilder;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lcom/coui/appcompat/privacypolicy/PrivacyPolicySpanBuilder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/privacypolicy/a;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/coui/appcompat/privacypolicy/a;->b:Lcom/coui/appcompat/privacypolicy/PrivacyPolicySpanBuilder;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/privacypolicy/a;->a:Ljava/lang/String;

    iget-object p0, p0, Lcom/coui/appcompat/privacypolicy/a;->b:Lcom/coui/appcompat/privacypolicy/PrivacyPolicySpanBuilder;

    invoke-static {v0, p0, p1}, Lcom/coui/appcompat/privacypolicy/PrivacyPolicySpanBuilder;->a(Ljava/lang/String;Lcom/coui/appcompat/privacypolicy/PrivacyPolicySpanBuilder;Landroid/view/View;)V

    return-void
.end method
