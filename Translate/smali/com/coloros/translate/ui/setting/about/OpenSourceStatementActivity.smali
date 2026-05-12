.class public final Lcom/coloros/translate/ui/setting/about/OpenSourceStatementActivity;
.super Lcom/coloros/translate/base/BaseActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/translate/ui/setting/about/OpenSourceStatementActivity$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/coloros/translate/base/BaseActivity<",
        "Lcom/coloros/translate/base/q;",
        ">;"
    }
.end annotation


# static fields
.field public static final o:Lcom/coloros/translate/ui/setting/about/OpenSourceStatementActivity$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/coloros/translate/ui/setting/about/OpenSourceStatementActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coloros/translate/ui/setting/about/OpenSourceStatementActivity$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/coloros/translate/ui/setting/about/OpenSourceStatementActivity;->o:Lcom/coloros/translate/ui/setting/about/OpenSourceStatementActivity$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/translate/base/BaseActivity;-><init>()V

    return-void
.end method

.method public static synthetic D0(Lcom/google/android/material/appbar/AppBarLayout;Lcom/coloros/translate/ui/setting/about/OpenSourceStatementActivity;Landroid/widget/ScrollView;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/coloros/translate/ui/setting/about/OpenSourceStatementActivity;->H0(Lcom/google/android/material/appbar/AppBarLayout;Lcom/coloros/translate/ui/setting/about/OpenSourceStatementActivity;Landroid/widget/ScrollView;)V

    return-void
.end method

.method public static synthetic E0(Lcom/coloros/translate/ui/setting/about/OpenSourceStatementActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/ui/setting/about/OpenSourceStatementActivity;->G0(Lcom/coloros/translate/ui/setting/about/OpenSourceStatementActivity;Landroid/view/View;)V

    return-void
.end method

.method private final F0()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/coloros/translate/R$raw;->notice:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p0

    :try_start_0
    new-instance v1, Ljava/io/InputStreamReader;

    const-string v2, "gbk"

    invoke-direct {v1, p0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    sget-object v2, Ln8/h0;->INSTANCE:Ln8/h0;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x0

    :try_start_2
    invoke-static {v1, v2}, Lkotlin/io/c;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {p0, v2}, Lkotlin/io/c;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "toString(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :catchall_1
    move-exception v0

    goto :goto_2

    :goto_1
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    move-exception v2

    :try_start_4
    invoke-static {v1, v0}, Lkotlin/io/c;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_2
    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception v1

    invoke-static {p0, v0}, Lkotlin/io/c;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static final G0(Lcom/coloros/translate/ui/setting/about/OpenSourceStatementActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private static final H0(Lcom/google/android/material/appbar/AppBarLayout;Lcom/coloros/translate/ui/setting/about/OpenSourceStatementActivity;Landroid/widget/ScrollView;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/coloros/translate/R$dimen;->dp_6:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    add-int/2addr p0, p1

    const/4 p1, 0x0

    invoke-virtual {p2, p1, p0, p1, p1}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    return-void
.end method


# virtual methods
.method public k0()Ljava/lang/Class;
    .locals 0

    const-class p0, Lcom/coloros/translate/base/q;

    return-object p0
.end method

.method protected l0()I
    .locals 0

    sget p0, Lcom/coloros/translate/R$layout;->activity_setting_open_source_statement:I

    return p0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    invoke-super {p0, p1}, Lcom/coloros/translate/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    sget p1, Lcom/coloros/translate/R$id;->toolbar:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/coui/appcompat/toolbar/COUIToolbar;

    sget v0, Lcom/coloros/translate/R$id;->app_bar_layout:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout;

    sget v1, Lcom/coloros/translate/R$id;->open_scroll:I

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    sget v2, Lcom/coloros/translate/R$id;->ep_open_source_content:I

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz p1, :cond_0

    sget v3, Lcom/support/appcompat/R$drawable;->coui_back_arrow:I

    invoke-virtual {p1, v3}, Lcom/coui/appcompat/toolbar/COUIToolbar;->setNavigationIcon(I)V

    :cond_0
    if-eqz p1, :cond_1

    sget v3, Landroidx/appcompat/R$string;->abc_action_bar_up_description:I

    invoke-virtual {p1, v3}, Lcom/coui/appcompat/toolbar/COUIToolbar;->setNavigationContentDescription(I)V

    :cond_1
    if-eqz p1, :cond_2

    new-instance v3, Ln2/b;

    invoke-direct {v3, p0}, Ln2/b;-><init>(Lcom/coloros/translate/ui/setting/about/OpenSourceStatementActivity;)V

    invoke-virtual {p1, v3}, Lcom/coui/appcompat/toolbar/COUIToolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    sget v3, Lcom/coloros/translate/R$string;->open_source_code_licenses:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/coui/appcompat/toolbar/COUIToolbar;->setTitle(Ljava/lang/CharSequence;)V

    :goto_0
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/a;

    move-result-object p1

    const/4 v3, 0x1

    if-eqz p1, :cond_4

    invoke-virtual {p1, v3}, Landroidx/appcompat/app/a;->s(Z)V

    :cond_4
    invoke-static {v1, v3}, Landroidx/core/view/m0;->x0(Landroid/view/View;Z)V

    invoke-virtual {p0}, Lcom/coloros/translate/base/BaseActivity;->getStatusBarView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, p1, v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Ln2/c;

    invoke-direct {p1, v0, p0, v1}, Ln2/c;-><init>(Lcom/google/android/material/appbar/AppBarLayout;Lcom/coloros/translate/ui/setting/about/OpenSourceStatementActivity;Landroid/widget/ScrollView;)V

    invoke-virtual {v0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    sget p1, Lcom/coloros/translate/R$id;->coordinator:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    sget-object v4, Lcom/coloros/translate/utils/i1;->a:Lcom/coloros/translate/utils/i1$a;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "getContext(...)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/coloros/translate/utils/i1$a;->b(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {p1, v0, v1, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    :cond_5
    invoke-direct {p0}, Lcom/coloros/translate/ui/setting/about/OpenSourceStatementActivity;->F0()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-super {p0, p1}, Lcom/coloros/translate/base/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method
