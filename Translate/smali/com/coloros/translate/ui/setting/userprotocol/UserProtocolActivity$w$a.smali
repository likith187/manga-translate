.class final Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity$w$a;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lw8/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity$w;->invoke(Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyView$Section;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;


# direct methods
.method constructor <init>(Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity$w$a;->this$0:Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method

.method public static synthetic a(Landroid/widget/TextView;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity$w$a;->invoke$lambda$2(Landroid/widget/TextView;Landroid/view/View;)V

    return-void
.end method

.method private static final invoke$lambda$2(Landroid/widget/TextView;Landroid/view/View;)V
    .locals 0

    const-string p1, "$this_body"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/coloros/translate/utils/g;->d(Landroid/content/Context;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final invoke(Landroid/widget/TextView;)Ljava/lang/CharSequence;
    .locals 8

    const-string v0, "$this$body"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 3
    sget v1, Lcom/coloros/translate/R$string;->protocol_content_v7_1:I

    .line 4
    iget-object v2, p0, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity$w$a;->this$0:Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;

    sget v3, Lcom/coloros/translate/R$string;->version_welcome_content_3:I

    invoke-static {v2, v3}, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;->S0(Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 5
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity$w$a;->this$0:Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;

    invoke-static {v1}, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;->L0(Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "apply(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-static {v0, p1}, Lcom/coui/appcompat/privacypolicy/PrivacyPolicySpanBuilderKt;->spanBuilder(Ljava/lang/String;Landroid/widget/TextView;)Lcom/coui/appcompat/privacypolicy/PrivacyPolicySpanBuilder;

    move-result-object v2

    .line 8
    iget-object p0, p0, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity$w$a;->this$0:Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;

    sget v0, Lcom/coloros/translate/R$string;->version_welcome_content_3:I

    invoke-static {p0, v0}, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;->S0(Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;I)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/coloros/translate/ui/setting/userprotocol/g;

    invoke-direct {v5, p1}, Lcom/coloros/translate/ui/setting/userprotocol/g;-><init>(Landroid/widget/TextView;)V

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lcom/coui/appcompat/privacypolicy/PrivacyPolicySpanBuilder;->setLink$default(Lcom/coui/appcompat/privacypolicy/PrivacyPolicySpanBuilder;Ljava/lang/String;ILandroid/view/View$OnClickListener;ILjava/lang/Object;)Lcom/coui/appcompat/privacypolicy/PrivacyPolicySpanBuilder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity$w$a;->invoke(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method
