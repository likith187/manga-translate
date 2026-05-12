.class public Lcom/coui/appcompat/theme/COUIComponentsViewInflater;
.super Landroidx/appcompat/app/q;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/appcompat/app/q;-><init>()V

    return-void
.end method


# virtual methods
.method protected createTextView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatTextView;
    .locals 0

    new-instance p0, Lcom/coui/appcompat/textview/COUITextView;

    invoke-direct {p0, p1, p2}, Lcom/coui/appcompat/textview/COUITextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object p0
.end method
