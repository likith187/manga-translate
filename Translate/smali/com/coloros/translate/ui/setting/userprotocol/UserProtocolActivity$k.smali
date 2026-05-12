.class final Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity$k;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lw8/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;->b1(Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyView$Section;ILjava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $formatLinkString:Ljava/lang/String;

.field final synthetic $linkString:Ljava/lang/String;

.field final synthetic $resId:I

.field final synthetic $setupWizardDone:Z

.field final synthetic this$0:Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;


# direct methods
.method constructor <init>(ILjava/lang/String;ZLjava/lang/String;Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;)V
    .locals 0

    iput p1, p0, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity$k;->$resId:I

    iput-object p2, p0, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity$k;->$formatLinkString:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity$k;->$setupWizardDone:Z

    iput-object p4, p0, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity$k;->$linkString:Ljava/lang/String;

    iput-object p5, p0, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity$k;->this$0:Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Landroid/widget/TextView;)Ljava/lang/CharSequence;
    .locals 3

    const-string v0, "$this$body"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity$k;->$resId:I

    iget-object v2, p0, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity$k;->$formatLinkString:Ljava/lang/String;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity$k;->this$0:Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;

    invoke-static {v1}, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;->L0(Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "apply(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-static {v0, p1}, Lcom/coui/appcompat/privacypolicy/PrivacyPolicySpanBuilderKt;->spanBuilder(Ljava/lang/String;Landroid/widget/TextView;)Lcom/coui/appcompat/privacypolicy/PrivacyPolicySpanBuilder;

    move-result-object p1

    .line 5
    iget-boolean v0, p0, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity$k;->$setupWizardDone:Z

    iget-object p0, p0, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity$k;->$linkString:Ljava/lang/String;

    invoke-virtual {p1, v0, p0}, Lcom/coui/appcompat/privacypolicy/PrivacyPolicySpanBuilder;->setWebLink(ZLjava/lang/String;)Lcom/coui/appcompat/privacypolicy/PrivacyPolicySpanBuilder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity$k;->invoke(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method
