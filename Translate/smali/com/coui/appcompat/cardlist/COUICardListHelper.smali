.class public Lcom/coui/appcompat/cardlist/COUICardListHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final FULL:I = 0x4

.field public static final HEAD:I = 0x1

.field public static final MIDDLE:I = 0x2

.field public static final NONE:I = 0x0

.field public static final TAIL:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPositionInGroup(II)I
    .locals 1

    .line 1
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    sub-int/2addr p0, v0

    if-ne p1, p0, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    :goto_0
    return v0
.end method

.method public static getPositionInGroup(Landroidx/preference/Preference;)I
    .locals 6

    .line 2
    invoke-virtual {p0}, Landroidx/preference/Preference;->getParent()Landroidx/preference/PreferenceGroup;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    .line 3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v3, v1

    .line 4
    :goto_0
    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 5
    invoke-virtual {v0, v3}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v4

    .line 6
    invoke-virtual {v4}, Landroidx/preference/Preference;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 7
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 8
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    move v4, v1

    :goto_1
    if-ge v4, v3, :cond_3

    .line 9
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-ne p0, v5, :cond_2

    move v1, v4

    goto :goto_2

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    const/4 p0, 0x0

    if-lez v1, :cond_4

    add-int/lit8 v4, v1, -0x1

    .line 10
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/preference/Preference;

    goto :goto_3

    :cond_4
    move-object v4, p0

    :goto_3
    const/4 v5, 0x1

    sub-int/2addr v3, v5

    if-ge v1, v3, :cond_5

    add-int/2addr v1, v5

    .line 11
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/preference/Preference;

    :cond_5
    if-eqz v4, :cond_6

    .line 12
    invoke-static {v0, v4}, Lcom/coui/appcompat/cardlist/COUICardListHelper;->isSupportCard(Landroidx/preference/PreferenceGroup;Landroidx/preference/Preference;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x2

    goto :goto_4

    :cond_6
    move v1, v5

    :goto_4
    if-eqz p0, :cond_7

    .line 13
    invoke-static {v0, p0}, Lcom/coui/appcompat/cardlist/COUICardListHelper;->isSupportCard(Landroidx/preference/PreferenceGroup;Landroidx/preference/Preference;)Z

    move-result p0

    if-nez p0, :cond_9

    :cond_7
    if-ne v1, v5, :cond_8

    const/4 v1, 0x4

    goto :goto_5

    :cond_8
    const/4 v1, 0x3

    :cond_9
    :goto_5
    return v1
.end method

.method private static isSupportCard(Landroidx/preference/PreferenceGroup;Landroidx/preference/Preference;)Z
    .locals 2

    instance-of p0, p0, Landroidx/preference/PreferenceScreen;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_2

    instance-of p0, p1, Lcom/coui/appcompat/preference/COUICardSupportInterface;

    if-eqz p0, :cond_1

    check-cast p1, Lcom/coui/appcompat/preference/COUICardSupportInterface;

    invoke-interface {p1}, Lcom/coui/appcompat/preference/COUICardSupportInterface;->isSupportCardUse()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    instance-of p0, p1, Landroidx/preference/PreferenceCategory;

    if-eqz p0, :cond_3

    return v0

    :cond_3
    return v1
.end method

.method public static refreshCardBg(Landroid/view/View;I)V
    .locals 1

    instance-of v0, p0, Lcom/coui/appcompat/preference/ListSelectedItemLayout;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/coui/appcompat/preference/ListSelectedItemLayout;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/preference/ListSelectedItemLayout;->refreshCardBg(I)V

    :cond_0
    return-void
.end method

.method public static setConfigurationChangeListener(Landroid/view/View;Lcom/coui/appcompat/list/ConfigurationChangedListener;)V
    .locals 1

    instance-of v0, p0, Lcom/coui/appcompat/preference/ListSelectedItemLayout;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/coui/appcompat/preference/ListSelectedItemLayout;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/preference/ListSelectedItemLayout;->setConfigurationChangeListener(Lcom/coui/appcompat/list/ConfigurationChangedListener;)V

    :cond_0
    return-void
.end method

.method public static setItemCardBackground(Landroid/view/View;I)V
    .locals 1

    instance-of v0, p0, Lcom/coui/appcompat/preference/ListSelectedItemLayout;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/coui/appcompat/preference/ListSelectedItemLayout;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/preference/ListSelectedItemLayout;->setPositionInGroup(I)V

    :cond_0
    return-void
.end method
