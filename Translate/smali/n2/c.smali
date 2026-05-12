.class public final synthetic Ln2/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/google/android/material/appbar/AppBarLayout;

.field public final synthetic b:Lcom/coloros/translate/ui/setting/about/OpenSourceStatementActivity;

.field public final synthetic c:Landroid/widget/ScrollView;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/material/appbar/AppBarLayout;Lcom/coloros/translate/ui/setting/about/OpenSourceStatementActivity;Landroid/widget/ScrollView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln2/c;->a:Lcom/google/android/material/appbar/AppBarLayout;

    iput-object p2, p0, Ln2/c;->b:Lcom/coloros/translate/ui/setting/about/OpenSourceStatementActivity;

    iput-object p3, p0, Ln2/c;->c:Landroid/widget/ScrollView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Ln2/c;->a:Lcom/google/android/material/appbar/AppBarLayout;

    iget-object v1, p0, Ln2/c;->b:Lcom/coloros/translate/ui/setting/about/OpenSourceStatementActivity;

    iget-object p0, p0, Ln2/c;->c:Landroid/widget/ScrollView;

    invoke-static {v0, v1, p0}, Lcom/coloros/translate/ui/setting/about/OpenSourceStatementActivity;->D0(Lcom/google/android/material/appbar/AppBarLayout;Lcom/coloros/translate/ui/setting/about/OpenSourceStatementActivity;Landroid/widget/ScrollView;)V

    return-void
.end method
