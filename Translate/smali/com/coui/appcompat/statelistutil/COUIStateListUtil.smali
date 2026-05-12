.class public Lcom/coui/appcompat/statelistutil/COUIStateListUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final EMPTY_STATE_SET:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lcom/coui/appcompat/statelistutil/COUIStateListUtil;->EMPTY_STATE_SET:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createColorStateList(II)Landroid/content/res/ColorStateList;
    .locals 2

    const v0, -0x101009e

    .line 1
    filled-new-array {v0}, [I

    move-result-object v0

    .line 2
    sget-object v1, Lcom/coui/appcompat/statelistutil/COUIStateListUtil;->EMPTY_STATE_SET:[I

    filled-new-array {v0, v1}, [[I

    move-result-object v0

    .line 3
    filled-new-array {p1, p0}, [I

    move-result-object p0

    .line 4
    new-instance p1, Landroid/content/res/ColorStateList;

    invoke-direct {p1, v0, p0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object p1
.end method

.method public static createColorStateList(IIII)Landroid/content/res/ColorStateList;
    .locals 4

    const v0, -0x101009e

    .line 5
    filled-new-array {v0}, [I

    move-result-object v0

    const v1, 0x10100a1

    const v2, 0x101009e

    .line 6
    filled-new-array {v2, v1}, [I

    move-result-object v1

    const v3, 0x10100a7

    .line 7
    filled-new-array {v2, v3}, [I

    move-result-object v2

    .line 8
    sget-object v3, Lcom/coui/appcompat/statelistutil/COUIStateListUtil;->EMPTY_STATE_SET:[I

    filled-new-array {v0, v1, v2, v3}, [[I

    move-result-object v0

    .line 9
    filled-new-array {p1, p2, p3, p0}, [I

    move-result-object p0

    .line 10
    new-instance p1, Landroid/content/res/ColorStateList;

    invoke-direct {p1, v0, p0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object p1
.end method
