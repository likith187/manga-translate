.class public final Lcom/coloros/translate/ui/dialoguetranslation/EditTranslateTextActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/translate/ui/dialoguetranslation/EditTranslateTextActivity$a;
    }
.end annotation


# static fields
.field public static final h:Lcom/coloros/translate/ui/dialoguetranslation/EditTranslateTextActivity$a;


# instance fields
.field private a:Lcom/coui/appcompat/edittext/COUIEditText;

.field private b:Lcom/coui/appcompat/toolbar/COUIToolbar;

.field private c:Landroid/view/MenuItem;

.field private f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/coloros/translate/ui/dialoguetranslation/EditTranslateTextActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coloros/translate/ui/dialoguetranslation/EditTranslateTextActivity$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/coloros/translate/ui/dialoguetranslation/EditTranslateTextActivity;->h:Lcom/coloros/translate/ui/dialoguetranslation/EditTranslateTextActivity$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/EditTranslateTextActivity;->f:Ljava/lang/String;

    return-void
.end method

.method public static synthetic e0(Lcom/coloros/translate/ui/dialoguetranslation/EditTranslateTextActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/ui/dialoguetranslation/EditTranslateTextActivity;->k0(Lcom/coloros/translate/ui/dialoguetranslation/EditTranslateTextActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic f0(Lcom/coloros/translate/ui/dialoguetranslation/EditTranslateTextActivity;Landroid/view/MenuItem;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/ui/dialoguetranslation/EditTranslateTextActivity;->j0(Lcom/coloros/translate/ui/dialoguetranslation/EditTranslateTextActivity;Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public static synthetic g0(Lcom/coloros/translate/ui/dialoguetranslation/EditTranslateTextActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/coloros/translate/ui/dialoguetranslation/EditTranslateTextActivity;->l0(Lcom/coloros/translate/ui/dialoguetranslation/EditTranslateTextActivity;)V

    return-void
.end method

.method public static final synthetic h0(Lcom/coloros/translate/ui/dialoguetranslation/EditTranslateTextActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/EditTranslateTextActivity;->f:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic i0(Lcom/coloros/translate/ui/dialoguetranslation/EditTranslateTextActivity;)Landroid/view/MenuItem;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/EditTranslateTextActivity;->c:Landroid/view/MenuItem;

    return-object p0
.end method

.method private static final j0(Lcom/coloros/translate/ui/dialoguetranslation/EditTranslateTextActivity;Landroid/view/MenuItem;)Z
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    sget v0, Lcom/coloros/translate/R$id;->select_all:I

    if-ne p1, v0, :cond_1

    sget-object p1, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->O0:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$a;

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/EditTranslateTextActivity;->a:Lcom/coui/appcompat/edittext/COUIEditText;

    if-nez v0, :cond_0

    const-string v0, "mContentText"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$a;->b(Ljava/lang/String;)V

    const/16 p1, 0x64

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private static final k0(Lcom/coloros/translate/ui/dialoguetranslation/EditTranslateTextActivity;Landroid/view/View;)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const/16 v0, -0x64

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private static final l0(Lcom/coloros/translate/ui/dialoguetranslation/EditTranslateTextActivity;)V
    .locals 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/EditTranslateTextActivity;->a:Lcom/coui/appcompat/edittext/COUIEditText;

    const-string v1, "mContentText"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v3, v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v3, :cond_1

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    goto :goto_0

    :cond_1
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/EditTranslateTextActivity;->a:Lcom/coui/appcompat/edittext/COUIEditText;

    if-nez p0, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move-object v2, p0

    :goto_1
    const/4 p0, 0x0

    invoke-virtual {v0, v2, p0}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_3
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/coloros/translate/utils/o0;->e()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    invoke-static {v2, v1, v2}, Lcom/coloros/translate/utils/z;->g(Landroid/content/Context;ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, -0x1

    :goto_1
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    sget v0, Lcom/coloros/translate/R$layout;->fragment_edit_modal_view:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    sget v0, Lcom/coloros/translate/R$id;->editText:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v3, "findViewById(...)"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/coui/appcompat/edittext/COUIEditText;

    iput-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/EditTranslateTextActivity;->a:Lcom/coui/appcompat/edittext/COUIEditText;

    invoke-static {}, Lcom/coui/appcompat/theme/COUIThemeOverlay;->getInstance()Lcom/coui/appcompat/theme/COUIThemeOverlay;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/coui/appcompat/theme/COUIThemeOverlay;->applyThemeOverlays(Landroid/content/Context;)V

    sget v0, Lcom/coloros/translate/R$id;->toolbar:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/coui/appcompat/toolbar/COUIToolbar;

    iput-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/EditTranslateTextActivity;->b:Lcom/coui/appcompat/toolbar/COUIToolbar;

    if-nez v0, :cond_2

    const-string v0, "mToolbar"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_2
    sget v3, Lcom/coloros/translate/R$string;->action_edit:I

    invoke-virtual {v0, v3}, Lcom/coui/appcompat/toolbar/COUIToolbar;->setTitle(I)V

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/coui/appcompat/toolbar/COUIToolbar;->setIsTitleCenterStyle(Z)V

    sget v4, Lcom/support/snackbar/R$drawable;->coui_menu_ic_cancel:I

    invoke-virtual {v0, v4}, Lcom/coui/appcompat/toolbar/COUIToolbar;->setNavigationIcon(I)V

    sget v4, Lcom/coloros/translate/R$menu;->modal_view_menu:I

    invoke-virtual {v0, v4}, Lcom/coui/appcompat/toolbar/COUIToolbar;->inflateMenu(I)V

    invoke-virtual {v0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->getMenu()Landroid/view/Menu;

    move-result-object v4

    sget v5, Lcom/coloros/translate/R$id;->select_all:I

    invoke-interface {v4, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iput-object v4, p0, Lcom/coloros/translate/ui/dialoguetranslation/EditTranslateTextActivity;->c:Landroid/view/MenuItem;

    if-nez v4, :cond_3

    goto :goto_2

    :cond_3
    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :goto_2
    new-instance v3, Lcom/coloros/translate/ui/dialoguetranslation/l0;

    invoke-direct {v3, p0}, Lcom/coloros/translate/ui/dialoguetranslation/l0;-><init>(Lcom/coloros/translate/ui/dialoguetranslation/EditTranslateTextActivity;)V

    invoke-virtual {v0, v3}, Lcom/coui/appcompat/toolbar/COUIToolbar;->setOnMenuItemClickListener(Landroidx/appcompat/widget/Toolbar$h;)V

    new-instance v3, Lcom/coloros/translate/ui/dialoguetranslation/m0;

    invoke-direct {v3, p0}, Lcom/coloros/translate/ui/dialoguetranslation/m0;-><init>(Lcom/coloros/translate/ui/dialoguetranslation/EditTranslateTextActivity;)V

    invoke-virtual {v0, v3}, Lcom/coui/appcompat/toolbar/COUIToolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_4
    sget-object v0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->O0:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$a;

    invoke-virtual {v0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$a;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/EditTranslateTextActivity;->f:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$a;->b(Ljava/lang/String;)V

    if-eqz p1, :cond_5

    const-string v0, "inputText"

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getString(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/EditTranslateTextActivity;->f:Ljava/lang/String;

    :cond_5
    iget-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/EditTranslateTextActivity;->a:Lcom/coui/appcompat/edittext/COUIEditText;

    const-string v0, "mContentText"

    if-nez p1, :cond_6

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object p1, v2

    :cond_6
    iget-object v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/EditTranslateTextActivity;->f:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/EditTranslateTextActivity;->a:Lcom/coui/appcompat/edittext/COUIEditText;

    if-nez p1, :cond_7

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object p1, v2

    :cond_7
    iget-object v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/EditTranslateTextActivity;->a:Lcom/coui/appcompat/edittext/COUIEditText;

    if-nez v1, :cond_8

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v1, v2

    :cond_8
    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    iget-object v3, p0, Lcom/coloros/translate/ui/dialoguetranslation/EditTranslateTextActivity;->a:Lcom/coui/appcompat/edittext/COUIEditText;

    if-nez v3, :cond_9

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v3, v2

    :cond_9
    invoke-virtual {v3}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {p1, v1, v3}, Landroid/widget/EditText;->setSelection(II)V

    new-instance p1, Lcom/coloros/translate/ui/dialoguetranslation/n0;

    invoke-direct {p1, p0}, Lcom/coloros/translate/ui/dialoguetranslation/n0;-><init>(Lcom/coloros/translate/ui/dialoguetranslation/EditTranslateTextActivity;)V

    const-wide/16 v3, 0x1f4

    invoke-static {v3, v4, p1}, Lcom/coloros/translate/utils/z0;->g(JLjava/lang/Runnable;)V

    iget-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/EditTranslateTextActivity;->a:Lcom/coui/appcompat/edittext/COUIEditText;

    if-nez p1, :cond_a

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object p1, v2

    :cond_a
    invoke-static {}, Landroid/text/method/ScrollingMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    iget-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/EditTranslateTextActivity;->a:Lcom/coui/appcompat/edittext/COUIEditText;

    if-nez p1, :cond_b

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_3

    :cond_b
    move-object v2, p1

    :goto_3
    new-instance p1, Lcom/coloros/translate/ui/dialoguetranslation/EditTranslateTextActivity$b;

    invoke-direct {p1, p0}, Lcom/coloros/translate/ui/dialoguetranslation/EditTranslateTextActivity$b;-><init>(Lcom/coloros/translate/ui/dialoguetranslation/EditTranslateTextActivity;)V

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const-string p1, "getWindow(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/coloros/translate/utils/f0;->b(Landroid/view/Window;)V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "outState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "inputText"

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/EditTranslateTextActivity;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
