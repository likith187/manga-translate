.class final enum Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView$c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "c"
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lr8/a;

.field private static final synthetic $VALUES:[Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView$c;

.field public static final enum BOTTOM:Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView$c;

.field public static final enum BOTTOM_LEFT:Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView$c;

.field public static final enum LEFT:Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView$c;

.field public static final enum LEFT_TOP:Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView$c;

.field public static final enum MOVE:Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView$c;

.field public static final enum RIGHT:Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView$c;

.field public static final enum RIGHT_BOTTOM:Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView$c;

.field public static final enum TOP:Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView$c;

.field public static final enum TOP_RIGHT:Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView$c;


# instance fields
.field private final v:I


# direct methods
.method private static final synthetic $values()[Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView$c;
    .locals 9

    sget-object v0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView$c;->MOVE:Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView$c;

    sget-object v1, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView$c;->LEFT_TOP:Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView$c;

    sget-object v2, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView$c;->TOP:Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView$c;

    sget-object v3, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView$c;->TOP_RIGHT:Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView$c;

    sget-object v4, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView$c;->RIGHT:Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView$c;

    sget-object v5, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView$c;->RIGHT_BOTTOM:Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView$c;

    sget-object v6, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView$c;->BOTTOM:Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView$c;

    sget-object v7, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView$c;->BOTTOM_LEFT:Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView$c;

    sget-object v8, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView$c;->LEFT:Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView$c;

    filled-new-array/range {v0 .. v8}, [Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView$c;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView$c;

    const-string v1, "MOVE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView$c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView$c;->MOVE:Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView$c;

    new-instance v0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView$c;

    const-string v1, "LEFT_TOP"

    const/4 v2, 0x1

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView$c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView$c;->LEFT_TOP:Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView$c;

    new-instance v0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView$c;

    const-string v1, "TOP"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView$c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView$c;->TOP:Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView$c;

    new-instance v0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView$c;

    const-string v1, "TOP_RIGHT"

    const/4 v4, 0x6

    invoke-direct {v0, v1, v3, v4}, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView$c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView$c;->TOP_RIGHT:Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView$c;

    new-instance v0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView$c;

    const-string v1, "RIGHT"

    const/4 v3, 0x4

    invoke-direct {v0, v1, v3, v3}, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView$c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView$c;->RIGHT:Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView$c;

    new-instance v0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView$c;

    const/4 v1, 0x5

    const/16 v3, 0xc

    const-string v5, "RIGHT_BOTTOM"

    invoke-direct {v0, v5, v1, v3}, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView$c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView$c;->RIGHT_BOTTOM:Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView$c;

    new-instance v0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView$c;

    const-string v1, "BOTTOM"

    const/16 v3, 0x8

    invoke-direct {v0, v1, v4, v3}, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView$c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView$c;->BOTTOM:Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView$c;

    new-instance v0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView$c;

    const/4 v1, 0x7

    const/16 v4, 0x9

    const-string v5, "BOTTOM_LEFT"

    invoke-direct {v0, v5, v1, v4}, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView$c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView$c;->BOTTOM_LEFT:Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView$c;

    new-instance v0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView$c;

    const-string v1, "LEFT"

    invoke-direct {v0, v1, v3, v2}, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView$c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView$c;->LEFT:Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView$c;

    invoke-static {}, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView$c;->$values()[Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView$c;

    move-result-object v0

    sput-object v0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView$c;->$VALUES:[Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView$c;

    invoke-static {v0}, Lr8/b;->a([Ljava/lang/Enum;)Lr8/a;

    move-result-object v0

    sput-object v0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView$c;->$ENTRIES:Lr8/a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView$c;->v:I

    return-void
.end method

.method public static getEntries()Lr8/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lr8/a;"
        }
    .end annotation

    sget-object v0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView$c;->$ENTRIES:Lr8/a;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView$c;
    .locals 1

    const-class v0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView$c;

    return-object p0
.end method

.method public static values()[Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView$c;
    .locals 1

    sget-object v0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView$c;->$VALUES:[Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView$c;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView$c;

    return-object v0
.end method


# virtual methods
.method public final getV()I
    .locals 0

    iget p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView$c;->v:I

    return p0
.end method
