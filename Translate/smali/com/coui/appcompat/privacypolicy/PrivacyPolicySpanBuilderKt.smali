.class public final Lcom/coui/appcompat/privacypolicy/PrivacyPolicySpanBuilderKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "PrivacyPolicySpanBuilder"


# direct methods
.method public static final spanBuilder(Ljava/lang/String;Landroid/widget/TextView;)Lcom/coui/appcompat/privacypolicy/PrivacyPolicySpanBuilder;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "textView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/coui/appcompat/privacypolicy/PrivacyPolicySpanBuilder;

    invoke-direct {v0, p1, p0}, Lcom/coui/appcompat/privacypolicy/PrivacyPolicySpanBuilder;-><init>(Landroid/widget/TextView;Ljava/lang/String;)V

    return-object v0
.end method
