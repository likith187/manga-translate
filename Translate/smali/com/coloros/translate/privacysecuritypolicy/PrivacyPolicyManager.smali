.class public Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager$a;,
        Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager$b;
    }
.end annotation


# static fields
.field public static final i:Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager$a;


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Le2/b;

.field private c:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

.field private d:Landroidx/appcompat/app/c;

.field private e:Landroidx/appcompat/app/c;

.field private f:Landroidx/appcompat/app/c;

.field private g:Landroidx/appcompat/app/c;

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;->i:Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final A()Landroid/text/SpannableStringBuilder;
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget v1, Lcom/coloros/translate/R$string;->translation_personal_info_protection_policy:I

    invoke-static {v1}, Lcom/coloros/translate/utils/n0;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    new-instance v4, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager$d;

    invoke-direct {v4, p0}, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager$d;-><init>(Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;->a:Landroid/app/Activity;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    sget v4, Lcom/coloros/translate/R$string;->still_use_basic_function_content_os16:I

    sget v5, Lcom/coloros/translate/R$string;->translation_personal_info_protection_policy:I

    invoke-static {v5}, Lcom/coloros/translate/utils/n0;->b(I)Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v3

    :goto_1
    iget-object p0, p0, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;->a:Landroid/app/Activity;

    if-eqz p0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-static {p0, v2, v0, v1}, Lcom/coloros/translate/utils/StatementHelperUtil;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    :cond_2
    return-object v3
.end method

.method private static final F(Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;Le2/a;Landroid/content/DialogInterface;I)V
    .locals 7

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$dialogCallback"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;->f:Landroidx/appcompat/app/c;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroidx/appcompat/app/o;->dismiss()V

    :cond_0
    sget-object v0, Lcom/coloros/translate/utils/l0;->a:Lcom/coloros/translate/utils/l0$a;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/16 v5, 0xc

    const/4 v6, 0x0

    const-string v1, "show_dialogue_simultaneous_function_instruction"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Lcom/coloros/translate/utils/l0$a;->l(Lcom/coloros/translate/utils/l0$a;Ljava/lang/String;Ljava/lang/Object;ZLjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0}, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;->d0()V

    invoke-interface {p1}, Le2/a;->b()V

    return-void
.end method

.method private static final G(Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;Le2/a;Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$dialogCallback"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;->f:Landroidx/appcompat/app/c;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/app/o;->dismiss()V

    :cond_0
    invoke-interface {p1}, Le2/a;->a()V

    return-void
.end method

.method private static final H(Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;Le2/a;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$dialogCallback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;->f:Landroidx/appcompat/app/c;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/app/o;->dismiss()V

    :cond_0
    invoke-interface {p1}, Le2/a;->a()V

    return-void
.end method

.method private static final I(Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;Landroid/window/OnBackInvokedCallback;Landroid/content/DialogInterface;)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$backInvokedCallback"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;->f:Landroidx/appcompat/app/c;

    if-eqz p0, :cond_0

    invoke-static {p0}, Lh2/a;->a(Landroidx/appcompat/app/c;)Landroid/window/OnBackInvokedDispatcher;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0, p1}, Landroidx/appcompat/app/j;->a(Landroid/window/OnBackInvokedDispatcher;Landroid/window/OnBackInvokedCallback;)V

    :cond_0
    return-void
.end method

.method private final J()V
    .locals 13

    iget-object v0, p0, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;->a:Landroid/app/Activity;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;->b:Le2/b;

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;->c:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;->c:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->dismiss(Z)V

    :cond_1
    iget-object v0, p0, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;->a:Landroid/app/Activity;

    if-eqz v0, :cond_7

    iget-object v2, p0, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;->c:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    if-nez v2, :cond_2

    new-instance v9, Lcom/coui/appcompat/statement/COUIUserStatementDialog;

    const/16 v7, 0xe

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v9

    move-object v3, v0

    invoke-direct/range {v2 .. v8}, Lcom/coui/appcompat/statement/COUIUserStatementDialog;-><init>(Landroid/content/Context;IFFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget v2, Lcom/coloros/translate/base/R$drawable;->ic_app_launcher:I

    invoke-static {v0, v2}, Le/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->setLogoDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v9}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/coloros/translate/R$string;->app_content:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->setAppMessage(Ljava/lang/CharSequence;)V

    invoke-virtual {v9}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/coloros/translate/R$string;->app_name_new:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->setAppName(Ljava/lang/CharSequence;)V

    sget v2, Lcom/coloros/translate/R$string;->welcome_use:I

    invoke-virtual {v9, v2}, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->setTitleText(I)V

    invoke-virtual {v9}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/coloros/translate/R$string;->privacy_policy_agree:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->setBottomButtonText(Ljava/lang/CharSequence;)V

    invoke-virtual {v9}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/coloros/translate/R$string;->disagree:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->setExitButtonText(Ljava/lang/CharSequence;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v9}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/coloros/translate/R$string;->basic_function:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager$e;

    invoke-direct {v4, p0}, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager$e;-><init>(Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v9}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lcom/coloros/translate/R$string;->translation_personal_info_protection_policy:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager$f;

    invoke-direct {v6, v0}, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager$f;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v9}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "getContext(...)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v8

    sget v10, Lcom/coloros/translate/R$string;->user_notice_content_os16:I

    invoke-virtual {v9}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v11

    sget v12, Lcom/coloros/translate/R$string;->basic_function:I

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    filled-new-array {v11}, [Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const-string v10, "getString(...)"

    invoke-static {v8, v10}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6, v8, v2, v3}, Lcom/coloros/translate/utils/StatementHelperUtil;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->setStatement(Ljava/lang/CharSequence;)V

    invoke-virtual {v9}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v7}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v6, Lcom/coloros/translate/R$string;->user_agreement_content_new_suffix:I

    invoke-virtual {v9}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v7

    sget v8, Lcom/coloros/translate/R$string;->translation_personal_info_protection_policy:I

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v10}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v3, v4, v5}, Lcom/coloros/translate/utils/StatementHelperUtil;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->setProtocolText(Ljava/lang/CharSequence;)V

    new-instance v2, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager$showPrivacyPolicyDialog$1$1$3;

    invoke-direct {v2, p0}, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager$showPrivacyPolicyDialog$1$1$3;-><init>(Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;)V

    invoke-virtual {v9, v2}, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->setOnButtonClickListener(Lcom/coui/appcompat/statement/COUIUserStatementDialog$OnButtonClickListener;)V

    new-instance v2, Lh2/c;

    invoke-direct {v2, p0}, Lh2/c;-><init>(Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;)V

    invoke-virtual {v9, v2}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iput-object v9, p0, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;->c:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    :cond_2
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;->c:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    goto :goto_0

    :cond_3
    move v2, v1

    :goto_0
    if-nez v2, :cond_7

    sget-object v2, Lcom/coloros/translate/TranslationApplication;->b:Lcom/coloros/translate/TranslationApplication$a;

    invoke-virtual {v2}, Lcom/coloros/translate/TranslationApplication$a;->a()Landroid/app/Application;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type com.coloros.translate.TranslationApplication"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/coloros/translate/TranslationApplication;

    invoke-virtual {v2, v0}, Lcom/coloros/translate/TranslationApplication;->c(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;->c:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_4
    iget-object v0, p0, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;->b:Le2/b;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Le2/b;->c()V

    :cond_5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    if-lt v0, v2, :cond_7

    new-instance v0, Lh2/d;

    invoke-direct {v0, p0}, Lh2/d;-><init>(Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;)V

    iget-object v2, p0, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;->c:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    if-eqz v2, :cond_6

    invoke-static {v2}, Lh2/b;->a(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)Landroid/window/OnBackInvokedDispatcher;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-static {v2, v1, v0}, Landroidx/appcompat/app/l;->a(Landroid/window/OnBackInvokedDispatcher;ILandroid/window/OnBackInvokedCallback;)V

    :cond_6
    iget-object v1, p0, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;->c:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    if-eqz v1, :cond_7

    new-instance v2, Lh2/e;

    invoke-direct {v2, p0, v0}, Lh2/e;-><init>(Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;Landroid/window/OnBackInvokedCallback;)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :cond_7
    return-void

    :cond_8
    :goto_1
    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v0, "PrivacyPolicyManager"

    const-string v1, "mActivity or mPrivacyPolicyCallback is null"

    invoke-virtual {p0, v0, v1}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static final L(Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;Landroid/content/DialogInterface;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;->b:Le2/b;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Le2/b;->a()V

    :cond_0
    return-void
.end method

.method private static final M(Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;->b:Le2/b;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Le2/b;->a()V

    :cond_0
    return-void
.end method

.method private static final N(Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;Landroid/window/OnBackInvokedCallback;Landroid/content/DialogInterface;)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$backInvokedCallback"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;->c:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    if-eqz p0, :cond_0

    invoke-static {p0}, Lh2/b;->a(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)Landroid/window/OnBackInvokedDispatcher;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0, p1}, Landroidx/appcompat/app/j;->a(Landroid/window/OnBackInvokedDispatcher;Landroid/window/OnBackInvokedCallback;)V

    :cond_0
    return-void
.end method

.method private static final P(Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;Le2/a;Landroid/content/DialogInterface;I)V
    .locals 7

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$dialogCallback"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;->g:Landroidx/appcompat/app/c;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroidx/appcompat/app/o;->dismiss()V

    :cond_0
    sget-object v0, Lcom/coloros/translate/utils/l0;->a:Lcom/coloros/translate/utils/l0$a;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/16 v5, 0xc

    const/4 v6, 0x0

    const-string v1, "show_screen_translation_function_instruction"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Lcom/coloros/translate/utils/l0$a;->l(Lcom/coloros/translate/utils/l0$a;Ljava/lang/String;Ljava/lang/Object;ZLjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0}, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;->d0()V

    invoke-interface {p1}, Le2/a;->b()V

    return-void
.end method

.method private static final Q(Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;Le2/a;Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$dialogCallback"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;->g:Landroidx/appcompat/app/c;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/app/o;->dismiss()V

    :cond_0
    invoke-interface {p1}, Le2/a;->a()V

    return-void
.end method

.method private static final R(Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;Le2/a;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$dialogCallback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;->g:Landroidx/appcompat/app/c;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/app/o;->dismiss()V

    :cond_0
    invoke-interface {p1}, Le2/a;->a()V

    return-void
.end method

.method private static final S(Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;Landroid/window/OnBackInvokedCallback;Landroid/content/DialogInterface;)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$backInvokedCallback"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;->g:Landroidx/appcompat/app/c;

    if-eqz p0, :cond_0

    invoke-static {p0}, Lh2/a;->a(Landroidx/appcompat/app/c;)Landroid/window/OnBackInvokedDispatcher;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0, p1}, Landroidx/appcompat/app/j;->a(Landroid/window/OnBackInvokedDispatcher;Landroid/window/OnBackInvokedCallback;)V

    :cond_0
    return-void
.end method

.method private static final U(Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;Le2/a;Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$callback"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;->e:Landroidx/appcompat/app/c;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/app/o;->dismiss()V

    :cond_0
    invoke-interface {p1}, Le2/a;->b()V

    return-void
.end method

.method private static final V(Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;Le2/a;Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$callback"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;->e:Landroidx/appcompat/app/c;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/app/o;->dismiss()V

    :cond_0
    invoke-interface {p1}, Le2/a;->a()V

    return-void
.end method

.method private static final W(Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;Le2/a;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;->e:Landroidx/appcompat/app/c;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/app/o;->dismiss()V

    :cond_0
    invoke-interface {p1}, Le2/a;->a()V

    return-void
.end method

.method private static final X(Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;Landroid/window/OnBackInvokedCallback;Landroid/content/DialogInterface;)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$backInvokedCallback"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;->e:Landroidx/appcompat/app/c;

    if-eqz p0, :cond_0

    invoke-static {p0}, Lh2/a;->a(Landroidx/appcompat/app/c;)Landroid/window/OnBackInvokedDispatcher;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0, p1}, Landroidx/appcompat/app/j;->a(Landroid/window/OnBackInvokedDispatcher;Landroid/window/OnBackInvokedCallback;)V

    :cond_0
    return-void
.end method

.method private final Y(Landroid/app/Activity;Le2/a;)V
    .locals 3

    iget-object v0, p0, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;->d:Landroidx/appcompat/app/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;->d:Landroidx/appcompat/app/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/app/o;->dismiss()V

    :cond_0
    new-instance v0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    invoke-direct {v0, p1}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    sget p1, Lcom/coloros/translate/R$string;->use_basic_function:I

    invoke-static {p1}, Lcom/coloros/translate/utils/n0;->b(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    invoke-direct {p0}, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;->z()Landroid/text/SpannableStringBuilder;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    sget p1, Lcom/coloros/translate/R$string;->come_into_use:I

    new-instance v1, Lh2/j;

    invoke-direct {v1, p0, p2}, Lh2/j;-><init>(Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;Le2/a;)V

    invoke-virtual {v0, p1, v1}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    sget p1, Lcom/coloros/translate/R$string;->return_value:I

    new-instance v1, Lh2/k;

    invoke-direct {v1, p0, p2}, Lh2/k;-><init>(Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;Le2/a;)V

    invoke-virtual {v0, p1, v1}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    invoke-virtual {v0}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->show()Landroidx/appcompat/app/c;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;->d:Landroidx/appcompat/app/c;

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    :cond_1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    if-lt p1, v2, :cond_3

    new-instance p1, Lh2/l;

    invoke-direct {p1, p0, p2}, Lh2/l;-><init>(Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;Le2/a;)V

    iget-object p2, p0, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;->d:Landroidx/appcompat/app/c;

    if-eqz p2, :cond_2

    invoke-static {p2}, Lh2/a;->a(Landroidx/appcompat/app/c;)Landroid/window/OnBackInvokedDispatcher;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-static {p2, v1, p1}, Landroidx/appcompat/app/l;->a(Landroid/window/OnBackInvokedDispatcher;ILandroid/window/OnBackInvokedCallback;)V

    :cond_2
    iget-object p2, p0, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;->d:Landroidx/appcompat/app/c;

    if-eqz p2, :cond_4

    new-instance v0, Lh2/m;

    invoke-direct {v0, p0, p1}, Lh2/m;-><init>(Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;Landroid/window/OnBackInvokedCallback;)V

    invoke-virtual {p2, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0

    :cond_3
    new-instance p1, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager$b;

    invoke-direct {p1, p2}, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager$b;-><init>(Le2/a;)V

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/c$a;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroidx/appcompat/app/c$a;

    :cond_4
    :goto_0
    iget-object p0, p0, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;->d:Landroidx/appcompat/app/c;

    if-eqz p0, :cond_5

    const p1, 0x102000b

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/o;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    if-eqz p0, :cond_5

    sget-object p1, Lcom/coui/appcompat/statement/COUILinkMovementMethod;->INSTANCE:Lcom/coui/appcompat/statement/COUILinkMovementMethod;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    :cond_5
    return-void
.end method

.method private static final Z(Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;Le2/a;Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$dialogCallback"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;->d:Landroidx/appcompat/app/c;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/app/o;->dismiss()V

    :cond_0
    invoke-interface {p1}, Le2/a;->b()V

    return-void
.end method

.method public static synthetic a(Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;Le2/a;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;->F(Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;Le2/a;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private static final a0(Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;Le2/a;Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$dialogCallback"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;->d:Landroidx/appcompat/app/c;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/app/o;->dismiss()V

    :cond_0
    invoke-interface {p1}, Le2/a;->a()V

    return-void
.end method

.method public static synthetic b(Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;Le2/a;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;->Q(Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;Le2/a;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private static final b0(Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;Le2/a;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$dialogCallback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;->d:Landroidx/appcompat/app/c;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/app/o;->dismiss()V

    :cond_0
    invoke-interface {p1}, Le2/a;->a()V

    return-void
.end method

.method public static synthetic c(Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;Landroid/window/OnBackInvokedCallback;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;->I(Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;Landroid/window/OnBackInvokedCallback;Landroid/content/DialogInterface;)V

    return-void
.end method

.method private static final c0(Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;Landroid/window/OnBackInvokedCallback;Landroid/content/DialogInterface;)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$backInvokedCallback"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;->d:Landroidx/appcompat/app/c;

    if-eqz p0, :cond_0

    invoke-static {p0}, Lh2/a;->a(Landroidx/appcompat/app/c;)Landroid/window/OnBackInvokedDispatcher;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0, p1}, Landroidx/appcompat/app/j;->a(Landroid/window/OnBackInvokedDispatcher;Landroid/window/OnBackInvokedCallback;)V

    :cond_0
    return-void
.end method

.method public static synthetic d(Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;Le2/a;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;->G(Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;Le2/a;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private final d0()V
    .locals 7

    sget-object p0, Lcom/coloros/translate/utils/l0;->a:Lcom/coloros/translate/utils/l0$a;

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "show_dialogue_simultaneous_function_instruction"

    const/4 v3, 0x0

    move-object v0, p0

    move-object v2, v6

    invoke-static/range {v0 .. v5}, Lcom/coloros/translate/utils/l0$a;->g(Lcom/coloros/translate/utils/l0$a;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "show_screen_translation_function_instruction"

    const/4 v3, 0x0

    move-object v0, p0

    move-object v2, v6

    invoke-static/range {v0 .. v5}, Lcom/coloros/translate/utils/l0$a;->g(Lcom/coloros/translate/utils/l0$a;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/16 v5, 0xc

    const/4 v6, 0x0

    const-string v1, "show_privacy_policy_alert_new"

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/coloros/translate/utils/l0$a;->l(Lcom/coloros/translate/utils/l0$a;Ljava/lang/String;Ljava/lang/Object;ZLjava/lang/String;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static synthetic e(Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;Le2/a;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;->V(Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;Le2/a;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic f(Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;Landroid/window/OnBackInvokedCallback;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;->S(Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;Landroid/window/OnBackInvokedCallback;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic g(Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;->L(Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic h(Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;Le2/a;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;->W(Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;Le2/a;)V

    return-void
.end method

.method public static synthetic i(Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;Landroid/window/OnBackInvokedCallback;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;->N(Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;Landroid/window/OnBackInvokedCallback;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic j(Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;Le2/a;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;->a0(Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;Le2/a;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic k(Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;Landroid/window/OnBackInvokedCallback;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;->X(Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;Landroid/window/OnBackInvokedCallback;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic l(Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;Le2/a;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;->H(Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;Le2/a;)V

    return-void
.end method

.method public static synthetic m(Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;Le2/a;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;->P(Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;Le2/a;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic n(Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;Le2/a;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;->R(Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;Le2/a;)V

    return-void
.end method

.method public static synthetic o(Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;Le2/a;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;->b0(Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;Le2/a;)V

    return-void
.end method

.method public static synthetic p(Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;Landroid/window/OnBackInvokedCallback;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;->c0(Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;Landroid/window/OnBackInvokedCallback;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic q(Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;Le2/a;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;->U(Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;Le2/a;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic r(Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;)V
    .locals 0

    invoke-static {p0}, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;->M(Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;)V

    return-void
.end method

.method public static synthetic s(Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;Le2/a;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;->Z(Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;Le2/a;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static final synthetic t(Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;->a:Landroid/app/Activity;

    return-object p0
.end method

.method public static final synthetic u(Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;)I
    .locals 0

    iget p0, p0, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;->h:I

    return p0
.end method

.method public static final synthetic v(Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;)Le2/b;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;->b:Le2/b;

    return-object p0
.end method

.method public static final synthetic w(Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;)Lcom/coui/appcompat/panel/COUIBottomSheetDialog;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;->c:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    return-object p0
.end method

.method public static final synthetic x(Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;->J()V

    return-void
.end method

.method public static final synthetic y(Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;Landroid/app/Activity;Le2/a;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;->Y(Landroid/app/Activity;Le2/a;)V

    return-void
.end method

.method private final z()Landroid/text/SpannableStringBuilder;
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget v1, Lcom/coloros/translate/R$string;->translation_personal_info_protection_policy:I

    invoke-static {v1}, Lcom/coloros/translate/utils/n0;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    new-instance v4, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager$c;

    invoke-direct {v4, p0}, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager$c;-><init>(Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;->a:Landroid/app/Activity;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    sget v4, Lcom/coloros/translate/R$string;->use_basic_function_content_os16:I

    sget v5, Lcom/coloros/translate/R$string;->translation_personal_info_protection_policy:I

    invoke-static {v5}, Lcom/coloros/translate/utils/n0;->b(I)Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v3

    :goto_1
    iget-object p0, p0, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;->a:Landroid/app/Activity;

    if-eqz p0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-static {p0, v2, v0, v1}, Lcom/coloros/translate/utils/StatementHelperUtil;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    :cond_2
    return-object v3
.end method


# virtual methods
.method public final B()Z
    .locals 6

    sget-object p0, Lcom/coloros/translate/utils/l0;->a:Lcom/coloros/translate/utils/l0$a;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "use_basic_function"

    const/4 v3, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/coloros/translate/utils/l0$a;->g(Lcom/coloros/translate/utils/l0$a;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "show_dialogue_simultaneous_function_instruction"

    const/4 v3, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/coloros/translate/utils/l0$a;->g(Lcom/coloros/translate/utils/l0$a;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final C(Landroid/content/Context;)V
    .locals 3

    if-eqz p1, :cond_1

    :try_start_0
    sget-object p0, Ln8/r;->Companion:Ln8/r$a;

    move-object p0, p1

    check-cast p0, Lcom/coloros/translate/base/BaseActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    new-instance p0, Landroid/content/Intent;

    const-class v0, Lcom/coloros/translate/ui/MainActivity;

    invoke-direct {p0, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x4000000

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget-object p1, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {p0}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "jumpToMainActivity failure\uff0c"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "PrivacyPolicyManager"

    invoke-virtual {v0, v1, p1}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {p0}, Ln8/r;->box-impl(Ljava/lang/Object;)Ln8/r;

    :cond_1
    return-void
.end method

.method public final D()V
    .locals 2

    iget-object v0, p0, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;->c:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->dismiss(Z)V

    :cond_0
    iget-object v0, p0, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;->d:Landroidx/appcompat/app/c;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :cond_1
    iget-object v0, p0, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;->d:Landroidx/appcompat/app/c;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    :cond_2
    iget-object v0, p0, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;->d:Landroidx/appcompat/app/c;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroidx/appcompat/app/o;->dismiss()V

    :cond_3
    iget-object v0, p0, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;->e:Landroidx/appcompat/app/c;

    if-eqz v0, :cond_4

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :cond_4
    iget-object v0, p0, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;->e:Landroidx/appcompat/app/c;

    if-eqz v0, :cond_5

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    :cond_5
    iget-object v0, p0, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;->e:Landroidx/appcompat/app/c;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroidx/appcompat/app/o;->dismiss()V

    :cond_6
    iget-object v0, p0, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;->f:Landroidx/appcompat/app/c;

    if-eqz v0, :cond_7

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :cond_7
    iget-object v0, p0, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;->f:Landroidx/appcompat/app/c;

    if-eqz v0, :cond_8

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    :cond_8
    iget-object v0, p0, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;->f:Landroidx/appcompat/app/c;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroidx/appcompat/app/o;->dismiss()V

    :cond_9
    iget-object v0, p0, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;->g:Landroidx/appcompat/app/c;

    if-eqz v0, :cond_a

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :cond_a
    iget-object v0, p0, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;->g:Landroidx/appcompat/app/c;

    if-eqz v0, :cond_b

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    :cond_b
    iget-object v0, p0, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;->g:Landroidx/appcompat/app/c;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroidx/appcompat/app/o;->dismiss()V

    :cond_c
    iput-object v1, p0, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;->a:Landroid/app/Activity;

    return-void
.end method

.method public final E(Landroid/app/Activity;ZLe2/a;)V
    .locals 3

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dialogCallback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "PrivacyPolicyManager"

    const-string v2, "showDialogueSimultaneousFunctionInstruction"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;->B()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    sget p2, Lcom/coloros/translate/R$string;->dialogue_translation_function_instruction_new:I

    invoke-static {p2}, Lcom/coloros/translate/utils/n0;->b(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    sget p2, Lcom/coloros/translate/R$string;->simultaneous_interpretation_function_instruction_new:I

    invoke-static {p2}, Lcom/coloros/translate/utils/n0;->b(I)Ljava/lang/String;

    move-result-object p2

    :goto_0
    instance-of v0, p1, Lcom/coloros/translate/ui/MainActivity;

    new-instance v1, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    invoke-direct {v1, p1}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    sget v2, Lcom/coloros/translate/R$string;->function_instruction:I

    invoke-static {v2}, Lcom/coloros/translate/utils/n0;->b(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    invoke-virtual {v1, p2}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    sget p2, Lcom/coloros/translate/R$string;->privacy_policy_agree:I

    new-instance v2, Lh2/f;

    invoke-direct {v2, p0, p3}, Lh2/f;-><init>(Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;Le2/a;)V

    invoke-virtual {v1, p2, v2}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    sget p2, Lcom/coloros/translate/R$string;->disagree:I

    new-instance v2, Lh2/g;

    invoke-direct {v2, p0, p3}, Lh2/g;-><init>(Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;Le2/a;)V

    invoke-virtual {v1, p2, v2}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    invoke-virtual {v1, v0}, Landroidx/appcompat/app/c$a;->setCancelable(Z)Landroidx/appcompat/app/c$a;

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p2

    if-nez p2, :cond_5

    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;->f:Landroidx/appcompat/app/c;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->show()Landroidx/appcompat/app/c;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;->f:Landroidx/appcompat/app/c;

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x21

    if-lt p1, p2, :cond_4

    new-instance p1, Lh2/h;

    invoke-direct {p1, p0, p3}, Lh2/h;-><init>(Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;Le2/a;)V

    iget-object p2, p0, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;->f:Landroidx/appcompat/app/c;

    if-eqz p2, :cond_3

    invoke-static {p2}, Lh2/a;->a(Landroidx/appcompat/app/c;)Landroid/window/OnBackInvokedDispatcher;

    move-result-object p2

    if-eqz p2, :cond_3

    const/4 p3, 0x0

    invoke-static {p2, p3, p1}, Landroidx/appcompat/app/l;->a(Landroid/window/OnBackInvokedDispatcher;ILandroid/window/OnBackInvokedCallback;)V

    :cond_3
    iget-object p2, p0, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;->f:Landroidx/appcompat/app/c;

    if-eqz p2, :cond_5

    new-instance p3, Lh2/i;

    invoke-direct {p3, p0, p1}, Lh2/i;-><init>(Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;Landroid/window/OnBackInvokedCallback;)V

    invoke-virtual {p2, p3}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_1

    :cond_4
    new-instance p0, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager$b;

    invoke-direct {p0, p3}, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager$b;-><init>(Le2/a;)V

    invoke-virtual {v1, p0}, Landroidx/appcompat/app/c$a;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroidx/appcompat/app/c$a;

    :cond_5
    :goto_1
    return-void
.end method

.method public final K(Landroid/app/Activity;Le2/b;I)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;->b:Le2/b;

    iput p3, p0, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;->h:I

    sget-object p1, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;->i:Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager$a;

    invoke-virtual {p1}, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager$a;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;->J()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;->b:Le2/b;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Le2/b;->b()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final O(Landroid/app/Activity;Le2/a;)V
    .locals 4

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dialogCallback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;->i:Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager$a;

    invoke-virtual {v0}, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager$a;->b()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    instance-of v0, p1, Lcom/coloros/translate/ui/MainActivity;

    new-instance v1, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    invoke-direct {v1, p1}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    sget v2, Lcom/coloros/translate/R$string;->function_instruction:I

    invoke-static {v2}, Lcom/coloros/translate/utils/n0;->b(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    sget v2, Lcom/coloros/translate/R$string;->screen_translation_function_instruction_new:I

    invoke-static {v2}, Lcom/coloros/translate/utils/n0;->b(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    sget v2, Lcom/coloros/translate/R$string;->privacy_policy_agree:I

    new-instance v3, Lh2/n;

    invoke-direct {v3, p0, p2}, Lh2/n;-><init>(Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;Le2/a;)V

    invoke-virtual {v1, v2, v3}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    sget v2, Lcom/coloros/translate/R$string;->disagree:I

    new-instance v3, Lh2/o;

    invoke-direct {v3, p0, p2}, Lh2/o;-><init>(Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;Le2/a;)V

    invoke-virtual {v1, v2, v3}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    invoke-virtual {v1, v0}, Landroidx/appcompat/app/c$a;->setCancelable(Z)Landroidx/appcompat/app/c$a;

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;->g:Landroidx/appcompat/app/c;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    goto :goto_0

    :cond_1
    move p1, v0

    :goto_0
    if-nez p1, :cond_4

    invoke-virtual {v1}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->show()Landroidx/appcompat/app/c;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;->g:Landroidx/appcompat/app/c;

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    if-lt p1, v2, :cond_3

    new-instance p1, Lh2/p;

    invoke-direct {p1, p0, p2}, Lh2/p;-><init>(Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;Le2/a;)V

    iget-object p2, p0, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;->g:Landroidx/appcompat/app/c;

    if-eqz p2, :cond_2

    invoke-static {p2}, Lh2/a;->a(Landroidx/appcompat/app/c;)Landroid/window/OnBackInvokedDispatcher;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-static {p2, v0, p1}, Landroidx/appcompat/app/l;->a(Landroid/window/OnBackInvokedDispatcher;ILandroid/window/OnBackInvokedCallback;)V

    :cond_2
    iget-object p2, p0, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;->g:Landroidx/appcompat/app/c;

    if-eqz p2, :cond_4

    new-instance v0, Lh2/q;

    invoke-direct {v0, p0, p1}, Lh2/q;-><init>(Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;Landroid/window/OnBackInvokedCallback;)V

    invoke-virtual {p2, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_1

    :cond_3
    new-instance p0, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager$b;

    invoke-direct {p0, p2}, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager$b;-><init>(Le2/a;)V

    invoke-virtual {v1, p0}, Landroidx/appcompat/app/c$a;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroidx/appcompat/app/c$a;

    :cond_4
    :goto_1
    return-void
.end method

.method public final T(Landroid/app/Activity;Le2/a;)V
    .locals 3

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "PrivacyPolicyManager"

    const-string v2, "showStillUseBasicFunctionDialog"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;->e:Landroidx/appcompat/app/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;->e:Landroidx/appcompat/app/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/app/o;->dismiss()V

    :cond_0
    new-instance v0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    invoke-direct {v0, p1}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    sget p1, Lcom/coloros/translate/R$string;->still_use_basic_function:I

    invoke-static {p1}, Lcom/coloros/translate/utils/n0;->b(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    invoke-direct {p0}, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;->A()Landroid/text/SpannableStringBuilder;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    sget p1, Lcom/coloros/translate/R$string;->come_into_use:I

    new-instance v1, Lh2/r;

    invoke-direct {v1, p0, p2}, Lh2/r;-><init>(Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;Le2/a;)V

    invoke-virtual {v0, p1, v1}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    sget p1, Lcom/coloros/translate/R$string;->exit:I

    new-instance v1, Lh2/s;

    invoke-direct {v1, p0, p2}, Lh2/s;-><init>(Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;Le2/a;)V

    invoke-virtual {v0, p1, v1}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    invoke-virtual {v0}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->show()Landroidx/appcompat/app/c;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;->e:Landroidx/appcompat/app/c;

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    :cond_1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    if-lt p1, v2, :cond_3

    new-instance p1, Lh2/t;

    invoke-direct {p1, p0, p2}, Lh2/t;-><init>(Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;Le2/a;)V

    iget-object p2, p0, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;->e:Landroidx/appcompat/app/c;

    if-eqz p2, :cond_2

    invoke-static {p2}, Lh2/a;->a(Landroidx/appcompat/app/c;)Landroid/window/OnBackInvokedDispatcher;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-static {p2, v1, p1}, Landroidx/appcompat/app/l;->a(Landroid/window/OnBackInvokedDispatcher;ILandroid/window/OnBackInvokedCallback;)V

    :cond_2
    iget-object p2, p0, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;->e:Landroidx/appcompat/app/c;

    if-eqz p2, :cond_4

    new-instance v0, Lh2/u;

    invoke-direct {v0, p0, p1}, Lh2/u;-><init>(Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;Landroid/window/OnBackInvokedCallback;)V

    invoke-virtual {p2, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0

    :cond_3
    new-instance p1, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager$b;

    invoke-direct {p1, p2}, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager$b;-><init>(Le2/a;)V

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/c$a;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroidx/appcompat/app/c$a;

    :cond_4
    :goto_0
    iget-object p0, p0, Lcom/coloros/translate/privacysecuritypolicy/PrivacyPolicyManager;->e:Landroidx/appcompat/app/c;

    if-eqz p0, :cond_5

    const p1, 0x102000b

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/o;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    if-eqz p0, :cond_5

    sget-object p1, Lcom/coui/appcompat/statement/COUILinkMovementMethod;->INSTANCE:Lcom/coui/appcompat/statement/COUILinkMovementMethod;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    :cond_5
    return-void
.end method
