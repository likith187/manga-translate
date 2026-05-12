.class final Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity$c;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lw8/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;->U0(Lcom/coui/appcompat/privacypolicy/COUIPrivacyPolicyView$Section;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $resId:I

.field final synthetic this$0:Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;


# direct methods
.method constructor <init>(Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;I)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity$c;->this$0:Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;

    iput p2, p0, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity$c;->$resId:I

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Landroid/widget/TextView;)Ljava/lang/CharSequence;
    .locals 4

    const-string v0, "$this$body"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity$c;->this$0:Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;

    .line 3
    iget v1, p0, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity$c;->$resId:I

    invoke-static {v0, v1}, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;->S0(Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;I)Ljava/lang/String;

    move-result-object v1

    .line 4
    iget-object v2, p0, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity$c;->this$0:Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;

    invoke-static {v2}, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;->L0(Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5
    invoke-static {v1, p1}, Lcom/coui/appcompat/privacypolicy/PrivacyPolicySpanBuilderKt;->spanBuilder(Ljava/lang/String;Landroid/widget/TextView;)Lcom/coui/appcompat/privacypolicy/PrivacyPolicySpanBuilder;

    move-result-object v1

    .line 6
    iget-object v2, p0, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity$c;->this$0:Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;

    iget p0, p0, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity$c;->$resId:I

    invoke-static {v2, p0}, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;->S0(Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;I)Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, p0, v2}, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;->Q0(Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity;Lcom/coui/appcompat/privacypolicy/PrivacyPolicySpanBuilder;Landroid/widget/TextView;Ljava/lang/String;I)Lcom/coui/appcompat/privacypolicy/PrivacyPolicySpanBuilder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/coloros/translate/ui/setting/userprotocol/UserProtocolActivity$c;->invoke(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method
