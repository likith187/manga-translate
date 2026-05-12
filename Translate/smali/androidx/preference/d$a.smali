.class Landroidx/preference/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/preference/d;->onPrepareDialogBuilder(Landroidx/appcompat/app/c$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/preference/d;


# direct methods
.method constructor <init>(Landroidx/preference/d;)V
    .locals 0

    iput-object p1, p0, Landroidx/preference/d$a;->a:Landroidx/preference/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 1

    if-eqz p3, :cond_0

    iget-object p0, p0, Landroidx/preference/d$a;->a:Landroidx/preference/d;

    iget-boolean p1, p0, Landroidx/preference/d;->mPreferenceChanged:Z

    iget-object p3, p0, Landroidx/preference/d;->mNewValues:Ljava/util/Set;

    iget-object v0, p0, Landroidx/preference/d;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object p2, v0, p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p2

    or-int/2addr p1, p2

    iput-boolean p1, p0, Landroidx/preference/d;->mPreferenceChanged:Z

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/preference/d$a;->a:Landroidx/preference/d;

    iget-boolean p1, p0, Landroidx/preference/d;->mPreferenceChanged:Z

    iget-object p3, p0, Landroidx/preference/d;->mNewValues:Ljava/util/Set;

    iget-object v0, p0, Landroidx/preference/d;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object p2, v0, p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p3, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p2

    or-int/2addr p1, p2

    iput-boolean p1, p0, Landroidx/preference/d;->mPreferenceChanged:Z

    :goto_0
    return-void
.end method
